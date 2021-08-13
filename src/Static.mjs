// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import GrayMatter from "gray-matter";
import * as Bundler$RescriptMonorepo from "./server/Bundler.mjs";
import * as Mdx__helpers$RescriptMonorepo from "./server/Mdx__helpers.mjs";

function getStaticProps(param) {
  var slug = param.params.slug;
  var slugWithBlog = ["/blog"].concat(slug);
  var slugString = slug.join("/");
  var path = Mdx__helpers$RescriptMonorepo.join([
        Mdx__helpers$RescriptMonorepo.root,
        "data",
        "blog"
      ]);
  var allPosts = Mdx__helpers$RescriptMonorepo.getAllFrontMatter(path);
  var postIndex = allPosts.findIndex(function (post) {
        return post.slug === slugWithBlog.join("/");
      });
  var value = Belt_Array.get(allPosts, postIndex + 1 | 0);
  var prev = value !== undefined ? value : null;
  var value$1 = Belt_Array.get(allPosts, postIndex - 1 | 0);
  var next = value$1 !== undefined ? value$1 : null;
  return Bundler$RescriptMonorepo.getFileBySlugNew(undefined, undefined, slugString).then(function (file) {
              var frontmatter = file.frontmatter;
              var authorList = frontmatter.authors.length === 0 ? ["sensei"] : frontmatter.authors;
              var authorData = authorList.map(function (val) {
                    var authorResults = Mdx__helpers$RescriptMonorepo.getFileBySlug(undefined, [
                          "authors",
                          val
                        ]);
                    return GrayMatter(authorResults).data;
                  });
              console.log(authorData);
              var props = {
                path: slug,
                post: file,
                prev: prev,
                next: next,
                authorsArray: authorData
              };
              return Promise.resolve({
                          props: props
                        });
            });
}

export {
  getStaticProps ,
  
}
/* gray-matter Not a pure module */
