import gdext
import gdext/nameformats
import gdext/classes/gdNode

type rename_test_snake_case_no_pragma* {.gdsync.} = ptr object of Node

type RenameTestPascalCaseToSnakeCase* {.gdsync, rename: toSnakeCase.} = ptr object of Node

type RenameTestClosurePrefix* {.gdsync, rename: prefix("GD").} = ptr object of Node

type `RenameTest name & rename`* {.gdsync, name: "RenameTestNameAndRename", rename: toSnakeCase.} = ptr object of Node

type RenameTester* {.gdsync.} = ptr object of Node
  RenameTestPropertyPascalCaseNoPragma* {.gdexport.}: bool = true
  rename_test_property_snake_case_to_pascal_case* {.gdexport, rename: toPascalCase.}: bool = true
  rename_test_property_closure_prefix* {.gdexport, rename: prefix("gd_").}: bool = true
  `rename_test_property name & rename`* {.gdexport, name: "rename_test_property_name_and_rename", rename: toPascalCase.}: bool = true

proc RenameTestFuncPascalCaseNoPragma*(self: RenameTester): bool {.gdsync.} = true
proc rename_test_func_snake_case_to_pascal_case*(self: RenameTester): bool {.gdsync, rename: toPascalCase.} = true
proc rename_test_func_closure_prefix*(self: RenameTester): bool {.gdsync, rename: prefix("gd_").} = true
proc `rename_test_func name & rename`*(self: RenameTester): bool {.gdsync, name: "rename_test_func_name_and_rename", rename: toPascalCase.} = true

proc RenameTestSignalPascalCaseNoPragma*(self: RenameTester): Error {.gdsync, signal.}
proc rename_test_signal_snake_case_to_pascal_case*(self: RenameTester): Error {.gdsync, signal, rename: toPascalCase.}

method RenameTestMethodPascalCaseNoPragma*(self: RenameTester): bool {.gdsync, base.} = true
method rename_test_method_snake_case_to_pascal_case*(self: RenameTester): bool {.gdsync, base, rename: toPascalCase.} = true

type rename_test_enum_snake_case_no_pragma* = enum
  a
RenameTester.bind rename_test_enum_snake_case_no_pragma

type RenameTestEnumPascalCaseToSnakeCase* {.rename: toSnakeCase.} = enum
  b
RenameTester.bind RenameTestEnumPascalCaseToSnakeCase

type RenameTestEnumClosurePrefix* {.rename: prefix("GD").} = enum
  c
RenameTester.bind RenameTestEnumClosurePrefix

type `RenameTestEnum name & rename`* {.name: "RenameTestEnumNameAndRename", rename: toSnakeCase.} = enum
  d
RenameTester.bind `RenameTestEnum name & rename`