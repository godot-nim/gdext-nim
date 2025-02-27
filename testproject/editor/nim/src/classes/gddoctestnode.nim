import gdext

type DocTestNode* {.gdsync, description: """
A node defined for documentation testing.
"## comments" are ignored because there is no way to retrieve them.""".} = ptr object of Node
  pragma_param* {.gdexport, description: "This is a description for {.gdexport.}'ed params".}: string = "pragma-param"
  getset_param: string = "getset-param"

gdexport "getset_param",
  proc(self: DocTestNode): string = self.getset_param,
  proc(self: DocTestNode; value: string) = self.getset_param = value,
  description = "This is a description for gdexport(getter, setter)'ed params"


proc signalWithDescription* (self: DoctestNode): Error {.gdsync, signal, description: """
This is a description for Signal.""".}

proc procWithNoDocComments(self: DocTestNode): string {.gdsync.} =
  "doctest"

proc procWithDescription(self: DocTestNode): string {.gdsync, description: """
This is a description for Proc that provided by pragma""".} =
  "doctest"

proc procWithDocComments(self: DocTestNode): string {.gdsync.} =
  ## Just returns String "doctest"
  ## Note that as same as `nim doc`, very first doc-comment is only applied.
  ## Additionally, runnableExamples will also be ignored.
  ## The ability to convert reStructuredText to Godot.RichText is not implemented.
  runnableExamples:
    "doctest"
  result = "doctest"
  ## IGNORED

  ## IGNORED

proc procWithDescriptionAndComment(self: DocTestNode): string {.gdsync, description: """
If both {.description.} and ## description is provided,
{.description.} will only be used.""".} =
  ## Descriptions here will be ignored from Godot Editor.
  ## Though if you do `nim doc`, of course this part will placed on documentation.
  "doctest"