import strutils
import gdext/private/buildsettings

when buildOS == "windows":
  const delim = "\\"
else:
  const delim = "/"

const libraryRoot* = currentSourcePath().split(delim)[0..^2].join(delim)
const genDir* = [libraryRoot, "gen"].join(delim)