import config
import build
import interfacegenerator

import std/os
import std/json
import std/uri
import std/strutils
import std/sequtils
import std/httpclient

import types/json

const version = staticRead("../coronation.nimble").splitLines
  .filterIt(it.startsWith "version")[0]
  .split('=')[1]
  .strip(chars= {'"', ' '})

proc getContent(client: HttpClient; url: Uri): string =
  var uri = url
  if uri.scheme.len == 0:
    uri.scheme = "file"

  if uri.scheme == "file":
    uri.path.expandFilename.readFile
  else:
    httpclient.getContent(client, uri)

proc coronation*(apisource: string; ifcesource: string; outdir= "out"; package= "gdext") =
  ## Description:
  ##   Read API spec from `apisource` and `ifcesource`, generate godot package named `package` into `outdir`.
  ##
  ## Example:
  ##   coronation --apisorce:extension_api.json --outdir:out/godot410 --package:godot

  var client = newHttpClient()
  let api = client.getContent(apisource.parseuri).parsejson.to(JsonAPI)
  let ifce = client.getContent(ifcesource.parseuri)

  generateInterface(ifce, outdir/"gdext/gen")
  build.run api= api, BuildConfig(
    apisource: apisource,
    outdir: outdir,
    package: package,
  )

when isMainModule:
  import cligen
  clCfg.version= version
  coronation.dispatch(
    usage= "$command $args\n\n${doc}\nOptions:\n$options",
    help= {
      "apisource": "Path to extension_api.json output by the engine",
      "ifcesource": "Path to gdextension_interface.h output by the engine",
      "outdir": "Directory that the generated package will be placed to",
      "package": "Name of generated package",
    },
  )
