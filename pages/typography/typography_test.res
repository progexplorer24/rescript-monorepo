module Styles = {
  open Tailwind
  let wrapper = merge(.[twStyle([maxW(#xl6), mx(#auto), mt(#v6)])])
}

let default = () => {
  <div className=Styles.wrapper>
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
  </div>
}
