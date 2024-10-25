import std/[os, strformat]

const versions = ["2.0.0", "2.0.10", "2.2.0"]
for version in versions: discard execShellCmd &"""
choosenim {version}
gdextwiz build testproject 2> /dev/null
godot --path testproject"""