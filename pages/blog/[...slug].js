import { default as PostTemplateRes } from "../../src/Blog__Slug.mjs";
const data = {
  name: "Sarah"
}

export default function PostTemplate(props) {
  return   <PostTemplateRes {...props} /> 

}

export {getStaticProps} from "../../src/Static.mjs"
export {getStaticPaths} from "../../src/Blog__Slug.mjs"