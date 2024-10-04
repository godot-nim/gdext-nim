import std/options

type # Enum'ish
  JsonEnumField* = ref object
    name*: string
    value*: int
  JsonEnum* = ref object of RootObj
    name*: string
    is_bitfield*: Option[bool]
    values*: seq[JsonEnumField]
  JsonBuiltinClassEnum* = ref object of JsonEnum
  JsonClassEnum* = ref object of JsonEnum
  JsonGlobalEnum* = ref object of JsonEnum

type
  JsonArgument* = ref object
    name*: string
    `type`*: string
    meta*: Option[string]
    default_value*: Option[string]

type
  JsonProcBase* = ref object of RootObj
    name*: string
    is_vararg*: bool
    arguments*: Option[seq[JsonArgument]]
  JsonUtilityFunction* = ref object of JsonProcBase
    hash*: int
    return_type*: Option[string]
    category*: string
  JsonBuiltinClassMethod* = ref object of JsonProcBase
    is_const*: bool
    is_static*: bool
    hash*: int
    return_type*: Option[string]
  JsonClassMethod* = ref object of JsonProcBase
    is_const*: bool
    is_static*: bool
    is_virtual*: bool
    hash*: Option[int] # if is-virtual, it will be none.
    return_value*: Option[tuple[`type`: string; meta: Option[string]]]

  JsonOperator* = ref object
    name*: string
    return_type*: string
    right_type*: Option[string]
  JsonConstructor* = ref object
    index*: int
    arguments*: Option[seq[JsonArgument]]

  JsonConstant* = ref object
    name*: string
    `type`*: string
    value*: string
  JsonMember* = object
    name*: string
    `type`*: string

  JsonBuiltinClass* = ref object
    name*: string
    is_keyed*: bool
    has_destructor*: bool
    indexing_return_type*: Option[string]
    constructors*: seq[JsonConstructor]
    constants*: Option[seq[JsonConstant]]
    enums*: Option[seq[JsonBuiltinClassEnum]]
    members*: Option[seq[JsonMember]]
    operators*: Option[seq[JsonOperator]]
    methods*: Option[seq[JsonBuiltinClassMethod]]
  JsonBuiltinClasses* = seq[JsonBuiltinClass]

  JsonClassConstant* = ref object
    name*: string
    value*: int
  JsonProperty* = ref object
    `type`*: string
    name*: string
    setter*: Option[string]
    getter*: string
    index*: Option[int]

  JsonSignalArgument* = ref object
    name*: string
    `type`*: string
  JsonSignal* = ref object
    name*: string
    arguments*: Option[seq[JsonSignalArgument]]

  JsonClass* = ref object
    name*: string
    is_refcounted*: bool
    is_instantiable*: bool
    api_type*: string
    inherits*: Option[string]
    methods*: Option[seq[JsonClassMethod]]
    signals*: Option[seq[JsonSignal]]
    properties*: Option[seq[JsonProperty]]
    enums*: Option[seq[JsonClassEnum]]
    constants*: Option[seq[JsonClassConstant]]
  JsonClasses* = seq[JsonClass]

  JsonStructure* = ref object
    name*, format*: string
  JsonStructures* = seq[JsonStructure]

  JsonHeader* = ref object
    version_major*: int
    version_minor*: int
    version_patch*: int
    version_status*: string
    version_build*: string
    version_full_name*: string

  JsonAPI* = ref object
    header*: JsonHeader
    global_enums*: seq[JsonGlobalEnum]
    utility_functions*: seq[JsonUtilityFunction]
    builtin_classes*: JsonBuiltinClasses
    classes*: JsonClasses
    native_structures*: JsonStructures