{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(TranslationDomain, RefCounted)

proc getTranslationObject*(self: TranslationDomain; locale: String): gdref Translation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "get_translation_object", 606768082)
  methodbind.ptrcall(self, [getPtr locale], gdref Translation)

proc addTranslation*(self: TranslationDomain; translation: gdref Translation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "add_translation", 1466479800)
  methodbind.ptrcall(self, [getPtr translation], void)

proc removeTranslation*(self: TranslationDomain; translation: gdref Translation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "remove_translation", 1466479800)
  methodbind.ptrcall(self, [getPtr translation], void)

proc clear*(self: TranslationDomain): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc translate*(self: TranslationDomain; message: StringName; context: StringName = default(StringName)): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "translate", 1829228469)
  methodbind.ptrcall(self, [getPtr message, getPtr context], StringName)

proc translatePlural*(self: TranslationDomain; message: StringName; messagePlural: StringName; n: int32; context: StringName = default(StringName)): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "translate_plural", 229954002)
  methodbind.ptrcall(self, [getPtr message, getPtr messagePlural, getPtr n, getPtr context], StringName)

proc getLocaleOverride*(self: TranslationDomain): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "get_locale_override", 201670096)
  methodbind.ptrcall(self, [], String)

proc setLocaleOverride*(self: TranslationDomain; locale: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_locale_override", 83702148)
  methodbind.ptrcall(self, [getPtr locale], void)

proc isEnabled*(self: TranslationDomain): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEnabled*(self: TranslationDomain; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPseudolocalizationEnabled*(self: TranslationDomain): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "is_pseudolocalization_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPseudolocalizationEnabled*(self: TranslationDomain; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPseudolocalizationAccentsEnabled*(self: TranslationDomain): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "is_pseudolocalization_accents_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPseudolocalizationAccentsEnabled*(self: TranslationDomain; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_accents_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPseudolocalizationDoubleVowelsEnabled*(self: TranslationDomain): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "is_pseudolocalization_double_vowels_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPseudolocalizationDoubleVowelsEnabled*(self: TranslationDomain; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_double_vowels_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPseudolocalizationFakeBidiEnabled*(self: TranslationDomain): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "is_pseudolocalization_fake_bidi_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPseudolocalizationFakeBidiEnabled*(self: TranslationDomain; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_fake_bidi_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPseudolocalizationOverrideEnabled*(self: TranslationDomain): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "is_pseudolocalization_override_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPseudolocalizationOverrideEnabled*(self: TranslationDomain; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_override_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPseudolocalizationSkipPlaceholdersEnabled*(self: TranslationDomain): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "is_pseudolocalization_skip_placeholders_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPseudolocalizationSkipPlaceholdersEnabled*(self: TranslationDomain; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_skip_placeholders_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getPseudolocalizationExpansionRatio*(self: TranslationDomain): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "get_pseudolocalization_expansion_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPseudolocalizationExpansionRatio*(self: TranslationDomain; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_expansion_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getPseudolocalizationPrefix*(self: TranslationDomain): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "get_pseudolocalization_prefix", 201670096)
  methodbind.ptrcall(self, [], String)

proc setPseudolocalizationPrefix*(self: TranslationDomain; prefix: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_prefix", 83702148)
  methodbind.ptrcall(self, [getPtr prefix], void)

proc getPseudolocalizationSuffix*(self: TranslationDomain): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "get_pseudolocalization_suffix", 201670096)
  methodbind.ptrcall(self, [], String)

proc setPseudolocalizationSuffix*(self: TranslationDomain; suffix: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "set_pseudolocalization_suffix", 83702148)
  methodbind.ptrcall(self, [getPtr suffix], void)

proc pseudolocalize*(self: TranslationDomain; message: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TranslationDomain, "pseudolocalize", 1965194235)
  methodbind.ptrcall(self, [getPtr message], StringName)

template enabled*(self: TranslationDomain): untyped = self.isEnabled()
template `enabled=`*(self: TranslationDomain; value) = self.setEnabled(value)

template pseudolocalizationEnabled*(self: TranslationDomain): untyped = self.isPseudolocalizationEnabled()
template `pseudolocalizationEnabled=`*(self: TranslationDomain; value) = self.setPseudolocalizationEnabled(value)

template pseudolocalizationAccentsEnabled*(self: TranslationDomain): untyped = self.isPseudolocalizationAccentsEnabled()
template `pseudolocalizationAccentsEnabled=`*(self: TranslationDomain; value) = self.setPseudolocalizationAccentsEnabled(value)

template pseudolocalizationDoubleVowelsEnabled*(self: TranslationDomain): untyped = self.isPseudolocalizationDoubleVowelsEnabled()
template `pseudolocalizationDoubleVowelsEnabled=`*(self: TranslationDomain; value) = self.setPseudolocalizationDoubleVowelsEnabled(value)

template pseudolocalizationFakeBidiEnabled*(self: TranslationDomain): untyped = self.isPseudolocalizationFakeBidiEnabled()
template `pseudolocalizationFakeBidiEnabled=`*(self: TranslationDomain; value) = self.setPseudolocalizationFakeBidiEnabled(value)

template pseudolocalizationOverrideEnabled*(self: TranslationDomain): untyped = self.isPseudolocalizationOverrideEnabled()
template `pseudolocalizationOverrideEnabled=`*(self: TranslationDomain; value) = self.setPseudolocalizationOverrideEnabled(value)

template pseudolocalizationSkipPlaceholdersEnabled*(self: TranslationDomain): untyped = self.isPseudolocalizationSkipPlaceholdersEnabled()
template `pseudolocalizationSkipPlaceholdersEnabled=`*(self: TranslationDomain; value) = self.setPseudolocalizationSkipPlaceholdersEnabled(value)

template pseudolocalizationExpansionRatio*(self: TranslationDomain): untyped = self.getPseudolocalizationExpansionRatio()
template `pseudolocalizationExpansionRatio=`*(self: TranslationDomain; value) = self.setPseudolocalizationExpansionRatio(value)

template pseudolocalizationPrefix*(self: TranslationDomain): untyped = self.getPseudolocalizationPrefix()
template `pseudolocalizationPrefix=`*(self: TranslationDomain; value) = self.setPseudolocalizationPrefix(value)

template pseudolocalizationSuffix*(self: TranslationDomain): untyped = self.getPseudolocalizationSuffix()
template `pseudolocalizationSuffix=`*(self: TranslationDomain; value) = self.setPseudolocalizationSuffix(value)
