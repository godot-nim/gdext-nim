## Provides formatter functions for transforming Nim identifiers when exporting them to Godot.
## This module defines common naming style conversions (snake_case, PascalCase, etc.)
## and Godot-specific conventions for function and internal function identifiers.

import std/strutils
import std/sequtils

type Formatter* = proc(str: string): string
  ## A function type that maps an identifier string to a formatted string.

proc getOrDefault(str: string; i: int; default: char = '\0'): char =
  ## Returns the character at index `i` in `str`,
  ## or `default` if the index is out of bounds.
  if i in str.low..str.high:
    str[i]
  else:
    default

proc uncapitalizeAscii(str: string): string =
  ## Returns a copy of `str` with the first ASCII letter lowercased.
  result = str
  if result.len != 0:
    result[0] = result[0].toLowerAscii

iterator words*(str: string): string =
  ## Splits an identifier `str` into word-like segments.
  ##
  ## The splitting rules are designed for converting between
  ## naming conventions (snake_case, camelCase, PascalCase, etc.):
  ##
  ## - Underscores (`_`) act as delimiters.
  ## - Transitions between lowercase → UPPERCASE, or UPPERCASE → lowercase
  ##   create boundaries. (e.g. "XMLHttp" → `["XML", "Http"]`)
  ## - Digits are separated from letters. (e.g. "Version2Parser" → `["Version", "2", "Parser"]`)
  ## - Consecutive uppercase letters are grouped unless followed by a lowercase,
  ##   in which case the last uppercase starts a new word.
  ##
  ## Examples:
  ## - "sendHTTPResponse200" → `["send", "HTTP", "Response", "200"]`
  ## - "XMLHttpRequest" → `["XML", "Http", "Request"]`
  ## - "my_custom_resource" → `["my", "custom", "resource"]`
  ## - "aaa111Aa" → `["aaa", "111", "Aa"]`
  ## - "aaa111AAa" → `["aaa", "111A", "Aa"]`
  ## - "aaa111aA" → `["aaa", "111a", "A"]`
  ##
  ## Useful as a foundation for implementing case-conversion formatters.
  var word: string
  for i, c in str:
    case c
    of 'a'..'z':
      if str.getOrDefault(i-1) in {'0'..'9'} and str.getOrDefault(i+1) in {'a'..'z'}:
        if word.len != 0:
          yield word
          reset word
      word.add c
    of '_':
      if word.len != 0:
        yield word
        reset word
    of 'A'..'Z':
      if str.getOrDefault(i-1) in {'a'..'z'} or str.getOrDefault(i+1) in {'a'..'z'}:
        if word.len != 0:
          yield word
          reset word
      if str.getOrDefault(i-1) in {'0'..'9'} and str.getOrDefault(i+1) in {'a'..'z'}:
        if word.len != 0:
          yield word
          reset word
      word.add c
    of '0'..'9':
      if str.getOrDefault(i-1) in {'a'..'z', 'A'..'Z'}:
        if word.len != 0:
          yield word
          reset word
      word.add c
    else:
      word.add c
  if word.len != 0:
    yield word

proc toSnakeCase*(str: string): string =
  ## Converts `str` into lower snake_case.
  ## 
  ## **Example:** "sendHTTPResponse200" -> "send_http_response_200"
  str.words.toSeq.join("_").toLowerAscii

proc toUpperSnakeCase*(str: string): string =
  ## Converts `str` into UPPER_SNAKE_CASE.
  ## 
  ## **Example:** "sendHTTPResponse200" -> "SEND_HTTP_RESPONSE_200"
  str.words.toSeq.join("_").toUpperAscii

proc toPascalCase*(str: string): string =
  ## Converts `str` into PascalCase.
  ## 
  ## **Example:** "sendHTTPResponse200" -> "SendHttpResponse200"
  str.words.toSeq.mapIt(it.toLowerAscii.capitalizeAscii).join()

proc toCamelCase*(str: string): string =
  ## Converts `str` into camelCase.
  ## 
  ## **Example:** "sendHTTPResponse200" -> "sendHttpResponse200"
  str.toPascalCase.uncapitalizeAscii

proc withLeadingUnderscore*(str: string): string =
  "_" & str

proc toGodotFuncCase*(str: string): string =
  ## Converts `str` into Godot’s recommended function naming convention (snake_case).
  ## 
  ## **Example:** "sendHTTPResponse200" -> "send_http_response_200"
  str.toSnakeCase

proc toGodotInternalFuncCase*(str: string): string =
  ## Converts `str` into Godot’s internal-function/virtual-method naming convention:
  ## snake_case with a leading underscore.
  ## 
  ## **Example:** "sendHTTPRequest" -> "_send_http_request"
  str.toSnakeCase.withLeadingUnderscore

proc toGodotClassCase*(str: string): string =
  ## Converts `str` into Godot’s recommended type/class naming convention (PascalCase).
  ##
  ## **Example:** "my_custom_resource" -> "MyCustomResource"
  str.toPascalCase

proc toGodotConstCase*(str: string): string =
  ## Converts `str` into Godot’s recommended constant naming convention (UPPER_SNAKE_CASE).
  ##
  ## **Example:** "maxSpeed" -> "MAX_SPEED"
  str.toUpperSnakeCase

proc toGodotPropertyCase*(str: string): string =
  ## Converts `str` into Godot’s recommended property naming convention (snake_case).
  ## 
  ## **Example:** "httpResponseCode" -> "http_response_code"
  str.toSnakeCase

proc asIs*(str: string): string =
  ## Returns `str` unchanged.
  ## Useful for opting out of formatting when exporting identifiers.
  str

