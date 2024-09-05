# godot-nim/gdext

Godot GDExtension binding for Nim-lang.

For more detail, see [wiki](https://github.com/godot-nim/docs/wiki).

## Features

- [x] Godot 4.3 full api
- [x] Hot reloading
- [x] Available to define&export your Class/Function/Signal/Property
- [x] Available to call engine functionalities from Nim
- [x] GLSLang-like swizzle operator (e.g. vector3.xxxyyyzzz)

### In preparation

- [ ] Export enums
- [ ] Assist to generate a .gdextension file
- [ ] Export descriptions
- [ ] Define/Export virtual methods
- [ ] Develop engine plugins

## Install / Uninstall

```
# install
nimble install https://github.com/godot-nim/gdext-nim

# uninstall
nimble uninstall -i gdext
gdextwiz uninstall

# upgrade
gdextwiz upgrade
```

## Dependencies

* [nim-lang/nim](https://github.com/nim-lang/nim) 2.0.0 or higher
* [godotengine/godot](https://github.com/godotengine/godot) 4.2
 
  It is possible to support 4.1..4.3 by manual installation (by changing gdextgen to the corresponding version content).
* [godot-nim/gdextcore](https://github.com/godot-nim/gdextcore) latest
* [godot-nim/gdextgen](https://github.com/godot-nim/gdextgen) latest
* [godot-nim/gdextwiz](https://github.com/godot-nim/gdextwiz) latest
