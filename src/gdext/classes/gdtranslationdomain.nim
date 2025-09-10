{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted
export TranslationDomain

proc getTranslationObject*(self: TranslationDomain; locale: String): gdref Translation =
  expandMethodBind(className TranslationDomain, "get_translation_object", 606768082)
  var ret: encoded gdref Translation
  methodbind.ptrcall(self, [getPtr locale], addr ret)
  (addr ret).decode_result(gdref Translation)

proc addTranslation*(self: TranslationDomain; translation: gdref Translation): void =
  expandMethodBind(className TranslationDomain, "add_translation", 1466479800)
  methodbind.ptrcall(self, [getPtr translation])

proc removeTranslation*(self: TranslationDomain; translation: gdref Translation): void =
  expandMethodBind(className TranslationDomain, "remove_translation", 1466479800)
  methodbind.ptrcall(self, [getPtr translation])

proc clear*(self: TranslationDomain): void =
  expandMethodBind(className TranslationDomain, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc translate*(self: TranslationDomain; message: StringName; context: StringName = default(StringName)): StringName =
  expandMethodBind(className TranslationDomain, "translate", 1829228469)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr message, getPtr context], addr ret)
  (addr ret).decode_result(StringName)

proc translatePlural*(self: TranslationDomain; message: StringName; messagePlural: StringName; n: int32; context: StringName = default(StringName)): StringName =
  expandMethodBind(className TranslationDomain, "translate_plural", 229954002)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr message, getPtr messagePlural, getPtr n, getPtr context], addr ret)
  (addr ret).decode_result(StringName)

proc isPseudolocalizationEnabled*(self: TranslationDomain): bool =
  expandMethodBind(className TranslationDomain, "is_pseudolocalization_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPseudolocalizationEnabled*(self: TranslationDomain; enabled: bool): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isPseudolocalizationAccentsEnabled*(self: TranslationDomain): bool =
  expandMethodBind(className TranslationDomain, "is_pseudolocalization_accents_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPseudolocalizationAccentsEnabled*(self: TranslationDomain; enabled: bool): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_accents_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isPseudolocalizationDoubleVowelsEnabled*(self: TranslationDomain): bool =
  expandMethodBind(className TranslationDomain, "is_pseudolocalization_double_vowels_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPseudolocalizationDoubleVowelsEnabled*(self: TranslationDomain; enabled: bool): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_double_vowels_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isPseudolocalizationFakeBidiEnabled*(self: TranslationDomain): bool =
  expandMethodBind(className TranslationDomain, "is_pseudolocalization_fake_bidi_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPseudolocalizationFakeBidiEnabled*(self: TranslationDomain; enabled: bool): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_fake_bidi_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isPseudolocalizationOverrideEnabled*(self: TranslationDomain): bool =
  expandMethodBind(className TranslationDomain, "is_pseudolocalization_override_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPseudolocalizationOverrideEnabled*(self: TranslationDomain; enabled: bool): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_override_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isPseudolocalizationSkipPlaceholdersEnabled*(self: TranslationDomain): bool =
  expandMethodBind(className TranslationDomain, "is_pseudolocalization_skip_placeholders_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPseudolocalizationSkipPlaceholdersEnabled*(self: TranslationDomain; enabled: bool): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_skip_placeholders_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getPseudolocalizationExpansionRatio*(self: TranslationDomain): Float =
  expandMethodBind(className TranslationDomain, "get_pseudolocalization_expansion_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPseudolocalizationExpansionRatio*(self: TranslationDomain; ratio: Float): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_expansion_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio])

proc getPseudolocalizationPrefix*(self: TranslationDomain): String =
  expandMethodBind(className TranslationDomain, "get_pseudolocalization_prefix", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setPseudolocalizationPrefix*(self: TranslationDomain; prefix: String): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_prefix", 83702148)
  methodbind.ptrcall(self, [getPtr prefix])

proc getPseudolocalizationSuffix*(self: TranslationDomain): String =
  expandMethodBind(className TranslationDomain, "get_pseudolocalization_suffix", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setPseudolocalizationSuffix*(self: TranslationDomain; suffix: String): void =
  expandMethodBind(className TranslationDomain, "set_pseudolocalization_suffix", 83702148)
  methodbind.ptrcall(self, [getPtr suffix])

proc pseudolocalize*(self: TranslationDomain; message: StringName): StringName =
  expandMethodBind(className TranslationDomain, "pseudolocalize", 1965194235)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr message], addr ret)
  (addr ret).decode_result(StringName)

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
