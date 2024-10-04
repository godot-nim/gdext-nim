{.warning[UnusedImport]:off.}

type Side* {.size: sizeof(clong).} = enum
  sideLeft = 0
  sideTop = 1
  sideRight = 2
  sideBottom = 3

type Corner* {.size: sizeof(clong).} = enum
  cornerTopLeft = 0
  cornerTopRight = 1
  cornerBottomRight = 2
  cornerBottomLeft = 3

type Orientation* {.size: sizeof(clong).} = enum
  horizontal = 0
  vertical = 1

type ClockDirection* {.size: sizeof(clong).} = enum
  clockwise = 0
  counterclockwise = 1

type HorizontalAlignment* {.size: sizeof(clong).} = enum
  horizontalAlignmentLeft = 0
  horizontalAlignmentCenter = 1
  horizontalAlignmentRight = 2
  horizontalAlignmentFill = 3

type VerticalAlignment* {.size: sizeof(clong).} = enum
  verticalAlignmentTop = 0
  verticalAlignmentCenter = 1
  verticalAlignmentBottom = 2
  verticalAlignmentFill = 3

type InlineAlignment* {.size: sizeof(clong).} = enum
  inlineAlignmentTopTo = 0
  inlineAlignmentCenterTo = 1
  inlineAlignmentBottomTo = 2
  inlineAlignmentBaselineTo = 3
  inlineAlignmentToCenter = 4
  inlineAlignmentCenter = 5
  inlineAlignmentToBaseline = 8
  inlineAlignmentToBottom = 12
  inlineAlignmentBottom = 14
template inlineAlignmentToTop*[T: InlineAlignment](_: typedesc[T]): T = T(0)
template inlineAlignmentTop*[T: InlineAlignment](_: typedesc[T]): T = T(0)
template inlineAlignmentImageMask*[T: InlineAlignment](_: typedesc[T]): T = T(3)
template inlineAlignmentTextMask*[T: InlineAlignment](_: typedesc[T]): T = T(12)

type EulerOrder* {.size: sizeof(clong).} = enum
  eulerOrderXyz = 0
  eulerOrderXzy = 1
  eulerOrderYxz = 2
  eulerOrderYzx = 3
  eulerOrderZxy = 4
  eulerOrderZyx = 5

