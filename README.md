# godot-nim/gdext

Godot GDExtension binding for Nim-lang.

For instance to use, see [demo][1].
See [wiki][2] to get more detail.

## Features

- [x] Godot 4.3 full api
- [x] Hot reloading
- [x] Available to define&export your Class/Function/Signal/Property
- [x] Available to call engine functionalities from Nim
- [x] GLSLang-like swizzle operator (e.g. vector3.xxxyyyzzz)
- [x] Commandline-helper (see [wiki - gdextwiz][3])

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
* [godotengine/godot](https://github.com/godotengine/godot) 4.3
 
  It is possible to support lower strictly by manual installation (by changing gdextgen to the corresponding version content).
* [godot-nim/gdextgen](https://github.com/godot-nim/gdextgen) latest

[1]: https://github.com/godot-nim/demo
[2]: https://github.com/godot-nim/gdext-nim/wiki
[3]: https://github.com/godot-nim/gdext-nim/wiki/gdextwiz