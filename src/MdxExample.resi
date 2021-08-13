type props
let default: props => React.element
// NOTE: getStaticProps is not working correctly - next is trying to run server code on the client so imports exports are causing the issue or it may be caused by .resi inteface file? Needs investigation
// let getStaticProps: Next.GetStaticProps.t<props, {.}, _>
