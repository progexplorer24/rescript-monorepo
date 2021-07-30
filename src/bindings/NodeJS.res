module Process = {
  type env
  @val @scope("process") external cwd: unit => string = "cwd"
  @val @scope("process") external platform: string = "platform"
  @val @scope("process") external env: env = "env"
  @get external getESBuildPath: env => string = "ESBUILD_BINARY_PATH"
  @set external setESBuildPath: (env, string) => string = "ESBUILD_BINARY_PATH"
  // @set @scope(("process", "env")) external setESBuildPath: env = "ESBUILD_BINARY_PATH"
}

module Path = {
  @module("path") external dirname: string => string = "dirname"
  @module("path") @variadic external join: array<string> => string = "join"
  @module("path") external extname: string => string = "extname"
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

  type readFileSyncOptions = {
    encoding: string,
    flag: string,
  }

  @module("fs") @val
  external readdirSyncBinding: (string, readdirSyncOptions) => array<string> = "readdirSync"

  @module("fs") @val
  external readFileSyncBinding: (string, readFileSyncOptions) => string = "readFileSync"

  type statSyncResult
  @module("fs") @val
  external statSyncBinding: (string, statSyncOptions) => statSyncResult = "statSync"
  @send external isDirectory: (statSyncResult, unit) => bool = "isDirectory"
  @send external isFile: (statSyncResult, unit) => bool = "isFile"

  @module("fs") @val
  external existsSync: string => bool = "existsSync"

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

  let readFileSync = (~encoding="utf-8", ~flag="r", path) =>
    readFileSyncBinding(
      path,
      {
        encoding: encoding,
        flag: flag,
      },
    )
}
