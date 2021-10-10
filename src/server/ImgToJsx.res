type dimensions = {
  width: int,
  height: int,
}
type nodeObj<'val> = {
  type_: string,
  name: string,
  value: 'val,
}
type options
type tree
type node
type test_<'node, 'res> = 'node => 'res
type visitor<'node, 'parent> = ('node, int, 'parent) => unit
@module("image-size") external sizeOf: string => dimensions = "sizeof"
@module("unist-util-visit")
external visit: (tree, test_<'node, 'res>, visitor<'node2, 'parent>) => 'result = "visit"

let toJsx = tree => {
  visit(
    tree,
    // only visit p tags that contain an img element
    node => node["type"] === "paragraph" && node["children"]["some"](n => n["type"] === "image"),
    (node, _, _) => {
      let imageNode = node["children"]["find"](n => n["type"] === "image")

      // only local files
      if NodeJS.Fs.existsSync(`${NodeJS.Process.cwd()}/public${imageNode["url"]}`) {
        let dimensions = sizeOf(`${NodeJS.Process.cwd()}/public${imageNode["url"]}`)

        // Convert original node to next/image
        imageNode["type"] = "mdxJsxFlowElement"
        imageNode["name"] = "Image"
        imageNode["attributes"] = [
          {type_: "mdxJsxAttribute", name: "alt", value: imageNode["alt"]},
          {type_: "mdxJsxAttribute", name: "src", value: imageNode["url"]},
          {type_: "mdxJsxAttribute", name: "width", value: Belt.Int.toString(dimensions.width)},
          {type_: "mdxJsxAttribute", name: "height", value: Belt.Int.toString(dimensions.height)},
        ]

        // Change node type from p to div to avoid nesting error
        node["type"] = "div"
        node["children"] = [imageNode]
      }
    },
  )
}
