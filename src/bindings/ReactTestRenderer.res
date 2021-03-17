type t
@module("react-test-renderer") @val external create: React.element => t = "create"

@send external toJSON: t => Js.Json.t = "toJSON"
