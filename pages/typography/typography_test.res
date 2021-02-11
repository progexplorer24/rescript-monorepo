module Styles = {
  open Tailwind
  let wrapper = merge(.[twStyle([maxW(#xl6), mx(#auto), mt(#v6)])])
}

let default = () => {
  <div className=Styles.wrapper>
    <article>
      <p>
        {"Until now, trying to style an article, document, or blog post with Tailwind has been a tedious task that required a keen eye for typography and a lot of complex custom CSS."->Utils.str}
      </p>
      <p>
        {"By default, Tailwind removes all of the default browser styling from paragraphs, headings, lists and more. This ends up being really useful for building application UIs because you spend less time undoing user-agent styles, but when you really are just trying to style some content that came from a rich-text editor in a CMS or a markdown file, it can be surprising and unintuitive."->Utils.str}
      </p>
      <p>
        {"We get lots of complaints about it actually, with people regularly asking us things like:"->Utils.str}
      </p>
      <blockquote>
        <p>
          {`Why is Tailwind removing the default styles on my h1 elements? How do I disable this? What do you mean I lose all the other base styles too?`->Utils.str}
        </p>
      </blockquote>
      <p>
        {"We hear you, but we're not convinced that simply disabling our base styles is what you really want. You don't want to have to remove annoying margins every time you use a "->Utils.str}
        <code> {`${Utils.grave}p${Utils.grave}`->Utils.str} </code>
        {`element in a piece of your dashboard UI. And I doubt you really want your blog posts to use the user-agent styles either ${Utils.mdash} you want them to look awesome, not awful.`->Utils.str}
      </p>
      <p>
        {"The "->Utils.str}
        <code> {`${Utils.grave}@tailwindcss/typography${Utils.grave}`->Utils.str} </code>
        {" plugin is our attempt to give you what you actually want, without any of the downsides of doing something stupid like disabling our base styles."->Utils.str}
      </p>
      <p>
        {"It adds a new "->Utils.str}
        <code> {`${Utils.grave}prose${Utils.grave}`->Utils.str} </code>
        {" class that you can slap on any block of vanilla HTML content and turn it into a beautiful, well-formatted document:"->Utils.str}
      </p>
      <pre>
        <code>
          {"<article className='prose'>
        <h1>Garlic bread with cheese: What the science tells us</h1>
        <p>
    For years parents have espoused the health benefits of eating garlic bread with cheese to their
    children, with the food earning such an iconic status in our culture that kids will often dress
    up as warm, cheesy loaf for Halloween.
  </p>
  <p>
    But a recent study shows that the celebrated appetizer may be linked to a series of rabies cases
    springing up around the country.
  </p>
  <!-- ... -->
</article>"->Utils.str}
        </code>
      </pre>
      <p>
        {"For more information about how to use the plugin and the features it includes,"->Utils.str}
        <a href="#"> {" read the documentation"->Utils.str} </a>
      </p>
      <hr />
      <h2> {"What to expect from here on out"->Utils.str} </h2>
      <p>
        {"What follows from here is just a bunch of absolute nonsense I've written to dogfood the plugin itself. It includes every sensible typographic element I could think of, like"->Utils.str}
        <strong> {" bold text "->Utils.str} </strong>
        {"unordered lists, ordered lists, code blocks, block quotes, and even"->Utils.str}
        <i> {" italics."->Utils.str} </i>
      </p>
      <p> {"It's important to cover all of these use cases for a few reasons:"->Utils.str} </p>
      <ol>
        <li> {"We want everything to look good out of the box."->Utils.str} </li>
        <li>
          {"Really just the first reason, that's the whole point of the plugin."->Utils.str}
        </li>
        <li>
          {"Here's a third pretend reason though a list with three items looks more realistic than a list with two items."->Utils.str}
        </li>
      </ol>
      <p> {"Now we're going to try out another header style."->Utils.str} </p>
      <h3> {"Typography should be easy"->Utils.str} </h3>
      <p>
        {`So that's a header for you ${Utils.mdash} with any luck if we've done our job correctly that will look pretty reasonable.`->Utils.str}
      </p>
      <p> {"Something a wise person once told me about typography is:"->Utils.str} </p>
      <blockquote>
        <p>
          {"Typography is pretty important if you don't want your stuff to look like trash. Make it good then it won't be bad."->Utils.str}
        </p>
      </blockquote>
      <p> {"It's probably important that images look okay here by default as well:"->Utils.str} </p>
      <figure>
        <img
          src="https://images.unsplash.com/photo-1556740758-90de374c12ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
          alt=""
        />
        <figcaption>
          {"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."->Utils.str}
        </figcaption>
      </figure>
      <p>
        {"Now I'm going to show you an example of an unordered list to make sure that looks good, too:"->Utils.str}
      </p>
      <ul>
        <li> {"So here is the first item in this list."->Utils.str} </li>
        <li> {"In this example we're keeping the items short."->Utils.str} </li>
        <li> {"Later, we'll use longer, more complex list items."->Utils.str} </li>
      </ul>
      <p> {"And that's the end of this section."->Utils.str} </p>
      <h2> {"What if we stack headings?"->Utils.str} </h2>
      <h3> {"We should make sure that looks good, too."->Utils.str} </h3>
      <p>
        {"Sometimes you have headings directly underneath each other. In those cases you often have to undo the top margin on the second heading because it usually looks better for the headings to be closer together than a paragraph followed by a heading should be."->Utils.str}
      </p>
      <h3> {"When a heading comes after a paragraph …"->Utils.str} </h3>
      <p>
        {"When a heading comes after a paragraph, we need a bit more space, like I already mentioned above. Now let's see what a more complex list would look like."->Utils.str}
      </p>
      <ul>
        <li>
          <p>
            <strong> {"I often do this thing where list items have headings."->Utils.str} </strong>
          </p>
          <p>
            {"For some reason I think this looks cool which is unfortunate because it's pretty annoying to get the styles right."->Utils.str}
          </p>
          <p>
            {"I often have two or three paragraphs in these list items, too, so the hard part is getting the spacing between the paragraphs, list item heading, and separate list items to all make sense. Pretty tough honestly, you could make a strong argument that you just shouldn't write this way."->Utils.str}
          </p>
        </li>
        <li>
          <p>
            <strong> {"Since this is a list, I need at least two items."->Utils.str} </strong>
          </p>
          <p>
            {"I explained what I'm doing already in the previous list item, but a list wouldn't be a list if it only had one item, and we really want this to look realistic. That's why I've added this second list item so I actually have something to look at when writing the styles."->Utils.str}
          </p>
        </li>
        <li>
          <p> <strong> {"It's not a bad idea to add a third item either."->Utils.str} </strong> </p>
          <p>
            {"I think it probably would've been fine to just use two items but three is definitely not worse, and since I seem to be having no trouble making up arbitrary things to type, I might as well include it."->Utils.str}
          </p>
        </li>
      </ul>
      <p>
        {"After this sort of list I usually have a closing statement or paragraph, because it kinda looks weird jumping right to a heading."->Utils.str}
      </p>
      <h2> {"Code should look okay by default."->Utils.str} </h2>
      <p>
        {"I think most people are going to use "->Utils.str}
        <a href="https://highlightjs.org/"> {"highlight.js"->Utils.str} </a>
        {"or"->Utils.str}
        <a href="https://prismjs.com/"> {"Prism"->Utils.str} </a>
        {" or something if they want to style their code blocks but it wouldn't hurt to make them look "->Utils.str}
        <em> {"okay"->Utils.str} </em>
        {" out of the box, even with no syntax highlighting."->Utils.str}
      </p>
      <p>
        {"Here's what a default "->Utils.str}
        <code> {`${Utils.grave}tailwind.config.js${Utils.grave}`->Utils.str} </code>
        {" file looks like at the time of writing:"->Utils.str}
      </p>
      <pre>
        <code>
          {"module.exports = {
  purge: [],
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
}"->Utils.str}
        </code>
      </pre>
      <p> {"Hopefully that looks good enough to you."->Utils.str} </p>
      <h3> {"What about nested lists?"->Utils.str} </h3>
      <p>
        {"Nested lists basically always look bad which is why editors like Medium don't even let you do it, but I guess since some of you goofballs are going to do it we have to carry the burden of at least making it work."->Utils.str}
      </p>
      <ol>
        <li>
          <strong> {"Nested lists are rarely a good idea."->Utils.str} </strong>
          <ul>
            <li>
              {`You might feel like you are being really "organized" or something but you are just creating a gross shape on the screen that is hard to read.`->Utils.str}
            </li>
            <li>
              {"Nested navigation in UIs is a bad idea too, keep things as flat as possible."->Utils.str}
            </li>
            <li>
              {"Nesting tons of folders in your source code is also not helpful."->Utils.str}
            </li>
          </ul>
        </li>
        <li>
          <strong> {"Since we need to have more items, here's another one."->Utils.str} </strong>
          <ul>
            <li>
              {"I'm not sure if we'll bother styling more than two levels deep."->Utils.str}
            </li>
            <li> {"Two is already too much, three is guaranteed to be a bad idea."->Utils.str} </li>
            <li> {"If you nest four levels deep you belong in prison."->Utils.str} </li>
          </ul>
        </li>
        <li>
          <strong> {"Two items isn't really a list, three is good though."->Utils.str} </strong>
          <ul>
            <li>
              {"Again please don't nest lists if you want people to actually read your content."->Utils.str}
            </li>
            <li> {"Nobody wants to look at this."->Utils.str} </li>
            <li> {"I'm upset that we even have to bother styling this."->Utils.str} </li>
          </ul>
        </li>
      </ol>
      <p>
        {"The most annoying thing about lists in Markdown is that "->Utils.str}
        <code> {`${Utils.grave}<li>${Utils.grave}`->Utils.str} </code>
        {" elements aren't given a child "->Utils.str}
        <code> {`${Utils.grave}<p>${Utils.grave}`->Utils.str} </code>
        {" tag unless there are multiple paragraphs in the list item. That means I have to worry about styling that annoying situation too."->Utils.str}
      </p>
      <ul>
        <li>
          <p> <strong> {"For example, here's another nested list."->Utils.str} </strong> </p>
          <p> {"But this time with a second paragraph."->Utils.str} </p>
          <ul>
            <li>
              {"These list items won't have "->Utils.str}
              <code> {`${Utils.grave}<p>${Utils.grave}`->Utils.str} </code>
              {"tags"->Utils.str}
            </li>
            <li> {"Because they are only one line each"->Utils.str} </li>
          </ul>
        </li>
        <li>
          <p>
            <strong> {"But in this second top-level list item, they will."->Utils.str} </strong>
          </p>
          <p>
            {"This is especially annoying because of the spacing on this paragraph."->Utils.str}
          </p>
          <ul>
            <li>
              <p>
                {"As you can see here, because I've added a second line, this list item now has a "->Utils.str}
                <code> {`${Utils.grave}<p>${Utils.grave}`->Utils.str} </code>
                {"tag"->Utils.str}
              </p>
              <p> {"This is the second line I'm talking about by the way."->Utils.str} </p>
            </li>
            <li>
              <p> {"Finally here's another list item so it's more like a list."->Utils.str} </p>
            </li>
          </ul>
        </li>
        <li> {"A closing list item, but with no nested list, because why not?"->Utils.str} </li>
      </ul>
      <p> {"And finally a sentence to close off this section."->Utils.str} </p>
      <h2> {"There are other elements we need to style"->Utils.str} </h2>
      <p>
        {"I almost forgot to mention links, like "->Utils.str}
        <a href="https://tailwindcss.com/">
          {"this link to the Tailwind CSS website"->Utils.str}
        </a>
        {". We almost made them blue but that's so yesterday, so we went with dark gray, feels edgier."->Utils.str}
      </p>
      <p> {"We even included table styles, check it out:"->Utils.str} </p>
      <table>
        <thead>
          <tr>
            <th> {"Wrestler"->Utils.str} </th>
            <th> {"Origin"->Utils.str} </th>
            <th> {"Finisher"->Utils.str} </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td> {`Bret "The Hitman" Hart`->Utils.str} </td>
            <td> {"Calgary, AB"->Utils.str} </td>
            <td> {"Sharpshooter"->Utils.str} </td>
          </tr>
          <tr>
            <td> {"Stone Cold Steve Austin"->Utils.str} </td>
            <td> {"Austin, TX"->Utils.str} </td>
            <td> {"Stone Cold Stunner"->Utils.str} </td>
          </tr>
          <tr>
            <td> {"Randy Savage"->Utils.str} </td>
            <td> {"Sarasota, FL"->Utils.str} </td>
            <td> {"Elbow Drop"->Utils.str} </td>
          </tr>
          <tr>
            <td> {"Vader"->Utils.str} </td>
            <td> {"Boulder, CO"->Utils.str} </td>
            <td> {"Vader Bomb"->Utils.str} </td>
          </tr>
          <tr>
            <td> {"Razor Ramon"->Utils.str} </td>
            <td> {"Chuluota, FL"->Utils.str} </td>
            <td> {"Razor's Edge"->Utils.str} </td>
          </tr>
        </tbody>
      </table>
      <p>
        {"We also need to make sure inline code looks good, like if I wanted to talk about "->Utils.str}
        <code> {`${Utils.grave}<span>${Utils.grave}`->Utils.str} </code>
        {" elements or tell you the good news about "->Utils.str}
        <code> {`${Utils.grave}@tailwindcss/typography${Utils.grave}`->Utils.str} </code>
        {"."->Utils.str}
      </p>
      <h3>
        {"Sometimes I even use "->Utils.str}
        <code> {`${Utils.grave}code${Utils.grave}`->Utils.str} </code>
        {" in headings"->Utils.str}
      </h3>
      <p>
        {"Even though it's probably a bad idea, and historically I've had a hard time making it look good. This "->Utils.str}
        <em> {"wrap the code blocks in backticks"->Utils.str} </em>
        {" trick works pretty well though really."->Utils.str}
      </p>
      <p>
        {"Another thing I've done in the past is put a "->Utils.str}
        <code> {`${Utils.grave}code${Utils.grave}`->Utils.str} </code>
        {" tag inside of a link, like if I wanted to tell you about the "->Utils.str}
        <a href="https://github.com/tailwindlabs/tailwindcss.comom/">
          <code> {`${Utils.grave}tailwindcss/docs${Utils.grave}`->Utils.str} </code>
        </a>
        {" repository. I don't love that there is an underline below the backticks but it is absolutely not worth the madness it would require to avoid it."->Utils.str}
      </p>
      <h4>
        {"We haven't used an "->Utils.str}
        <code> {`${Utils.grave}h4${Utils.grave}`->Utils.str} </code>
        {" yet"->Utils.str}
      </h4>
      <p>
        {"But now we have. Please don't use "->Utils.str}
        <code> {`${Utils.grave}h5${Utils.grave}`->Utils.str} </code>
        {"or"->Utils.str}
        <code> {`${Utils.grave}h6${Utils.grave}`->Utils.str} </code>
        {" in your content, Medium only supports two heading levels for a reason, you animals. I honestly considered using a "->Utils.str}
        <code> {`${Utils.grave}before${Utils.grave}`->Utils.str} </code>
        {" pseudo-element to scream at you if you use an "->Utils.str}
        <code> {`${Utils.grave}h5${Utils.grave}`->Utils.str} </code>
        {" or "->Utils.str}
        <code> {`${Utils.grave}h6${Utils.grave}`->Utils.str} </code>
        {"."->Utils.str}
      </p>
      <p>
        {"We don't style them at all out of the box because "->Utils.str}
        <code> {`${Utils.grave}h4${Utils.grave}`->Utils.str} </code>
        {" elements are already so small that they are the same size as the body copy. What are we supposed to do with an "->Utils.str}
        <code> {`${Utils.grave}h5${Utils.grave}`->Utils.str} </code>
        {", make it "->Utils.str}
        <em> {"smaller"->Utils.str} </em>
        {" than the body copy? No thanks."->Utils.str}
      </p>
      <h3> {"We still need to think about stacked headings though."->Utils.str} </h3>
      <h4>
        {"Let's make sure we don't screw that up with "->Utils.str}
        <code> {`${Utils.grave}h4${Utils.grave}`->Utils.str} </code>
        {" elements, either."->Utils.str}
      </h4>
      <p>
        {"Phew, with any luck we have styled the headings above this text and they look pretty good."->Utils.str}
      </p>
      <p>
        {"Let's add a closing paragraph here so things end with a decently sized block of text. I can't explain why I want things to end that way but I have to assume it's because I think things will look weird or unbalanced if there is a heading too close to the end of the document."->Utils.str}
      </p>
      <p>
        {"What I've written here is probably long enough, but adding this final sentence can't hurt."->Utils.str}
      </p>
    </article>
  </div>
}
