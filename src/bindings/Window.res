module Location = {
  // INFO: Selected bindings for window object
  @val @scope(("window", "location")) external hash: string = "hash"
  @val @scope(("window", "location")) external host: string = "host"
  @val @scope(("window", "location")) external hostname: string = "hostname"
  @val @scope(("window", "location")) external href: string = "href"
  @val @scope(("window", "location")) external origin: string = "origin"
  @val @scope(("window", "location")) external password: string = "password"
  @val @scope(("window", "location")) external pathname: string = "pathname"
  @val @scope(("window", "location")) external port: string = "port"
  @val @scope(("window", "location")) external protocol: string = "protocol"
  @val @scope(("window", "location")) external search: string = "search"

  @val @scope("window") external location: 'a = "location"
}
