open Cypress

type queryString = {
  postId: int,
  id: int,
}

type body = {
  userId: int,
  title: string,
  body: string,
}

type title = {title: string}

type bodyError = {error: string}

context("Network Requests", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/network-requests", ())
  })

  // Manage HTTP requests in your app

  it("cy.request() - make an XHR request", () => {
    // https://on.cypress.io/request
    cyRequestWithStringP(
      "https://jsonplaceholder.cypress.io/comments",
      (),
    )->shouldWithResponse(response => {
      expect(response.status)->toEqual(200)
      // the server sometimes gets an extra comment posted from another machine
      // which gets returned as 1 extra object
      expect(response.body)->toHavePropertyP("length")->andBeOneOf([500, 501])
      expect(response)->toHaveProperty("headers")
      expect(response)->toHaveProperty("duration")
    })
  })

  it("cy.request() - verify response using BDD syntax", () => {
    cyRequestWithStringP(
      "https://jsonplaceholder.cypress.io/comments",
      (),
    )->shouldWithResponse(response => {
      // https://on.cypress.io/assertions
      expect(response)->toHavePropertyWithValue("status", 200)
      expect(response)->toHavePropertyP("body")->toHavePropertyP("length")->andBeOneOf([500, 501])
      expect(response)->toIncludeKeys(["headers", "duration"])
    })
  })

  it("cy.request() with query parameters", () => {
    let requestObject = createRequestOptionsObject(
      ~url=Js.Null.return("https://jsonplaceholder.cypress.io/comments"),
      ~qs=Js.Null.return({
        postId: 1,
        id: 3,
      }),
      (),
    )
    // will execute request
    // https://jsonplaceholder.cypress.io/comments?postId=1&id=3
    cyRequestWithOptions(requestObject)
    ->its("body", ())
    ->shouldHaveLengthP(1)
    ->its("0", ())
    ->shouldContain({
      postId: 1,
      id: 3,
    })
  })

  it("cy.request() - pass result to the second request", () => {
    // first, let"s find out the userId of the first user we have
    cyRequestWithStringP("https://jsonplaceholder.cypress.io/users?_limit=1", ())
    ->its("body", ()) // yields the response object
    ->its("0", ()) // yields the first element of the returned list
    // the above two commands its("body").its("0")
    // can be written as its("body.0")
    // if you do not care about TypeScript checks
    ->thenP(user => {
      expect(user)->toHaveProperty("id")
      // make a new post on behalf of the user
      cyRequestWithString(
        ~method=#post,
        "https://jsonplaceholder.cypress.io/posts",
        ~body={
          userId: user.id,
          title: "Cypress Test Runner",
          body: "Fast, easy and reliable testing for anything that runs in a browser.",
        },
        (),
      )
    })
    ->// note that the value here is the returned value of the 2nd request
    // which is the new post object
    then(response => {
      expect(response)->toHavePropertyWithValue("status", 201) // new entity created
      expect(response)
      ->toHavePropertyP("body")
      ->andContain({
        title: "Cypress Test Runner",
      })

      // we don"t know the exact post id - only that it will be > 100
      // since JSONPlaceholder has built-in 100 posts
      expect(response.body)->toHavePropertyP("id")->andBeGtInt(100)

      // we don"t know the user id here - since it was in above closure
      // so in this test just confirm that the property is there
      expect(response.body)->toHaveProperty("userId")
    })
  })

  it("cy.request() - save response in the shared test context", () => {
    let userId = ref(-1)
    // https://on.cypress.io/variables-and-aliases
    cyRequestWithStringP("https://jsonplaceholder.cypress.io/users?_limit=1", ())
    ->its("body", ())
    ->its("0", ()) // yields the first element of the returned list
    ->as_P("user") // saves the object in the test context
    ->thenP(user => {
      // NOTE 👀
      //  By the time this callback runs the "as("user")" command
      //  has saved the user object in the test context.
      //  To access the test context we need to use
      //  the "function () { ... }" callback form,
      //  otherwise "this" points at a wrong or undefined object!

      userId := user.id

      cyRequestWithStringP(
        ~method=#post,
        "https://jsonplaceholder.cypress.io/posts",
        ~body={
          userId: user.id,
          title: "Cypress Test Runner",
          body: "Fast, easy and reliable testing for anything that runs in a browser.",
        },
        (),
      )
      ->its("body", ())
      ->as_("post") // save the new post from the response
    })
    ->then(post => {
      // When this callback runs, both "cy.request" API commands have finished
      // and the test context has "user" and "post" objects set.
      // Let"s verify them.
      expectWithDescription(post, "post has the right user id")->toHavePropertyWithValue(
        "userId",
        userId.contents,
      )
    })
  })

  itOnly("cy.intercept() - route responses to matching requests", () => {
    // https://on.cypress.io/intercept

    let message = "whoa, this comment does not exist"

    // Listen to GET to comments/1
    cyInterceptWithStringP(~method=#get, "**/comments/*", ())->as_("getComment")

    // we have code that gets a comment when
    // the button is clicked in scripts.js
    cyGet(".network-btn", ())->click()

    // https://on.cypress.io/wait
    cyWaitWithAliasP("@getComment", ())->its("response.statusCode", ())->shouldBeOneOf([200, 304])

    // Listen to POST to comments
    cyInterceptWithStringP(~method=#post, "**/comments", ())->as_("postComment")

    // we have code that posts a comment when
    // the button is clicked in scripts.js
    cyGet(".network-post", ())->click()
    cyWaitWithAliasP("@postComment", ())->shouldWithPostResponse(({request, response}) => {
      expect(request.body)->toInclude("email")
      expect(request.headers)->toHaveProperty("content-type")
      expect(response.body)->toHavePropertyWithValue("name", "Using POST in cy.intercept()")
    })
    // TODO: Finish intercept commands
    // Stub a response to PUT comments/ ****
    cyInterceptWithRouteMatcherP(
      ~routeMatcher=routeMatcher(~method=#put, ~url="**/comments/*", ()),
      ~staticResponse=staticResponse(
        ~statusCode=404,
        ~body={error: message},
        ~headers={"access-control-allow-origin": "*"},
        ~delay=500.,
      ),
      (),
    )->as_("putComment")

    // we have code that puts a comment when
    // the button is clicked in scripts.js
    cyGet(".network-put", ())->click()

    cyWaitWithAliasP("@putComment", ())->then(element => {
      Js.log(element)
    })

    cyGet(".network-put-comment", ())->then(element => {
      Js.log(element)
    })

    // our 404 statusCode logic in scripts.js executed
  })
})
