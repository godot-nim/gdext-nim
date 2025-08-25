import gdext/nameformats
import std/[sequtils, unittest]

test "words":
  check "aaa".words.toSeq == @["aaa"]
  check "aaa111".words.toSeq == @["aaa", "111"]
  check "AAA".words.toSeq == @["AAA"]
  check "AAAa".words.toSeq == @["AA", "Aa"]
  check "AAAaAA".words.toSeq == @["AA", "Aa", "AA"]
  check "AAA111".words.toSeq == @["AAA", "111"]
  check "aaa111A".words.toSeq == @["aaa", "111A"]
  check "aaa111AA".words.toSeq == @["aaa", "111AA"]
  check "aaa111Aa".words.toSeq == @["aaa", "111", "Aa"]
  check "aaa_aaa".words.toSeq == @["aaa", "aaa"]
  check "sendHTTPResponse200".words.toSeq == @["send", "HTTP", "Response", "200"]
  check "XMLHttpRequest".words.toSeq == @["XML", "Http", "Request"]
  check "MyXMLParser".words.toSeq == @["My", "XML", "Parser"]
  check "snake_case_already".words.toSeq == @["snake", "case", "already"]
  check "Camel123Case".words.toSeq == @["Camel", "123", "Case"]
  check "Version2Parser".words.toSeq == @["Version", "2", "Parser"]
  check "aAAAa1A1a1Aa1aA".words.toSeq == @["a", "AA", "Aa", "1A", "1a", "1", "Aa", "1a", "A"]
  check "aaa111AAAaaaAAA111aaa".words.toSeq == @["aaa", "111AA", "Aaaa", "AAA", "111", "aaa"]
  check "a1AaA1a".words.toSeq == @["a", "1", "Aa", "A", "1a"]
  check "___".words.toSeq == newSeq[string]()
test "toSnakeCase":
  check "sendHTTPResponse200".toSnakeCase == "send_http_response_200"
test "toUpperSnakeCase":
  check "sendHTTPResponse200".toUpperSnakeCase == "SEND_HTTP_RESPONSE_200"
test "toPascalCase":
  check "sendHTTPResponse200".toPascalCase == "SendHttpResponse200"
test "toCamelCase":
  check "sendHTTPResponse200".toCamelCase == "sendHttpResponse200"

test "prefix":
  let f = prefix("godot_")
  check f("signal") == "godot_signal"

test "suffix":
  let f = suffix("_gd")
  check f("player") == "player_gd"

test "removePrefix":
  let f = removePrefix("gd_")
  check f("gd_player") == "player"
  check f("player") == "player"

test "removeSuffix":
  let f = removeSuffix("_gd")
  check f("player_gd") == "player"
  check f("player") == "player"

test "replace":
  let f = replace("foo", "bar")
  check f("foo_test_foo") == "bar_test_bar"

test "multiReplace":
  let f = multiReplace(("foo", "bar"), ("baz", "qux"))
  check f("foo_baz_foo") == "bar_qux_bar"

test "then":
  let f = toSnakeCase.then suffix("_gd")
  check f("PlayerID") == "player_id_gd"

  let g = removePrefix("m") >> replace("Identity", "ID") >> suffix("_gd") >> toSnakeCase
  check g("mPlayerIdentity") == "player_id_gd"