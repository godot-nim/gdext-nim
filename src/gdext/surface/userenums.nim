import std/macros, std/sets
import gdext/core/[builtinindex, commandindex, extracommands, gdclass]
import gdext/core/userclass/[contracts, propertyinfo]

proc registerEnumField*(className, enumName, fieldName: StringName; value: Int; isBitField: bool) =
  interfaceClassdbRegisterExtensionClassIntegerConstant(
    environment.library, addr className, addr enumName, addr fieldName, value, isBitField)

proc registerEnumFields*(className, enumName: StringName; fields: varargs[tuple[name: StringName; value: Int]]; isBitField: bool) =
  for name, value in fields.items:
    registerEnumField(className, enumName, name, value, isBitField)

template registerEnumFields*[T: SomeUserClass](Class: typedesc[T]; enumName: StringName; fields: varargs[tuple[name: StringName; value: Int]]; isBitField: bool) =
  registerEnumFields(className Class, enumName, fields, isBitField)

var registeredEnums {.compileTime.}: HashSet[string]

proc registerEnumInternal*(Class, Enum: NimNode; isBitField: bool): NimNode {.compileTime.} =
  let def = Enum.getImpl
  let enumType = Enum.getTypeInst
  let enumTypeStr = $enumType.toStrLit
  let enumName = newLit $Enum

  if registeredEnums.contains enumTypeStr: return newStmtList()

  let call = bindSym"registerEnumFields".newCall(
    Class,
    bindSym"stringName".newCall enumName,
  )
  for field in def[2][1..^1]:
    let fieldsym = case field.kind
    of nnkEnumFieldDef: field[0]
    of nnkSym: field
    else: field
    let fieldName = newlit $fieldsym
    call.add case isBitField
    of true:
      quote do: (stringName `fieldName`, Int 1 shl int `fieldsym`)
    of false:
      quote do: (stringName `fieldName`, Int `fieldsym`)

  call.add newlit isBitField
  result = quote do:
    proc `enumType` {.execon: Contract[`Class`].enums.} =
      Meta(typedesc `enumType`).className = stringname $className(`Class`) & "." & $`enumTypeStr`
      `call`
  registeredEnums.incl enumTypeStr

macro registerEnum*[T: SomeUserClass; E: enum](Class: typedesc[T]; Enum: typedesc[E]) =
  registerEnumInternal(Class, Enum, false)

macro registerBitField*[T: SomeUserClass; E: enum](Class: typedesc[T]; Enum: typedesc[E]) =
  registerEnumInternal(Class, Enum, true)

macro registerEnum*[E: enum](Enum: typedesc[E]) =
  registerEnumInternal(ident"ExtensionMain", Enum, false)

macro registerBitField*[E: enum](Enum: typedesc[E]) =
  registerEnumInternal(ident"Extensionmain", Enum, true)