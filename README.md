# godot-nim/godot

Front-end library of godot-nim

## Demo

See [godot-nim/demo](https://github.com/godot-nim/demo).

## Install

### Recommended

```bash
nimble install https://github.com/godot-nim/minister
minister install
```

[minister](https://github.com/godot-nim/minister) is an assistant to develop Godot&Nim game.

(Currently that have few functionalities; do not necessarily required.)


### Alternative

This is actually what minister install does internally.

```bash
nimble install https://github.com/godot-nim/coronation
godot --dump-extension-api
coronation --apisource:extension_api.json --outdir:. --package:godotgen

nimble install https://github.com/godot-nim/godotcore
nimble install file://$PWD/godotgen
nimble install https://github.com/godot-nim/godot

rm -rf godotgen extension_api.json
```