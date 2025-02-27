import std/macros, std/sets
import gdext/gdinterface/[extracommands, classDB]
import gdext/core/[gdclass]
import gdext/core/userclass/[contracts]

proc registerEnumField(className, enumName, fieldName: StringName; value: Int; isBitField: bool) =
  classDB.registerIntegerConstant(className, enumName, fieldName, value, isBitField)

proc registerEnumFields(className, enumName: StringName; fields: varargs[tuple[name: StringName; value: Int]]; isBitField: bool) =
  for name, value in fields.items:
    registerEnumField(className, enumName, name, value, isBitField)

template registerEnumFields[T: SomeUserClass](Class: typedesc[T]; enumName: StringName; fields: varargs[tuple[name: StringName; value: Int]]; isBitField: bool) =
  registerEnumFields(className Class, enumName, fields, isBitField)

var registeredEnums {.compileTime.}: HashSet[string]

macro registerEnumInternal(Class, Enum; isBitField: static bool) =
  let Enum = Enum.getTypeInst
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
    template EnumOwner*(_: typedesc[`enumType`]): typedesc = `Class`
    proc `enumType` {.execon: Contract[`Class`].enums.} =
      `call`
  registeredEnums.incl enumTypeStr

template `bind`*[T: SomeUserClass; E: enum](Class: typedesc[T]; Enum: typedesc[E]) =
  registerEnumInternal(Class, E, false)

template `bind`*[T: SomeUserClass; E: enum](Class: typedesc[T]; Flags: typedesc[set[E]]) =
  registerEnumInternal(Class, E, true)

template `bind`*[E: enum](Enum: typedesc[E]) =
  registerEnumInternal(ExtensionMain, E, false)

template `bind`*[E: enum](Flags: typedesc[set[E]]) =
  registerEnumInternal(Extensionmain, E, true)