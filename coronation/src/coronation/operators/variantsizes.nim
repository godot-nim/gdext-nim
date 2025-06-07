import cloths
import types/json
import std/[strformat, strutils]

proc weave*(size: JsonVariantSize): Cloth =
  &"const {size.name}Size* = {size.size}"

proc weave*(conf: JsonVariantSizeWithConf): Cloth =
  let c = conf.build_configuration.split("_")
  let floatSize = (if c[0] == "float": "4" else: "8")
  let intSize = (if c[1] == "32": "4" else: "8")
  weave multiline:
    &"when sizeof(real_elem) == {floatSize} and sizeof(int) == {intSize}:"
    weave indent:
      for size in conf.sizes:
        weave size