type Key* {.size: sizeof(clong).} = enum
  keyNone = 0
  keySpace = 32
  keyExclam = 33
  keyQuotedbl = 34
  keyNumbersign = 35
  keyDollar = 36
  keyPercent = 37
  keyAmpersand = 38
  keyApostrophe = 39
  keyParenleft = 40
  keyParenright = 41
  keyAsterisk = 42
  keyPlus = 43
  keyComma = 44
  keyMinus = 45
  keyPeriod = 46
  keySlash = 47
  key0 = 48
  key1 = 49
  key2 = 50
  key3 = 51
  key4 = 52
  key5 = 53
  key6 = 54
  key7 = 55
  key8 = 56
  key9 = 57
  keyColon = 58
  keySemicolon = 59
  keyLess = 60
  keyEqual = 61
  keyGreater = 62
  keyQuestion = 63
  keyAt = 64
  keyA = 65
  keyB = 66
  keyC = 67
  keyD = 68
  keyE = 69
  keyF = 70
  keyG = 71
  keyH = 72
  keyI = 73
  keyJ = 74
  keyK = 75
  keyL = 76
  keyM = 77
  keyN = 78
  keyO = 79
  keyP = 80
  keyQ = 81
  keyR = 82
  keyS = 83
  keyT = 84
  keyU = 85
  keyV = 86
  keyW = 87
  keyX = 88
  keyY = 89
  keyZ = 90
  keyBracketleft = 91
  keyBackslash = 92
  keyBracketright = 93
  keyAsciicircum = 94
  keyUnderscore = 95
  keyQuoteleft = 96
  keyBraceleft = 123
  keyBar = 124
  keyBraceright = 125
  keyAsciitilde = 126
  keyYen = 165
  keySection = 167
  keySpecial = 4194304
  keyEscape = 4194305
  keyTab = 4194306
  keyBacktab = 4194307
  keyBackspace = 4194308
  keyEnter = 4194309
  keyKpEnter = 4194310
  keyInsert = 4194311
  keyDelete = 4194312
  keyPause = 4194313
  keyPrint = 4194314
  keySysreq = 4194315
  keyClear = 4194316
  keyHome = 4194317
  keyEnd = 4194318
  keyLeft = 4194319
  keyUp = 4194320
  keyRight = 4194321
  keyDown = 4194322
  keyPageup = 4194323
  keyPagedown = 4194324
  keyShift = 4194325
  keyCtrl = 4194326
  keyMeta = 4194327
  keyAlt = 4194328
  keyCapslock = 4194329
  keyNumlock = 4194330
  keyScrolllock = 4194331
  keyF1 = 4194332
  keyF2 = 4194333
  keyF3 = 4194334
  keyF4 = 4194335
  keyF5 = 4194336
  keyF6 = 4194337
  keyF7 = 4194338
  keyF8 = 4194339
  keyF9 = 4194340
  keyF10 = 4194341
  keyF11 = 4194342
  keyF12 = 4194343
  keyF13 = 4194344
  keyF14 = 4194345
  keyF15 = 4194346
  keyF16 = 4194347
  keyF17 = 4194348
  keyF18 = 4194349
  keyF19 = 4194350
  keyF20 = 4194351
  keyF21 = 4194352
  keyF22 = 4194353
  keyF23 = 4194354
  keyF24 = 4194355
  keyF25 = 4194356
  keyF26 = 4194357
  keyF27 = 4194358
  keyF28 = 4194359
  keyF29 = 4194360
  keyF30 = 4194361
  keyF31 = 4194362
  keyF32 = 4194363
  keyF33 = 4194364
  keyF34 = 4194365
  keyF35 = 4194366
  keyMenu = 4194370
  keyHyper = 4194371
  keyHelp = 4194373
  keyBack = 4194376
  keyForward = 4194377
  keyStop = 4194378
  keyRefresh = 4194379
  keyVolumedown = 4194380
  keyVolumemute = 4194381
  keyVolumeup = 4194382
  keyMediaplay = 4194388
  keyMediastop = 4194389
  keyMediaprevious = 4194390
  keyMedianext = 4194391
  keyMediarecord = 4194392
  keyHomepage = 4194393
  keyFavorites = 4194394
  keySearch = 4194395
  keyStandby = 4194396
  keyOpenurl = 4194397
  keyLaunchmail = 4194398
  keyLaunchmedia = 4194399
  keyLaunch0 = 4194400
  keyLaunch1 = 4194401
  keyLaunch2 = 4194402
  keyLaunch3 = 4194403
  keyLaunch4 = 4194404
  keyLaunch5 = 4194405
  keyLaunch6 = 4194406
  keyLaunch7 = 4194407
  keyLaunch8 = 4194408
  keyLaunch9 = 4194409
  keyLauncha = 4194410
  keyLaunchb = 4194411
  keyLaunchc = 4194412
  keyLaunchd = 4194413
  keyLaunche = 4194414
  keyLaunchf = 4194415
  keyGlobe = 4194416
  keyKeyboard = 4194417
  keyJisEisu = 4194418
  keyJisKana = 4194419
  keyKpMultiply = 4194433
  keyKpDivide = 4194434
  keyKpSubtract = 4194435
  keyKpPeriod = 4194436
  keyKpAdd = 4194437
  keyKp0 = 4194438
  keyKp1 = 4194439
  keyKp2 = 4194440
  keyKp3 = 4194441
  keyKp4 = 4194442
  keyKp5 = 4194443
  keyKp6 = 4194444
  keyKp7 = 4194445
  keyKp8 = 4194446
  keyKp9 = 4194447
  keyUnknown = 8388607

type KeyModifierMask* = enum
  `--Padding-Min--` = 0 # To align size-of set[KeyModifierMask] to size-of Int.
  keyCodeMask = 23
  keyMaskCmdOrCtrl = 24
  keyMaskShift = 25
  keyMaskAlt = 26
  keyMaskMeta = 27
  keyMaskCtrl = 28
  keyMaskKpad = 29
  keyMaskGroupSwitch = 30
  `--Padding-Max--` = 63 # To align size-of set[KeyModifierMask] to size-of Int.
template keyModifierMask*[T: KeyModifierMask](_: typedesc[T]): set[T] = cast[set[T]](532676608)

type KeyLocation* {.size: sizeof(clong).} = enum
  keyLocationUnspecified = 0
  keyLocationLeft = 1
  keyLocationRight = 2

