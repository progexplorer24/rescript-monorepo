
import NavbarPage from "src/Navbar.mjs";

// NOTE:
// We need to wrap uppercased latter for page function - Fast Refresh requirement
export default function Nav(props) {
  return <NavbarPage {...props}/>;
}