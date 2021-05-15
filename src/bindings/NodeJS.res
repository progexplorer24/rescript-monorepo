module Process = {
  @val @scope("process") external cwd: unit => string = "cwd"
}

@module("path") external dirname: string => string = "dirname"
module Path = {
  @module("path") @variadic external join: array<string> => string = "join"
}

module Fs = {
  type readdirSyncOptions = {
    encoding: string,
    withFileTypes: bool,
  }

  type statSyncOptions = {
    bigint: bool,
    throwIfNoEntry: bool,
  }

  @module("fs") @val
  external readdirSyncBinding: (string, readdirSyncOptions) => array<string> = "readdirSync"

  type statSyncResult
  @module("fs") @val
  external statSyncBinding: (string, statSyncOptions) => statSyncResult = "statSync"
  @send external isDirectory: (statSyncResult, unit) => bool = "isDirectory"
  @send external isFile: (statSyncResult, unit) => bool = "isFile"
  // type expectResult
  // @val external expect: (. 'a) => expectResult = "expect"
  // @send external toBe: (expectResult, 'a) => unit = "toBe"

  let statSync = (~bigint=false, ~throwIfNoEntry=true, string) =>
    statSyncBinding(
      string,
      {
        bigint: bigint,
        throwIfNoEntry: throwIfNoEntry,
      },
    )

  let readdirSync = (~encoding="utf-8", ~withFileTypes=false, path) =>
    readdirSyncBinding(
      path,
      {
        encoding: encoding,
        withFileTypes: withFileTypes,
      },
    )
}