type MouseButton* {.size: sizeof(clong).} = enum
  mouseButtonNone = 0
  mouseButtonLeft = 1
  mouseButtonRight = 2
  mouseButtonMiddle = 3
  mouseButtonWheelUp = 4
  mouseButtonWheelDown = 5
  mouseButtonWheelLeft = 6
  mouseButtonWheelRight = 7
  mouseButtonXbutton1 = 8
  mouseButtonXbutton2 = 9

type MouseButtonMask* = enum
  mouseButtonMaskLeft = 0
  mouseButtonMaskRight = 1
  mouseButtonMaskMiddle = 2
  mouseButtonMaskMbXbutton1 = 7
  mouseButtonMaskMbXbutton2 = 8
  `--Padding-Max--` = 63 # To align size-of set[MouseButtonMask] to size-of Int.

type JoyButton* {.size: sizeof(clong).} = enum
  joyButtonInvalid = -1
  joyButtonA = 0
  joyButtonB = 1
  joyButtonX = 2
  joyButtonY = 3
  joyButtonBack = 4
  joyButtonGuide = 5
  joyButtonStart = 6
  joyButtonLeftStick = 7
  joyButtonRightStick = 8
  joyButtonLeftShoulder = 9
  joyButtonRightShoulder = 10
  joyButtonDpadUp = 11
  joyButtonDpadDown = 12
  joyButtonDpadLeft = 13
  joyButtonDpadRight = 14
  joyButtonMisc1 = 15
  joyButtonPaddle1 = 16
  joyButtonPaddle2 = 17
  joyButtonPaddle3 = 18
  joyButtonPaddle4 = 19
  joyButtonTouchpad = 20
  joyButtonSdlMax = 21
  joyButtonMax = 128

type JoyAxis* {.size: sizeof(clong).} = enum
  joyAxisInvalid = -1
  joyAxisLeftX = 0
  joyAxisLeftY = 1
  joyAxisRightX = 2
  joyAxisRightY = 3
  joyAxisTriggerLeft = 4
  joyAxisTriggerRight = 5
  joyAxisSdlMax = 6
  joyAxisMax = 10

type MidiMessage* {.size: sizeof(clong).} = enum
  midiMessageNone = 0
  midiMessageNoteOff = 8
  midiMessageNoteOn = 9
  midiMessageAftertouch = 10
  midiMessageControlChange = 11
  midiMessageProgramChange = 12
  midiMessageChannelPressure = 13
  midiMessagePitchBend = 14
  midiMessageSystemExclusive = 240
  midiMessageQuarterFrame = 241
  midiMessageSongPositionPointer = 242
  midiMessageSongSelect = 243
  midiMessageTuneRequest = 246
  midiMessageTimingClock = 248
  midiMessageStart = 250
  midiMessageContinue = 251
  midiMessageStop = 252
  midiMessageActiveSensing = 254
  midiMessageSystemReset = 255

type Error* {.size: sizeof(clong).} = enum
  ok = 0
  failed = 1
  errUnavailable = 2
  errUnconfigured = 3
  errUnauthorized = 4
  errParameterRangeError = 5
  errOutOfMemory = 6
  errFileNotFound = 7
  errFileBadDrive = 8
  errFileBadPath = 9
  errFileNoPermission = 10
  errFileAlreadyInUse = 11
  errFileCantOpen = 12
  errFileCantWrite = 13
  errFileCantRead = 14
  errFileUnrecognized = 15
  errFileCorrupt = 16
  errFileMissingDependencies = 17
  errFileEof = 18
  errCantOpen = 19
  errCantCreate = 20
  errQueryFailed = 21
  errAlreadyInUse = 22
  errLocked = 23
  errTimeout = 24
  errCantConnect = 25
  errCantResolve = 26
  errConnectionError = 27
  errCantAcquireResource = 28
  errCantFork = 29
  errInvalidData = 30
  errInvalidParameter = 31
  errAlreadyExists = 32
  errDoesNotExist = 33
  errDatabaseCantRead = 34
  errDatabaseCantWrite = 35
  errCompilationFailed = 36
  errMethodNotFound = 37
  errLinkFailed = 38
  errScriptFailed = 39
  errCyclicLink = 40
  errInvalidDeclaration = 41
  errDuplicateSymbol = 42
  errParseError = 43
  errBusy = 44
  errSkip = 45
  errHelp = 46
  errBug = 47
  errPrinterOnFire = 48

