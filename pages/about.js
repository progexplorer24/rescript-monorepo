import { default as AboutPage } from "../src/About.mjs";

// Note:
// We need to wrap the make call with
// a Fast-Refresh conform function name,
// (in this case, uppercased first letter)
//
// If you don't do this, your Fast-Refresh will
// not work!

export default function Tags(props) {
  return <AboutPage {...props}/>;
}

export {getStaticProps} from "../src/About.mjs"