proc prefix*(prefix: string): Formatter =
  ## Returns a formatter that prepends `prefix` to the input string.
  ## 
  ## **Example:**
  ## ```nim
  ## let f = prefix("godot_")
  ## assert f("signal") == "godot_signal"
  ## ```
  proc(str: string): string = prefix & str

proc suffix*(suffix: string): Formatter =
  ## Returns a formatter that appends `suffix` to the input string.
  ## 
  ## **Example:**
  ## ```nim
  ## let f = suffix("_gd")
  ## assert f("player") == "player_gd"
  ## ```
  proc(str: string): string = str & suffix

proc then*(a, b: Formatter): Formatter =
  ## Composes two formatters sequentially.
  ## The result of `a` is passed to `b`.
  ##
  ## **Example:**
  ## ```nim
  ## let f = toSnakeCase.then suffix("_gd")
  ## assert f("PlayerID") == "player_id_gd"
  ## ```
  proc(str: string): string = b(a(str))

template `>>`*(a, b: Formatter): Formatter =
  ## Operator alias for `then`, allowing formatter chaining with `>>`.
  ##
  ## **Example:**
  ## ```nim
  ## let f = toPascalCase >> prefix("Gd")
  ## assert f("player_id") == "GdPlayerId"
  ## ```
  a.then b

# strutils glue
# =============

export capitalizeAscii
export normalize
export nimIdentNormalize

proc removePrefix*(prefix: string): Formatter =
  ## Returns a formatter that removes `prefix` from the beginning of the string,
  ## if it exists. If `str` does not start with `prefix`, the string is returned unchanged.
  ##
  ## **Example:**
  ## ```nim
  ## let f = removePrefix("gd_")
  ## assert f("gd_player") == "player"
  ## assert f("player") == "player"
  ## ```
  proc(str: string): string =
    result = str
    strutils.removePrefix(result, prefix)

proc removeSuffix*(suffix: string): Formatter =
  ## Returns a formatter that removes `suffix` from the end of the string,
  ## if it exists. If `str` does not end with `suffix`, the string is returned unchanged.
  ##
  ## **Example:**
  ## ```nim
  ## let f = removeSuffix("_gd")
  ## assert f("player_gd") == "player"
  ## assert f("player") == "player"
  ## ```
  proc(str: string): string =
    result = str
    strutils.removeSuffix(result, suffix)

proc replace*(sub, by: string): Formatter =
  ## Returns a formatter that replaces all occurrences of substring `sub`
  ## with `by` inside the input string.
  ##
  ## **Example:**
  ## ```nim
  ## let f = replace("foo", "bar")
  ## assert f("foo_test_foo") == "bar_test_bar"
  ## ```
  proc(str: string): string = strutils.replace(str, sub, by)

proc multiReplace*(replacements: varargs[tuple[sub, by: string]]): Formatter =
  ## Returns a formatter that applies multiple substring replacements at once.
  ## Each `(sub, by)` pair is replaced in order.
  ##
  ## **Example:**
  ## ```nim
  ## let f = multiReplace(("foo", "bar"), ("baz", "qux"))
  ## assert f("foo_baz_foo") == "bar_qux_bar"
  ## ```
  let r = @replacements
  proc(str: string): string = strutils.multiReplace(str, r)

# switches
# ========

var
  defaultClassFormatter*: Formatter
    ## The default formatter intended for exported classes
    ## when neither `{.name.}` nor `{.rename.}` is specified.
    ##
    ## By default this is `asIs`, but it can be overridden at compile time.
    ##
    ## **Example:**
    ## ```nim
    ## import gdext/nameformats
    ## proc set_formatters {.execon: EntryPoint.} =
    ##   nameformats.defaultClassFormatter = nameformats.toGodotClassCase
    ## ```

  defaultFunctionFormatter*: Formatter
    ## The default formatter applied to exported functions
    ## when neither `{.name.}` nor `{.rename.}` is specified.
    ##
    ## By default this is `asIs`, but it can be overridden at compile time.
    ##
    ## **Example:**
    ## ```nim
    ## import gdext/nameformats
    ## proc set_formatters {.execon: EntryPoint.} =
    ##   nameformats.defaultFunctionFormatter = nameformats.toGodotFuncCase
    ## ```

  defaultVirtualMethodFormatter*: Formatter
    ## The default formatter intended for exported virtual methods
    ## when neither `{.name.}` nor `{.rename.}` is specified.
    ##
    ## By default this is `withLeadingUnderscore`, but it can be overridden at compile time.
    ##
    ## **Example:**
    ## ```nim
    ## import gdext/nameformats
    ## proc set_formatters {.execon: EntryPoint.} =
    ##   nameformats.defaultVirtualMethodFormatter = nameformats.toGodotInternalFuncCase
    ## ```

  defaultConstFormatter*: Formatter
    ## The default formatter intended for exported constants
    ## when neither `{.name.}` nor `{.rename.}` is specified.
    ##
    ## By default this is `asIs`, but it can be overridden at compile time.
    ##
    ## **Example:**
    ## ```nim
    ## import gdext/nameformats
    ## proc set_formatters {.execon: EntryPoint.} =
    ##   nameformats.defaultConstFormatter = nameformats.toUpperSnakeCase
    ## ```

  defaultPropertyFormatter*: Formatter
    ## The default formatter intended for exported properties and signals
    ## when neither `{.name.}` nor `{.rename.}` is specified.
    ##
    ## By default this is `asIs`, but it can be overridden at compile time.
    ##
    ## **Example:**
    ## ```nim
    ## import gdext/nameformats
    ## proc set_formatters {.execon: EntryPoint.} =
    ##   nameformats.defaultPropertyFormatter = nameformats.toGodotFuncCase
    ## ```