type PropertyHint* {.size: sizeof(clong).} = enum
  propertyHintNone = 0
  propertyHintRange = 1
  propertyHintEnum = 2
  propertyHintEnumSuggestion = 3
  propertyHintExpEasing = 4
  propertyHintLink = 5
  propertyHintFlags = 6
  propertyHintLayers2DRender = 7
  propertyHintLayers2DPhysics = 8
  propertyHintLayers2DNavigation = 9
  propertyHintLayers3DRender = 10
  propertyHintLayers3DPhysics = 11
  propertyHintLayers3DNavigation = 12
  propertyHintFile = 13
  propertyHintDir = 14
  propertyHintGlobalFile = 15
  propertyHintGlobalDir = 16
  propertyHintResourceType = 17
  propertyHintMultilineText = 18
  propertyHintExpression = 19
  propertyHintPlaceholderText = 20
  propertyHintColorNoAlpha = 21
  propertyHintObjectId = 22
  propertyHintTypeString = 23
  propertyHintNodePathToEditedNode = 24
  propertyHintObjectTooBig = 25
  propertyHintNodePathValidTypes = 26
  propertyHintSaveFile = 27
  propertyHintGlobalSaveFile = 28
  propertyHintIntIsObjectid = 29
  propertyHintIntIsPointer = 30
  propertyHintArrayType = 31
  propertyHintLocaleId = 32
  propertyHintLocalizableString = 33
  propertyHintNodeType = 34
  propertyHintHideQuaternionEdit = 35
  propertyHintPassword = 36
  propertyHintLayersAvoidance = 37
  propertyHintMax = 38

type PropertyUsageFlags* = enum
  # propertyUsageNone = 0
  `--Padding-Min--` = 0 # To align size-of set[PropertyUsageFlags] to size-of Int.
  propertyUsageStorage = 1
  propertyUsageEditor = 2
  propertyUsageInternal = 3
  propertyUsageCheckable = 4
  propertyUsageChecked = 5
  propertyUsageGroup = 6
  propertyUsageCategory = 7
  propertyUsageSubgroup = 8
  propertyUsageClassIsBitfield = 9
  propertyUsageNoInstanceState = 10
  propertyUsageRestartIfChanged = 11
  propertyUsageScriptVariable = 12
  propertyUsageStoreIfNull = 13
  propertyUsageUpdateAllIfModified = 14
  propertyUsageScriptDefaultValue = 15
  propertyUsageClassIsEnum = 16
  propertyUsageNilIsVariant = 17
  propertyUsageArray = 18
  propertyUsageAlwaysDuplicate = 19
  propertyUsageNeverDuplicate = 20
  propertyUsageHighEndGfx = 21
  propertyUsageNodePathFromSceneRoot = 22
  propertyUsageResourceNotPersistent = 23
  propertyUsageKeyingIncrements = 24
  propertyUsageDeferredSetResource = 25
  propertyUsageEditorInstantiateObject = 26
  propertyUsageEditorBasicSetting = 27
  propertyUsageReadOnly = 28
  propertyUsageSecret = 29
  `--Padding-Max--` = 63 # To align size-of set[PropertyUsageFlags] to size-of Int.
template propertyUsageNoEditor*[T: PropertyUsageFlags](_: typedesc[T]): T = T(1)
template propertyUsageDefault*[T: PropertyUsageFlags](_: typedesc[T]): set[T] = cast[set[T]](6)

type MethodFlags* = enum
  methodFlagNormal = 0
  methodFlagEditor = 1
  methodFlagConst = 2
  methodFlagVirtual = 3
  methodFlagVararg = 4
  methodFlagStatic = 5
  methodFlagObjectCore = 6
  `--Padding-Max--` = 63 # To align size-of set[MethodFlags] to size-of Int.
template methodFlagsDefault*[T: MethodFlags](_: typedesc[T]): T = T(0)

type Variant_Operator* {.size: sizeof(clong).} = enum
  opEqual = 0
  opNotEqual = 1
  opLess = 2
  opLessEqual = 3
  opGreater = 4
  opGreaterEqual = 5
  opAdd = 6
  opSubtract = 7
  opMultiply = 8
  opDivide = 9
  opNegate = 10
  opPositive = 11
  opModule = 12
  opPower = 13
  opShiftLeft = 14
  opShiftRight = 15
  opBitAnd = 16
  opBitOr = 17
  opBitXor = 18
  opBitNegate = 19
  opAnd = 20
  opOr = 21
  opXor = 22
  opNot = 23
  opIn = 24
  opMax = 25