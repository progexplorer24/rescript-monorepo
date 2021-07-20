open Cypress

type geo = {
  lat: string,
  lng: string,
}

type address = {
  city: string,
  geo: geo,
  street: string,
  suite: string,
  zipcode: string,
}

type company = {
  bs: string,
  catchPhrase: string,
  name: string,
}

type user = {
  address: address,
  company: company,
  email: string,
  id: int,
  name: string,
  phone: string,
  username: string,
  website: string,
}

type contentObject = {
  id: int,
  name: string,
  email: string,
}

type usersResponse = {body: array<user>}

external convertToUsers: 'a => usersResponse = "%identity"
external convertToContentObject: 'a => contentObject = "%identity"

context("Files", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/files", ())
  })

  beforeEach(() => {
    // load example.json fixture file and store
    // in the test context object
    cyFixtureP("example.json", ~options=FixtureOptions.make(), ())->as_("example")
  })

  it("cy.fixture() - load a fixture", () => {
    // https://on.cypress.io/fixture

    // Instead of writing a response inline you can
    // use a fixture file"s content.

    // when application makes an Ajax request matching "GET **/comments/*"
    // Cypress will intercept it and reply with the object in `example.json` fixture
    cyInterceptWithStringP(
      ~method=#get,
      "**/comments/*",
      ~staticResponse=staticResponse(~fixture="example.json", ()),
      (),
    )->as_("getComment")

    // we have code that gets a comment when
    // the button is clicked in scripts.js
    cyGet(".fixture-btn", ())->click()

    cyWaitWithAliasP("@getComment", ())
    ->its("response.body", ())
    ->shouldHavePropertyP("name")
    ->andInclude("Using fixtures to represent data")
  })

  it("cy.readFile() - read file contents", () => {
    // https://on.cypress.io/readfile

    // You can read a file and yield its contents
    // The filePath is relative to your project"s root.
    cyReadFileP("cypress.json", ())->then(json => {
      Js.log(json)
    })
    // The filePath is relative to your project"s root.
    cyReadFileP("cypress/fixtures/example.json", ())->then(json => {
      Js.log(json)
    })
  })

  it("cy.writeFile() - write to a file", () => {
    // https://on.cypress.io/writefile

    // let cyRequestUser: requestUserFn = string => cyRequest(string)
    // You can write to a file

    // Use a response from a request to automatically
    // generate a fixture file for use later
    cyRequestWithStringP("https://jsonplaceholder.cypress.io/users", ())->then(response => {
      let users = convertToUsers(response)
      cyWriteFile(~filePath="cypress/fixtures/users.json", ~contents=users, ())
    })

    cyFixtureP("users", ())->shouldWithResponse(response => {
      let json = convertToUsers(response)
      let users = json.body
      Js.log(users)
      expect(users[0].name)->toEqual("Leanne Graham")
    })

    // JavaScript arrays and objects are stringified
    // and formatted into text.
    cyWriteFile(
      ~filePath="cypress/fixtures/profile.json",
      ~contents={
        id: 8739,
        name: "Jane",
        email: "jane@example.com",
      },
      (),
    )

    cyFixtureP("profile", ())->shouldWithResponse(response => {
      let profile = convertToContentObject(response)
      Js.log(profile)
      expect(profile.name)->toEqual("Jane")
    })
  })
})
