@react.component
let make = (
  ~children,
  ~frontmatter: Mdx__helpers.frontmatterAndSlug,
  ~next: Js.Null.t<Mdx__helpers.frontmatterAndSlug>,
  ~prev: Js.Null.t<Mdx__helpers.frontmatterAndSlug>,
) => {
  let {date, title, _} = frontmatter
  // TODO: Work on prev and next rendering & BlogSEO
  <SectionContainer>
    <article>
      <div>
        <header>
          <div
            className="pb-10 space-y-1 text-center border-b border-gray-200 dark:border-gray-700">
            <dl>
              <div>
                <dt className="sr-only"> {"Published on"->Utils.str} </dt>
                <dd className="text-base font-medium leading-6 text-gray-500 dark:text-gray-400">
                  <time dateTime={date}> {Mdx__helpers.formatDateString(date)->Utils.str} </time>
                </dd>
              </div>
            </dl>
            <div> <PageTitle> {title->Utils.str} </PageTitle> </div>
          </div>
        </header>
        <div className="pb-8 divide-y divide-gray-200 xl:divide-y-0 dark:divide-gray-700 ">
          <div
            className="divide-y divide-gray-200 dark:divide-gray-700 xl:pb-0 xl:col-span-3 xl:row-span-2">
            <div className="pt-10 pb-8 prose dark:prose-dark max-w-none"> {children} </div>
          </div>
          // <footer>
          //   <div
          //     className="flex flex-col text-sm font-medium sm:flex-row sm:justify-between sm:text-base">
          //     {prev &&
          //     <div className="pt-4 xl:pt-8">
          //       <Link
          //         href={`/blog/${prev.slug}`}
          //         className="text-primary-500 hover:text-primary-600 dark:hover:text-primary-400">
          //         {`${Utils.larr} ${prev.title}`->Utils.str}
          //       </Link>
          //     </div>}
          //     {next &&
          //     <div className="pt-4 xl:pt-8">
          //       <Link
          //         href={`/blog/${next.slug}`}
          //         className="text-primary-500 hover:text-primary-600 dark:hover:text-primary-400">
          //         {`${next.title} ${rarr}`->Utils.str}
          //       </Link>
          //     </div>}
          //   </div>
          // </footer>
        </div>
      </div>
    </article>
  </SectionContainer>
}
