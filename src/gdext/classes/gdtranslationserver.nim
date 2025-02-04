{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc setLocale*(self: TranslationServer; locale: String): void =
  expandMethodBind(className TranslationServer, "set_locale", 83702148)
  methodbind.ptrcall(self, [getPtr locale])

proc getLocale*(self: TranslationServer): String =
  expandMethodBind(className TranslationServer, "get_locale", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getToolLocale*(self: TranslationServer): String =
  expandMethodBind(className TranslationServer, "get_tool_locale", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc compareLocales*(self: TranslationServer; localeA: String; localeB: String): int32 =
  expandMethodBind(className TranslationServer, "compare_locales", 2878152881)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr localeA, getPtr localeB], addr ret)
  (addr ret).decode_result(int32)

proc standardizeLocale*(self: TranslationServer; locale: String): String =
  expandMethodBind(className TranslationServer, "standardize_locale", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr locale], addr ret)
  (addr ret).decode_result(String)

proc getAllLanguages*(self: TranslationServer): PackedStringArray =
  expandMethodBind(className TranslationServer, "get_all_languages", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getLanguageName*(self: TranslationServer; language: String): String =
  expandMethodBind(className TranslationServer, "get_language_name", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr language], addr ret)
  (addr ret).decode_result(String)

proc getAllScripts*(self: TranslationServer): PackedStringArray =
  expandMethodBind(className TranslationServer, "get_all_scripts", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getScriptName*(self: TranslationServer; script: String): String =
  expandMethodBind(className TranslationServer, "get_script_name", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr script], addr ret)
  (addr ret).decode_result(String)

proc getAllCountries*(self: TranslationServer): PackedStringArray =
  expandMethodBind(className TranslationServer, "get_all_countries", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getCountryName*(self: TranslationServer; country: String): String =
  expandMethodBind(className TranslationServer, "get_country_name", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr country], addr ret)
  (addr ret).decode_result(String)

proc getLocaleName*(self: TranslationServer; locale: String): String =
  expandMethodBind(className TranslationServer, "get_locale_name", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr locale], addr ret)
  (addr ret).decode_result(String)

proc translate*(self: TranslationServer; message: StringName; context: StringName = stringName ""): StringName =
  expandMethodBind(className TranslationServer, "translate", 58037827)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr message, getPtr context], addr ret)
  (addr ret).decode_result(StringName)

proc translatePlural*(self: TranslationServer; message: StringName; pluralMessage: StringName; n: int32; context: StringName = stringName ""): StringName =
  expandMethodBind(className TranslationServer, "translate_plural", 1333931916)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr message, getPtr pluralMessage, getPtr n, getPtr context], addr ret)
  (addr ret).decode_result(StringName)

proc addTranslation*(self: TranslationServer; translation: gdref Translation): void =
  expandMethodBind(className TranslationServer, "add_translation", 1466479800)
  methodbind.ptrcall(self, [getPtr translation])

proc removeTranslation*(self: TranslationServer; translation: gdref Translation): void =
  expandMethodBind(className TranslationServer, "remove_translation", 1466479800)
  methodbind.ptrcall(self, [getPtr translation])

proc getTranslationObject*(self: TranslationServer; locale: String): gdref Translation =
  expandMethodBind(className TranslationServer, "get_translation_object", 2065240175)
  var ret: encoded gdref Translation
  methodbind.ptrcall(self, [getPtr locale], addr ret)
  (addr ret).decode_result(gdref Translation)

proc clear*(self: TranslationServer): void =
  expandMethodBind(className TranslationServer, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc getLoadedLocales*(self: TranslationServer): PackedStringArray =
  expandMethodBind(className TranslationServer, "get_loaded_locales", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc isPseudolocalizationEnabled*(self: TranslationServer): bool =
  expandMethodBind(className TranslationServer, "is_pseudolocalization_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPseudolocalizationEnabled*(self: TranslationServer; enabled: bool): void =
  expandMethodBind(className TranslationServer, "set_pseudolocalization_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc reloadPseudolocalization*(self: TranslationServer): void =
  expandMethodBind(className TranslationServer, "reload_pseudolocalization", 3218959716)
  methodbind.ptrcall(self, [])

proc pseudolocalize*(self: TranslationServer; message: StringName): StringName =
  expandMethodBind(className TranslationServer, "pseudolocalize", 1965194235)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr message], addr ret)
  (addr ret).decode_result(StringName)

template pseudolocalizationEnabled*(self: TranslationServer): untyped = self.isPseudolocalizationEnabled()
template `pseudolocalizationEnabled=`*(self: TranslationServer; value) = self.setPseudolocalizationEnabled(value)

const TranslationServer_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TranslationServer]): Table[string, string] = TranslationServer_vmap