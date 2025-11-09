{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(TranslationServer, Object)

proc setLocale*(self: TranslationServer; locale: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "set_locale", 83702148)
  methodbind.ptrcall(self, [getPtr locale], void)

proc getLocale*(self: TranslationServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_locale", 201670096)
  methodbind.ptrcall(self, [], String)

proc getToolLocale*(self: TranslationServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_tool_locale", 2841200299)
  methodbind.ptrcall(self, [], String)

proc compareLocales*(self: TranslationServer; localeA: String; localeB: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "compare_locales", 2878152881)
  methodbind.ptrcall(self, [getPtr localeA, getPtr localeB], int32)

proc standardizeLocale*(self: TranslationServer; locale: String; addDefaults: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "standardize_locale", 4216441673)
  methodbind.ptrcall(self, [getPtr locale, getPtr addDefaults], String)

proc getAllLanguages*(self: TranslationServer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_all_languages", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getLanguageName*(self: TranslationServer; language: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_language_name", 3135753539)
  methodbind.ptrcall(self, [getPtr language], String)

proc getAllScripts*(self: TranslationServer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_all_scripts", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getScriptName*(self: TranslationServer; script: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_script_name", 3135753539)
  methodbind.ptrcall(self, [getPtr script], String)

proc getAllCountries*(self: TranslationServer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_all_countries", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getCountryName*(self: TranslationServer; country: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_country_name", 3135753539)
  methodbind.ptrcall(self, [getPtr country], String)

proc getLocaleName*(self: TranslationServer; locale: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_locale_name", 3135753539)
  methodbind.ptrcall(self, [getPtr locale], String)

proc translate*(self: TranslationServer; message: StringName; context: StringName = default(StringName)): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "translate", 1829228469)
  methodbind.ptrcall(self, [getPtr message, getPtr context], StringName)

proc translatePlural*(self: TranslationServer; message: StringName; pluralMessage: StringName; n: int32; context: StringName = default(StringName)): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "translate_plural", 229954002)
  methodbind.ptrcall(self, [getPtr message, getPtr pluralMessage, getPtr n, getPtr context], StringName)

proc addTranslation*(self: TranslationServer; translation: gdref Translation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "add_translation", 1466479800)
  methodbind.ptrcall(self, [getPtr translation], void)

proc removeTranslation*(self: TranslationServer; translation: gdref Translation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "remove_translation", 1466479800)
  methodbind.ptrcall(self, [getPtr translation], void)

proc getTranslationObject*(self: TranslationServer; locale: String): gdref Translation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_translation_object", 2065240175)
  methodbind.ptrcall(self, [getPtr locale], gdref Translation)

proc hasDomain*(self: TranslationServer; domain: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "has_domain", 2619796661)
  methodbind.ptrcall(self, [getPtr domain], bool)

proc getOrAddDomain*(self: TranslationServer; domain: StringName): gdref TranslationDomain =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_or_add_domain", 397200075)
  methodbind.ptrcall(self, [getPtr domain], gdref TranslationDomain)

proc removeDomain*(self: TranslationServer; domain: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "remove_domain", 3304788590)
  methodbind.ptrcall(self, [getPtr domain], void)

proc clear*(self: TranslationServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getLoadedLocales*(self: TranslationServer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "get_loaded_locales", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc isPseudolocalizationEnabled*(self: TranslationServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "is_pseudolocalization_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPseudolocalizationEnabled*(self: TranslationServer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "set_pseudolocalization_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc reloadPseudolocalization*(self: TranslationServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "reload_pseudolocalization", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pseudolocalize*(self: TranslationServer; message: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationServer, "pseudolocalize", 1965194235)
  methodbind.ptrcall(self, [getPtr message], StringName)

template pseudolocalizationEnabled*(self: TranslationServer): untyped = self.isPseudolocalizationEnabled()
template `pseudolocalizationEnabled=`*(self: TranslationServer; value) = self.setPseudolocalizationEnabled(value)
