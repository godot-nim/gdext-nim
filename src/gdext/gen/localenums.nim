{.warning[UnusedImport]:off.}

type Vector2_Axis* {.size: sizeof(clong).} = enum
  axisX = 0
  axisY = 1

type Vector2i_Axis* {.size: sizeof(clong).} = enum
  axisX = 0
  axisY = 1

type Vector3_Axis* {.size: sizeof(clong).} = enum
  axisX = 0
  axisY = 1
  axisZ = 2

type Vector3i_Axis* {.size: sizeof(clong).} = enum
  axisX = 0
  axisY = 1
  axisZ = 2

type Vector4_Axis* {.size: sizeof(clong).} = enum
  axisX = 0
  axisY = 1
  axisZ = 2
  axisW = 3

type Vector4i_Axis* {.size: sizeof(clong).} = enum
  axisX = 0
  axisY = 1
  axisZ = 2
  axisW = 3

type Projection_Planes* {.size: sizeof(clong).} = enum
  planeNear = 0
  planeFar = 1
  planeLeft = 2
  planeTop = 3
  planeRight = 4
  planeBottom = 5

type AesContext_Mode* {.size: sizeof(clong).} = enum
  modeEcbEncrypt = 0
  modeEcbDecrypt = 1
  modeCbcEncrypt = 2
  modeCbcDecrypt = 3
  modeMax = 4

type AStarGrid2D_Heuristic* {.size: sizeof(clong).} = enum
  heuristicEuclidean = 0
  heuristicManhattan = 1
  heuristicOctile = 2
  heuristicChebyshev = 3
  heuristicMax = 4

type AStarGrid2D_DiagonalMode* {.size: sizeof(clong).} = enum
  diagonalModeAlways = 0
  diagonalModeNever = 1
  diagonalModeAtLeastOneWalkable = 2
  diagonalModeOnlyIfNoObstacles = 3
  diagonalModeMax = 4

type AStarGrid2D_CellShape* {.size: sizeof(clong).} = enum
  cellShapeSquare = 0
  cellShapeIsometricRight = 1
  cellShapeIsometricDown = 2
  cellShapeMax = 3

type Animation_TrackType* {.size: sizeof(clong).} = enum
  typeValue = 0
  typePosition3D = 1
  typeRotation3D = 2
  typeScale3D = 3
  typeBlendShape = 4
  typeMethod = 5
  typeBezier = 6
  typeAudio = 7
  typeAnimation = 8

type Animation_InterpolationType* {.size: sizeof(clong).} = enum
  interpolationNearest = 0
  interpolationLinear = 1
  interpolationCubic = 2
  interpolationLinearAngle = 3
  interpolationCubicAngle = 4

type Animation_UpdateMode* {.size: sizeof(clong).} = enum
  updateContinuous = 0
  updateDiscrete = 1
  updateCapture = 2

type Animation_LoopMode* {.size: sizeof(clong).} = enum
  loopNone = 0
  loopLinear = 1
  loopPingpong = 2

type Animation_LoopedFlag* {.size: sizeof(clong).} = enum
  loopedFlagNone = 0
  loopedFlagEnd = 1
  loopedFlagStart = 2

type Animation_FindMode* {.size: sizeof(clong).} = enum
  findModeNearest = 0
  findModeApprox = 1
  findModeExact = 2

type AnimationMixer_AnimationCallbackModeProcess* {.size: sizeof(clong).} = enum
  animationCallbackModeProcessPhysics = 0
  animationCallbackModeProcessIdle = 1
  animationCallbackModeProcessManual = 2

type AnimationMixer_AnimationCallbackModeMethod* {.size: sizeof(clong).} = enum
  animationCallbackModeMethodDeferred = 0
  animationCallbackModeMethodImmediate = 1

type AnimationMixer_AnimationCallbackModeDiscrete* {.size: sizeof(clong).} = enum
  animationCallbackModeDiscreteDominant = 0
  animationCallbackModeDiscreteRecessive = 1
  animationCallbackModeDiscreteForceContinuous = 2

type AnimationNode_FilterAction* {.size: sizeof(clong).} = enum
  filterIgnore = 0
  filterPass = 1
  filterStop = 2
  filterBlend = 3

type AnimationNodeAnimation_PlayMode* {.size: sizeof(clong).} = enum
  playModeForward = 0
  playModeBackward = 1

type AnimationNodeBlendSpace1D_BlendMode* {.size: sizeof(clong).} = enum
  blendModeInterpolated = 0
  blendModeDiscrete = 1
  blendModeDiscreteCarry = 2

type AnimationNodeBlendSpace2D_BlendMode* {.size: sizeof(clong).} = enum
  blendModeInterpolated = 0
  blendModeDiscrete = 1
  blendModeDiscreteCarry = 2

type AnimationNodeOneShot_OneShotRequest* {.size: sizeof(clong).} = enum
  oneShotRequestNone = 0
  oneShotRequestFire = 1
  oneShotRequestAbort = 2
  oneShotRequestFadeOut = 3

type AnimationNodeOneShot_MixMode* {.size: sizeof(clong).} = enum
  mixModeBlend = 0
  mixModeAdd = 1

type AnimationNodeStateMachine_StateMachineType* {.size: sizeof(clong).} = enum
  stateMachineTypeRoot = 0
  stateMachineTypeNested = 1
  stateMachineTypeGrouped = 2

type AnimationNodeStateMachineTransition_SwitchMode* {.size: sizeof(clong).} = enum
  switchModeImmediate = 0
  switchModeSync = 1
  switchModeAtEnd = 2

type AnimationNodeStateMachineTransition_AdvanceMode* {.size: sizeof(clong).} = enum
  advanceModeDisabled = 0
  advanceModeEnabled = 1
  advanceModeAuto = 2

type AnimationPlayer_AnimationProcessCallback* {.size: sizeof(clong).} = enum
  animationProcessPhysics = 0
  animationProcessIdle = 1
  animationProcessManual = 2

type AnimationPlayer_AnimationMethodCallMode* {.size: sizeof(clong).} = enum
  animationMethodCallDeferred = 0
  animationMethodCallImmediate = 1

type AnimationTree_AnimationProcessCallback* {.size: sizeof(clong).} = enum
  animationProcessPhysics = 0
  animationProcessIdle = 1
  animationProcessManual = 2

type Area2D_SpaceOverride* {.size: sizeof(clong).} = enum
  spaceOverrideDisabled = 0
  spaceOverrideCombine = 1
  spaceOverrideCombineReplace = 2
  spaceOverrideReplace = 3
  spaceOverrideReplaceCombine = 4

type Area3D_SpaceOverride* {.size: sizeof(clong).} = enum
  spaceOverrideDisabled = 0
  spaceOverrideCombine = 1
  spaceOverrideCombineReplace = 2
  spaceOverrideReplace = 3
  spaceOverrideReplaceCombine = 4

type AspectRatioContainer_StretchMode* {.size: sizeof(clong).} = enum
  stretchWidthControlsHeight = 0
  stretchHeightControlsWidth = 1
  stretchFit = 2
  stretchCover = 3

type AspectRatioContainer_AlignmentMode* {.size: sizeof(clong).} = enum
  alignmentBegin = 0
  alignmentCenter = 1
  alignmentEnd = 2

type AudioEffectDistortion_Mode* {.size: sizeof(clong).} = enum
  modeClip = 0
  modeAtan = 1
  modeLofi = 2
  modeOverdrive = 3
  modeWaveshape = 4

type AudioEffectFilter_FilterDb* {.size: sizeof(clong).} = enum
  filter6Db = 0
  filter12Db = 1
  filter18Db = 2
  filter24Db = 3

type AudioEffectPitchShift_FftSize* {.size: sizeof(clong).} = enum
  fftSize256 = 0
  fftSize512 = 1
  fftSize1024 = 2
  fftSize2048 = 3
  fftSize4096 = 4
  fftSizeMax = 5

type AudioEffectSpectrumAnalyzer_FftSize* {.size: sizeof(clong).} = enum
  fftSize256 = 0
  fftSize512 = 1
  fftSize1024 = 2
  fftSize2048 = 3
  fftSize4096 = 4
  fftSizeMax = 5

type AudioEffectSpectrumAnalyzerInstance_MagnitudeMode* {.size: sizeof(clong).} = enum
  magnitudeAverage = 0
  magnitudeMax = 1

type AudioServer_SpeakerMode* {.size: sizeof(clong).} = enum
  speakerModeStereo = 0
  speakerSurround31 = 1
  speakerSurround51 = 2
  speakerSurround71 = 3

type AudioServer_PlaybackType* {.size: sizeof(clong).} = enum
  playbackTypeDefault = 0
  playbackTypeStream = 1
  playbackTypeSample = 2
  playbackTypeMax = 3

type AudioStreamInteractive_TransitionFromTime* {.size: sizeof(clong).} = enum
  transitionFromTimeImmediate = 0
  transitionFromTimeNextBeat = 1
  transitionFromTimeNextBar = 2
  transitionFromTimeEnd = 3

type AudioStreamInteractive_TransitionToTime* {.size: sizeof(clong).} = enum
  transitionToTimeSamePosition = 0
  transitionToTimeStart = 1

type AudioStreamInteractive_FadeMode* {.size: sizeof(clong).} = enum
  fadeDisabled = 0
  fadeIn = 1
  fadeOut = 2
  fadeCross = 3
  fadeAutomatic = 4

type AudioStreamInteractive_AutoAdvanceMode* {.size: sizeof(clong).} = enum
  autoAdvanceDisabled = 0
  autoAdvanceEnabled = 1
  autoAdvanceReturnToHold = 2

type AudioStreamPlayer_MixTarget* {.size: sizeof(clong).} = enum
  mixTargetStereo = 0
  mixTargetSurround = 1
  mixTargetCenter = 2

type AudioStreamPlayer3D_AttenuationModel* {.size: sizeof(clong).} = enum
  attenuationInverseDistance = 0
  attenuationInverseSquareDistance = 1
  attenuationLogarithmic = 2
  attenuationDisabled = 3

type AudioStreamPlayer3D_DopplerTracking* {.size: sizeof(clong).} = enum
  dopplerTrackingDisabled = 0
  dopplerTrackingIdleStep = 1
  dopplerTrackingPhysicsStep = 2

type AudioStreamRandomizer_PlaybackMode* {.size: sizeof(clong).} = enum
  playbackRandomNoRepeats = 0
  playbackRandom = 1
  playbackSequential = 2

type AudioStreamWav_Format* {.size: sizeof(clong).} = enum
  format8Bits = 0
  format16Bits = 1
  formatImaAdpcm = 2
  formatQoa = 3

type AudioStreamWav_LoopMode* {.size: sizeof(clong).} = enum
  loopDisabled = 0
  loopForward = 1
  loopPingpong = 2
  loopBackward = 3

type BackBufferCopy_CopyMode* {.size: sizeof(clong).} = enum
  copyModeDisabled = 0
  copyModeRect = 1
  copyModeViewport = 2

type BaseButton_DrawMode* {.size: sizeof(clong).} = enum
  drawNormal = 0
  drawPressed = 1
  drawHover = 2
  drawDisabled = 3
  drawHoverPressed = 4

type BaseButton_ActionMode* {.size: sizeof(clong).} = enum
  actionModeButtonPress = 0
  actionModeButtonRelease = 1

type BaseMaterial3D_TextureParam* {.size: sizeof(clong).} = enum
  textureAlbedo = 0
  textureMetallic = 1
  textureRoughness = 2
  textureEmission = 3
  textureNormal = 4
  textureRim = 5
  textureClearcoat = 6
  textureFlowmap = 7
  textureAmbientOcclusion = 8
  textureHeightmap = 9
  textureSubsurfaceScattering = 10
  textureSubsurfaceTransmittance = 11
  textureBacklight = 12
  textureRefraction = 13
  textureDetailMask = 14
  textureDetailAlbedo = 15
  textureDetailNormal = 16
  textureOrm = 17
  textureMax = 18

type BaseMaterial3D_TextureFilter* {.size: sizeof(clong).} = enum
  textureFilterNearest = 0
  textureFilterLinear = 1
  textureFilterNearestWithMipmaps = 2
  textureFilterLinearWithMipmaps = 3
  textureFilterNearestWithMipmapsAnisotropic = 4
  textureFilterLinearWithMipmapsAnisotropic = 5
  textureFilterMax = 6

type BaseMaterial3D_DetailUv* {.size: sizeof(clong).} = enum
  detailUv1 = 0
  detailUv2 = 1

type BaseMaterial3D_Transparency* {.size: sizeof(clong).} = enum
  transparencyDisabled = 0
  transparencyAlpha = 1
  transparencyAlphaScissor = 2
  transparencyAlphaHash = 3
  transparencyAlphaDepthPrePass = 4
  transparencyMax = 5

type BaseMaterial3D_ShadingMode* {.size: sizeof(clong).} = enum
  shadingModeUnshaded = 0
  shadingModePerPixel = 1
  shadingModePerVertex = 2
  shadingModeMax = 3

type BaseMaterial3D_Feature* {.size: sizeof(clong).} = enum
  featureEmission = 0
  featureNormalMapping = 1
  featureRim = 2
  featureClearcoat = 3
  featureAnisotropy = 4
  featureAmbientOcclusion = 5
  featureHeightMapping = 6
  featureSubsurfaceScattering = 7
  featureSubsurfaceTransmittance = 8
  featureBacklight = 9
  featureRefraction = 10
  featureDetail = 11
  featureMax = 12

type BaseMaterial3D_BlendMode* {.size: sizeof(clong).} = enum
  blendModeMix = 0
  blendModeAdd = 1
  blendModeSub = 2
  blendModeMul = 3
  blendModePremultAlpha = 4

type BaseMaterial3D_AlphaAntiAliasing* {.size: sizeof(clong).} = enum
  alphaAntialiasingOff = 0
  alphaAntialiasingAlphaToCoverage = 1
  alphaAntialiasingAlphaToCoverageAndToOne = 2

type BaseMaterial3D_DepthDrawMode* {.size: sizeof(clong).} = enum
  depthDrawOpaqueOnly = 0
  depthDrawAlways = 1
  depthDrawDisabled = 2

type BaseMaterial3D_CullMode* {.size: sizeof(clong).} = enum
  cullBack = 0
  cullFront = 1
  cullDisabled = 2

type BaseMaterial3D_Flags* {.size: sizeof(clong).} = enum
  flagDisableDepthTest = 0
  flagAlbedoFromVertexColor = 1
  flagSrgbVertexColor = 2
  flagUsePointSize = 3
  flagFixedSize = 4
  flagBillboardKeepScale = 5
  flagUv1UseTriplanar = 6
  flagUv2UseTriplanar = 7
  flagUv1UseWorldTriplanar = 8
  flagUv2UseWorldTriplanar = 9
  flagAoOnUv2 = 10
  flagEmissionOnUv2 = 11
  flagAlbedoTextureForceSrgb = 12
  flagDontReceiveShadows = 13
  flagDisableAmbientLight = 14
  flagUseShadowToOpacity = 15
  flagUseTextureRepeat = 16
  flagInvertHeightmap = 17
  flagSubsurfaceModeSkin = 18
  flagParticleTrailsMode = 19
  flagAlbedoTextureMsdf = 20
  flagDisableFog = 21
  flagMax = 22

type BaseMaterial3D_DiffuseMode* {.size: sizeof(clong).} = enum
  diffuseBurley = 0
  diffuseLambert = 1
  diffuseLambertWrap = 2
  diffuseToon = 3

type BaseMaterial3D_SpecularMode* {.size: sizeof(clong).} = enum
  specularSchlickGgx = 0
  specularToon = 1
  specularDisabled = 2

type BaseMaterial3D_BillboardMode* {.size: sizeof(clong).} = enum
  billboardDisabled = 0
  billboardEnabled = 1
  billboardFixedY = 2
  billboardParticles = 3

type BaseMaterial3D_TextureChannel* {.size: sizeof(clong).} = enum
  textureChannelRed = 0
  textureChannelGreen = 1
  textureChannelBlue = 2
  textureChannelAlpha = 3
  textureChannelGrayscale = 4

type BaseMaterial3D_EmissionOperator* {.size: sizeof(clong).} = enum
  emissionOpAdd = 0
  emissionOpMultiply = 1

type BaseMaterial3D_DistanceFadeMode* {.size: sizeof(clong).} = enum
  distanceFadeDisabled = 0
  distanceFadePixelAlpha = 1
  distanceFadePixelDither = 2
  distanceFadeObjectDither = 3

type BoxContainer_AlignmentMode* {.size: sizeof(clong).} = enum
  alignmentBegin = 0
  alignmentCenter = 1
  alignmentEnd = 2

type CpuParticles2D_DrawOrder* {.size: sizeof(clong).} = enum
  drawOrderIndex = 0
  drawOrderLifetime = 1

type CpuParticles2D_Parameter* {.size: sizeof(clong).} = enum
  paramInitialLinearVelocity = 0
  paramAngularVelocity = 1
  paramOrbitVelocity = 2
  paramLinearAccel = 3
  paramRadialAccel = 4
  paramTangentialAccel = 5
  paramDamping = 6
  paramAngle = 7
  paramScale = 8
  paramHueVariation = 9
  paramAnimSpeed = 10
  paramAnimOffset = 11
  paramMax = 12

type CpuParticles2D_ParticleFlags* {.size: sizeof(clong).} = enum
  particleFlagAlignYToVelocity = 0
  particleFlagRotateY = 1
  particleFlagDisableZ = 2
  particleFlagMax = 3

type CpuParticles2D_EmissionShape* {.size: sizeof(clong).} = enum
  emissionShapePoint = 0
  emissionShapeSphere = 1
  emissionShapeSphereSurface = 2
  emissionShapeRectangle = 3
  emissionShapePoints = 4
  emissionShapeDirectedPoints = 5
  emissionShapeMax = 6

type CpuParticles3D_DrawOrder* {.size: sizeof(clong).} = enum
  drawOrderIndex = 0
  drawOrderLifetime = 1
  drawOrderViewDepth = 2

type CpuParticles3D_Parameter* {.size: sizeof(clong).} = enum
  paramInitialLinearVelocity = 0
  paramAngularVelocity = 1
  paramOrbitVelocity = 2
  paramLinearAccel = 3
  paramRadialAccel = 4
  paramTangentialAccel = 5
  paramDamping = 6
  paramAngle = 7
  paramScale = 8
  paramHueVariation = 9
  paramAnimSpeed = 10
  paramAnimOffset = 11
  paramMax = 12

type CpuParticles3D_ParticleFlags* {.size: sizeof(clong).} = enum
  particleFlagAlignYToVelocity = 0
  particleFlagRotateY = 1
  particleFlagDisableZ = 2
  particleFlagMax = 3

type CpuParticles3D_EmissionShape* {.size: sizeof(clong).} = enum
  emissionShapePoint = 0
  emissionShapeSphere = 1
  emissionShapeSphereSurface = 2
  emissionShapeBox = 3
  emissionShapePoints = 4
  emissionShapeDirectedPoints = 5
  emissionShapeRing = 6
  emissionShapeMax = 7

type CsgPolygon3D_Mode* {.size: sizeof(clong).} = enum
  modeDepth = 0
  modeSpin = 1
  modePath = 2

type CsgPolygon3D_PathRotation* {.size: sizeof(clong).} = enum
  pathRotationPolygon = 0
  pathRotationPath = 1
  pathRotationPathFollow = 2

type CsgPolygon3D_PathIntervalType* {.size: sizeof(clong).} = enum
  pathIntervalDistance = 0
  pathIntervalSubdivide = 1

type CsgShape3D_Operation* {.size: sizeof(clong).} = enum
  operationUnion = 0
  operationIntersection = 1
  operationSubtraction = 2

type Camera2D_AnchorMode* {.size: sizeof(clong).} = enum
  anchorModeFixedTopLeft = 0
  anchorModeDragCenter = 1

type Camera2D_Camera2DProcessCallback* {.size: sizeof(clong).} = enum
  camera2DProcessPhysics = 0
  camera2DProcessIdle = 1

type Camera3D_ProjectionType* {.size: sizeof(clong).} = enum
  projectionPerspective = 0
  projectionOrthogonal = 1
  projectionFrustum = 2

type Camera3D_KeepAspect* {.size: sizeof(clong).} = enum
  keepWidth = 0
  keepHeight = 1

type Camera3D_DopplerTracking* {.size: sizeof(clong).} = enum
  dopplerTrackingDisabled = 0
  dopplerTrackingIdleStep = 1
  dopplerTrackingPhysicsStep = 2

type CameraFeed_FeedDataType* {.size: sizeof(clong).} = enum
  feedNoimage = 0
  feedRgb = 1
  feedYcbcr = 2
  feedYcbcrSep = 3

type CameraFeed_FeedPosition* {.size: sizeof(clong).} = enum
  feedUnspecified = 0
  feedFront = 1
  feedBack = 2

type CameraServer_FeedImage* {.size: sizeof(clong).} = enum
  feedRgbaImage = 0
  feedCbcrImage = 1
template feedYcbcrImage*[T: CameraServer_FeedImage](_: typedesc[T]): T = T(0)
template feedYImage*[T: CameraServer_FeedImage](_: typedesc[T]): T = T(0)

type CanvasItem_TextureFilter* {.size: sizeof(clong).} = enum
  textureFilterParentNode = 0
  textureFilterNearest = 1
  textureFilterLinear = 2
  textureFilterNearestWithMipmaps = 3
  textureFilterLinearWithMipmaps = 4
  textureFilterNearestWithMipmapsAnisotropic = 5
  textureFilterLinearWithMipmapsAnisotropic = 6
  textureFilterMax = 7

type CanvasItem_TextureRepeat* {.size: sizeof(clong).} = enum
  textureRepeatParentNode = 0
  textureRepeatDisabled = 1
  textureRepeatEnabled = 2
  textureRepeatMirror = 3
  textureRepeatMax = 4

type CanvasItem_ClipChildrenMode* {.size: sizeof(clong).} = enum
  clipChildrenDisabled = 0
  clipChildrenOnly = 1
  clipChildrenAndDraw = 2
  clipChildrenMax = 3

type CanvasItemMaterial_BlendMode* {.size: sizeof(clong).} = enum
  blendModeMix = 0
  blendModeAdd = 1
  blendModeSub = 2
  blendModeMul = 3
  blendModePremultAlpha = 4

type CanvasItemMaterial_LightMode* {.size: sizeof(clong).} = enum
  lightModeNormal = 0
  lightModeUnshaded = 1
  lightModeLightOnly = 2

type CharacterBody2D_MotionMode* {.size: sizeof(clong).} = enum
  motionModeGrounded = 0
  motionModeFloating = 1

type CharacterBody2D_PlatformOnLeave* {.size: sizeof(clong).} = enum
  platformOnLeaveAddVelocity = 0
  platformOnLeaveAddUpwardVelocity = 1
  platformOnLeaveDoNothing = 2

type CharacterBody3D_MotionMode* {.size: sizeof(clong).} = enum
  motionModeGrounded = 0
  motionModeFloating = 1

type CharacterBody3D_PlatformOnLeave* {.size: sizeof(clong).} = enum
  platformOnLeaveAddVelocity = 0
  platformOnLeaveAddUpwardVelocity = 1
  platformOnLeaveDoNothing = 2

type CodeEdit_CodeCompletionKind* {.size: sizeof(clong).} = enum
  kindClass = 0
  kindFunction = 1
  kindSignal = 2
  kindVariable = 3
  kindMember = 4
  kindEnum = 5
  kindConstant = 6
  kindNodePath = 7
  kindFilePath = 8
  kindPlainText = 9

type CodeEdit_CodeCompletionLocation* {.size: sizeof(clong).} = enum
  locationLocal = 0
  locationParentMask = 256
  locationOtherUserCode = 512
  locationOther = 1024

type CollisionObject2D_DisableMode* {.size: sizeof(clong).} = enum
  disableModeRemove = 0
  disableModeMakeStatic = 1
  disableModeKeepActive = 2

type CollisionObject3D_DisableMode* {.size: sizeof(clong).} = enum
  disableModeRemove = 0
  disableModeMakeStatic = 1
  disableModeKeepActive = 2

type CollisionPolygon2D_BuildMode* {.size: sizeof(clong).} = enum
  buildSolids = 0
  buildSegments = 1

type ColorPicker_ColorModeType* {.size: sizeof(clong).} = enum
  modeRgb = 0
  modeHsv = 1
  modeRaw = 2
  modeOkhsl = 3

type ColorPicker_PickerShapeType* {.size: sizeof(clong).} = enum
  shapeHsvRectangle = 0
  shapeHsvWheel = 1
  shapeVhsCircle = 2
  shapeOkhslCircle = 3
  shapeNone = 4

type CompositorEffect_EffectCallbackType* {.size: sizeof(clong).} = enum
  effectCallbackTypePreOpaque = 0
  effectCallbackTypePostOpaque = 1
  effectCallbackTypePostSky = 2
  effectCallbackTypePreTransparent = 3
  effectCallbackTypePostTransparent = 4
  effectCallbackTypeMax = 5

type ConeTwistJoint3D_Param* {.size: sizeof(clong).} = enum
  paramSwingSpan = 0
  paramTwistSpan = 1
  paramBias = 2
  paramSoftness = 3
  paramRelaxation = 4
  paramMax = 5

type Control_FocusMode* {.size: sizeof(clong).} = enum
  focusNone = 0
  focusClick = 1
  focusAll = 2

type Control_CursorShape* {.size: sizeof(clong).} = enum
  cursorArrow = 0
  cursorIbeam = 1
  cursorPointingHand = 2
  cursorCross = 3
  cursorWait = 4
  cursorBusy = 5
  cursorDrag = 6
  cursorCanDrop = 7
  cursorForbidden = 8
  cursorVsize = 9
  cursorHsize = 10
  cursorBdiagsize = 11
  cursorFdiagsize = 12
  cursorMove = 13
  cursorVsplit = 14
  cursorHsplit = 15
  cursorHelp = 16

type Control_LayoutPreset* {.size: sizeof(clong).} = enum
  presetTopLeft = 0
  presetTopRight = 1
  presetBottomLeft = 2
  presetBottomRight = 3
  presetCenterLeft = 4
  presetCenterTop = 5
  presetCenterRight = 6
  presetCenterBottom = 7
  presetCenter = 8
  presetLeftWide = 9
  presetTopWide = 10
  presetRightWide = 11
  presetBottomWide = 12
  presetVcenterWide = 13
  presetHcenterWide = 14
  presetFullRect = 15

type Control_LayoutPresetMode* {.size: sizeof(clong).} = enum
  presetModeMinsize = 0
  presetModeKeepWidth = 1
  presetModeKeepHeight = 2
  presetModeKeepSize = 3

type Control_SizeFlags* = enum
  # sizeShrinkBegin = 0
  sizeFill = 0
  sizeExpand = 1
  sizeShrinkCenter = 2
  sizeShrinkEnd = 3
  `--Padding-Max--` = 63 # To align size-of set[Control_SizeFlags] to size-of Int.
template sizeExpandFill*[T: Control_SizeFlags](_: typedesc[T]): set[T] = cast[set[T]](3)

type Control_MouseFilter* {.size: sizeof(clong).} = enum
  mouseFilterStop = 0
  mouseFilterPass = 1
  mouseFilterIgnore = 2

type Control_GrowDirection* {.size: sizeof(clong).} = enum
  growDirectionBegin = 0
  growDirectionEnd = 1
  growDirectionBoth = 2

type Control_Anchor* {.size: sizeof(clong).} = enum
  anchorBegin = 0
  anchorEnd = 1

type Control_LayoutDirection* {.size: sizeof(clong).} = enum
  layoutDirectionInherited = 0
  layoutDirectionLocale = 1
  layoutDirectionLtr = 2
  layoutDirectionRtl = 3

type Control_TextDirection* {.size: sizeof(clong).} = enum
  textDirectionAuto = 0
  textDirectionLtr = 1
  textDirectionRtl = 2
  textDirectionInherited = 3

type Curve_TangentMode* {.size: sizeof(clong).} = enum
  tangentFree = 0
  tangentLinear = 1
  tangentModeCount = 2

type CurveTexture_TextureMode* {.size: sizeof(clong).} = enum
  textureModeRgb = 0
  textureModeRed = 1

type Decal_DecalTexture* {.size: sizeof(clong).} = enum
  textureAlbedo = 0
  textureNormal = 1
  textureOrm = 2
  textureEmission = 3
  textureMax = 4

type DirectionalLight3D_ShadowMode* {.size: sizeof(clong).} = enum
  shadowOrthogonal = 0
  shadowParallel2Splits = 1
  shadowParallel4Splits = 2

type DirectionalLight3D_SkyMode* {.size: sizeof(clong).} = enum
  skyModeLightAndSky = 0
  skyModeLightOnly = 1
  skyModeSkyOnly = 2

type DisplayServer_Feature* {.size: sizeof(clong).} = enum
  featureGlobalMenu = 0
  featureSubwindows = 1
  featureTouchscreen = 2
  featureMouse = 3
  featureMouseWarp = 4
  featureClipboard = 5
  featureVirtualKeyboard = 6
  featureCursorShape = 7
  featureCustomCursorShape = 8
  featureNativeDialog = 9
  featureIme = 10
  featureWindowTransparency = 11
  featureHidpi = 12
  featureIcon = 13
  featureNativeIcon = 14
  featureOrientation = 15
  featureSwapBuffers = 16
  featureClipboardPrimary = 18
  featureTextToSpeech = 19
  featureExtendToTitle = 20
  featureScreenCapture = 21
  featureStatusIndicator = 22
  featureNativeHelp = 23
  featureNativeDialogInput = 24
  featureNativeDialogFile = 25

type DisplayServer_MouseMode* {.size: sizeof(clong).} = enum
  mouseModeVisible = 0
  mouseModeHidden = 1
  mouseModeCaptured = 2
  mouseModeConfined = 3
  mouseModeConfinedHidden = 4

type DisplayServer_ScreenOrientation* {.size: sizeof(clong).} = enum
  screenLandscape = 0
  screenPortrait = 1
  screenReverseLandscape = 2
  screenReversePortrait = 3
  screenSensorLandscape = 4
  screenSensorPortrait = 5
  screenSensor = 6

type DisplayServer_VirtualKeyboardType* {.size: sizeof(clong).} = enum
  keyboardTypeDefault = 0
  keyboardTypeMultiline = 1
  keyboardTypeNumber = 2
  keyboardTypeNumberDecimal = 3
  keyboardTypePhone = 4
  keyboardTypeEmailAddress = 5
  keyboardTypePassword = 6
  keyboardTypeUrl = 7

type DisplayServer_CursorShape* {.size: sizeof(clong).} = enum
  cursorArrow = 0
  cursorIbeam = 1
  cursorPointingHand = 2
  cursorCross = 3
  cursorWait = 4
  cursorBusy = 5
  cursorDrag = 6
  cursorCanDrop = 7
  cursorForbidden = 8
  cursorVsize = 9
  cursorHsize = 10
  cursorBdiagsize = 11
  cursorFdiagsize = 12
  cursorMove = 13
  cursorVsplit = 14
  cursorHsplit = 15
  cursorHelp = 16
  cursorMax = 17

type DisplayServer_FileDialogMode* {.size: sizeof(clong).} = enum
  fileDialogModeOpenFile = 0
  fileDialogModeOpenFiles = 1
  fileDialogModeOpenDir = 2
  fileDialogModeOpenAny = 3
  fileDialogModeSaveFile = 4

type DisplayServer_WindowMode* {.size: sizeof(clong).} = enum
  windowModeWindowed = 0
  windowModeMinimized = 1
  windowModeMaximized = 2
  windowModeFullscreen = 3
  windowModeExclusiveFullscreen = 4

type DisplayServer_WindowFlags* {.size: sizeof(clong).} = enum
  windowFlagResizeDisabled = 0
  windowFlagBorderless = 1
  windowFlagAlwaysOnTop = 2
  windowFlagTransparent = 3
  windowFlagNoFocus = 4
  windowFlagPopup = 5
  windowFlagExtendToTitle = 6
  windowFlagMousePassthrough = 7
  windowFlagMax = 8

type DisplayServer_WindowEvent* {.size: sizeof(clong).} = enum
  windowEventMouseEnter = 0
  windowEventMouseExit = 1
  windowEventFocusIn = 2
  windowEventFocusOut = 3
  windowEventCloseRequest = 4
  windowEventGoBackRequest = 5
  windowEventDpiChange = 6
  windowEventTitlebarChange = 7

type DisplayServer_VSyncMode* {.size: sizeof(clong).} = enum
  vsyncDisabled = 0
  vsyncEnabled = 1
  vsyncAdaptive = 2
  vsyncMailbox = 3

type DisplayServer_HandleType* {.size: sizeof(clong).} = enum
  displayHandle = 0
  windowHandle = 1
  windowView = 2
  openglContext = 3

type DisplayServer_TtsUtteranceEvent* {.size: sizeof(clong).} = enum
  ttsUtteranceStarted = 0
  ttsUtteranceEnded = 1
  ttsUtteranceCanceled = 2
  ttsUtteranceBoundary = 3

type ENetConnection_CompressionMode* {.size: sizeof(clong).} = enum
  compressNone = 0
  compressRangeCoder = 1
  compressFastlz = 2
  compressZlib = 3
  compressZstd = 4

type ENetConnection_EventType* {.size: sizeof(clong).} = enum
  eventError = -1
  eventNone = 0
  eventConnect = 1
  eventDisconnect = 2
  eventReceive = 3

type ENetConnection_HostStatistic* {.size: sizeof(clong).} = enum
  hostTotalSentData = 0
  hostTotalSentPackets = 1
  hostTotalReceivedData = 2
  hostTotalReceivedPackets = 3

type ENetPacketPeer_PeerState* {.size: sizeof(clong).} = enum
  stateDisconnected = 0
  stateConnecting = 1
  stateAcknowledgingConnect = 2
  stateConnectionPending = 3
  stateConnectionSucceeded = 4
  stateConnected = 5
  stateDisconnectLater = 6
  stateDisconnecting = 7
  stateAcknowledgingDisconnect = 8
  stateZombie = 9

type ENetPacketPeer_PeerStatistic* {.size: sizeof(clong).} = enum
  peerPacketLoss = 0
  peerPacketLossVariance = 1
  peerPacketLossEpoch = 2
  peerRoundTripTime = 3
  peerRoundTripTimeVariance = 4
  peerLastRoundTripTime = 5
  peerLastRoundTripTimeVariance = 6
  peerPacketThrottle = 7
  peerPacketThrottleLimit = 8
  peerPacketThrottleCounter = 9
  peerPacketThrottleEpoch = 10
  peerPacketThrottleAcceleration = 11
  peerPacketThrottleDeceleration = 12
  peerPacketThrottleInterval = 13

type EditorFeatureProfile_Feature* {.size: sizeof(clong).} = enum
  feature3D = 0
  featureScript = 1
  featureAssetLib = 2
  featureSceneTree = 3
  featureNodeDock = 4
  featureFilesystemDock = 5
  featureImportDock = 6
  featureHistoryDock = 7
  featureMax = 8

type EditorFileDialog_FileMode* {.size: sizeof(clong).} = enum
  fileModeOpenFile = 0
  fileModeOpenFiles = 1
  fileModeOpenDir = 2
  fileModeOpenAny = 3
  fileModeSaveFile = 4

type EditorFileDialog_Access* {.size: sizeof(clong).} = enum
  accessResources = 0
  accessUserdata = 1
  accessFilesystem = 2

type EditorFileDialog_DisplayMode* {.size: sizeof(clong).} = enum
  displayThumbnails = 0
  displayList = 1

type EditorPlugin_CustomControlContainer* {.size: sizeof(clong).} = enum
  containerToolbar = 0
  containerSpatialEditorMenu = 1
  containerSpatialEditorSideLeft = 2
  containerSpatialEditorSideRight = 3
  containerSpatialEditorBottom = 4
  containerCanvasEditorMenu = 5
  containerCanvasEditorSideLeft = 6
  containerCanvasEditorSideRight = 7
  containerCanvasEditorBottom = 8
  containerInspectorBottom = 9
  containerProjectSettingTabLeft = 10
  containerProjectSettingTabRight = 11

type EditorPlugin_DockSlot* {.size: sizeof(clong).} = enum
  dockSlotLeftUl = 0
  dockSlotLeftBl = 1
  dockSlotLeftUr = 2
  dockSlotLeftBr = 3
  dockSlotRightUl = 4
  dockSlotRightBl = 5
  dockSlotRightUr = 6
  dockSlotRightBr = 7
  dockSlotMax = 8

type EditorPlugin_AfterGuiInput* {.size: sizeof(clong).} = enum
  afterGuiInputPass = 0
  afterGuiInputStop = 1
  afterGuiInputCustom = 2

type EditorScenePostImportPlugin_InternalImportCategory* {.size: sizeof(clong).} = enum
  internalImportCategoryNode = 0
  internalImportCategoryMesh3DNode = 1
  internalImportCategoryMesh = 2
  internalImportCategoryMaterial = 3
  internalImportCategoryAnimation = 4
  internalImportCategoryAnimationNode = 5
  internalImportCategorySkeleton3DNode = 6
  internalImportCategoryMax = 7

type EditorUndoRedoManager_SpecialHistory* {.size: sizeof(clong).} = enum
  invalidHistory = -99
  remoteHistory = -9
  globalHistory = 0

type EditorVcsInterface_ChangeType* {.size: sizeof(clong).} = enum
  changeTypeNew = 0
  changeTypeModified = 1
  changeTypeRenamed = 2
  changeTypeDeleted = 3
  changeTypeTypechange = 4
  changeTypeUnmerged = 5

type EditorVcsInterface_TreeArea* {.size: sizeof(clong).} = enum
  treeAreaCommit = 0
  treeAreaStaged = 1
  treeAreaUnstaged = 2

type Environment_BgMode* {.size: sizeof(clong).} = enum
  bgClearColor = 0
  bgColor = 1
  bgSky = 2
  bgCanvas = 3
  bgKeep = 4
  bgCameraFeed = 5
  bgMax = 6

type Environment_AmbientSource* {.size: sizeof(clong).} = enum
  ambientSourceBg = 0
  ambientSourceDisabled = 1
  ambientSourceColor = 2
  ambientSourceSky = 3

type Environment_ReflectionSource* {.size: sizeof(clong).} = enum
  reflectionSourceBg = 0
  reflectionSourceDisabled = 1
  reflectionSourceSky = 2

type Environment_ToneMapper* {.size: sizeof(clong).} = enum
  toneMapperLinear = 0
  toneMapperReinhardt = 1
  toneMapperFilmic = 2
  toneMapperAces = 3

type Environment_GlowBlendMode* {.size: sizeof(clong).} = enum
  glowBlendModeAdditive = 0
  glowBlendModeScreen = 1
  glowBlendModeSoftlight = 2
  glowBlendModeReplace = 3
  glowBlendModeMix = 4

type Environment_FogMode* {.size: sizeof(clong).} = enum
  fogModeExponential = 0
  fogModeDepth = 1

type Environment_SdfgiyScale* {.size: sizeof(clong).} = enum
  sdfgiYScale50Percent = 0
  sdfgiYScale75Percent = 1
  sdfgiYScale100Percent = 2

type FastNoiseLite_NoiseType* {.size: sizeof(clong).} = enum
  typeSimplex = 0
  typeSimplexSmooth = 1
  typeCellular = 2
  typePerlin = 3
  typeValueCubic = 4
  typeValue = 5

type FastNoiseLite_FractalType* {.size: sizeof(clong).} = enum
  fractalNone = 0
  fractalFbm = 1
  fractalRidged = 2
  fractalPingPong = 3

type FastNoiseLite_CellularDistanceFunction* {.size: sizeof(clong).} = enum
  distanceEuclidean = 0
  distanceEuclideanSquared = 1
  distanceManhattan = 2
  distanceHybrid = 3

type FastNoiseLite_CellularReturnType* {.size: sizeof(clong).} = enum
  returnCellValue = 0
  returnDistance = 1
  returnDistance2 = 2
  returnDistance2Add = 3
  returnDistance2Sub = 4
  returnDistance2Mul = 5
  returnDistance2Div = 6

type FastNoiseLite_DomainWarpType* {.size: sizeof(clong).} = enum
  domainWarpSimplex = 0
  domainWarpSimplexReduced = 1
  domainWarpBasicGrid = 2

type FastNoiseLite_DomainWarpFractalType* {.size: sizeof(clong).} = enum
  domainWarpFractalNone = 0
  domainWarpFractalProgressive = 1
  domainWarpFractalIndependent = 2

type FileAccess_ModeFlags* {.size: sizeof(clong).} = enum
  read = 1
  write = 2
  readWrite = 3
  writeRead = 7

type FileAccess_CompressionMode* {.size: sizeof(clong).} = enum
  compressionFastlz = 0
  compressionDeflate = 1
  compressionZstd = 2
  compressionGzip = 3
  compressionBrotli = 4

type FileAccess_UnixPermissionFlags* = enum
  unixExecuteOther = 0
  unixWriteOther = 1
  unixReadOther = 2
  unixExecuteGroup = 3
  unixWriteGroup = 4
  unixReadGroup = 5
  unixExecuteOwner = 6
  unixWriteOwner = 7
  unixReadOwner = 8
  unixRestrictedDelete = 9
  unixSetGroupId = 10
  unixSetUserId = 11
  `--Padding-Max--` = 63 # To align size-of set[FileAccess_UnixPermissionFlags] to size-of Int.

type FileDialog_FileMode* {.size: sizeof(clong).} = enum
  fileModeOpenFile = 0
  fileModeOpenFiles = 1
  fileModeOpenDir = 2
  fileModeOpenAny = 3
  fileModeSaveFile = 4

type FileDialog_Access* {.size: sizeof(clong).} = enum
  accessResources = 0
  accessUserdata = 1
  accessFilesystem = 2

type FlowContainer_AlignmentMode* {.size: sizeof(clong).} = enum
  alignmentBegin = 0
  alignmentCenter = 1
  alignmentEnd = 2

type FlowContainer_LastWrapAlignmentMode* {.size: sizeof(clong).} = enum
  lastWrapAlignmentInherit = 0
  lastWrapAlignmentBegin = 1
  lastWrapAlignmentCenter = 2
  lastWrapAlignmentEnd = 3

type GdExtension_InitializationLevel* {.size: sizeof(clong).} = enum
  initializationLevelCore = 0
  initializationLevelServers = 1
  initializationLevelScene = 2
  initializationLevelEditor = 3

type GdExtensionManager_LoadStatus* {.size: sizeof(clong).} = enum
  loadStatusOk = 0
  loadStatusFailed = 1
  loadStatusAlreadyLoaded = 2
  loadStatusNotLoaded = 3
  loadStatusNeedsRestart = 4

type GltfAccessor_GltfAccessorType* {.size: sizeof(clong).} = enum
  typeScalar = 0
  typeVec2 = 1
  typeVec3 = 2
  typeVec4 = 3
  typeMat2 = 4
  typeMat3 = 5
  typeMat4 = 6

type GltfDocument_RootNodeMode* {.size: sizeof(clong).} = enum
  rootNodeModeSingleRoot = 0
  rootNodeModeKeepRoot = 1
  rootNodeModeMultiRoot = 2

type GpuParticles2D_DrawOrder* {.size: sizeof(clong).} = enum
  drawOrderIndex = 0
  drawOrderLifetime = 1
  drawOrderReverseLifetime = 2

type GpuParticles2D_EmitFlags* {.size: sizeof(clong).} = enum
  emitFlagPosition = 1
  emitFlagRotationScale = 2
  emitFlagVelocity = 4
  emitFlagColor = 8
  emitFlagCustom = 16

type GpuParticles3D_DrawOrder* {.size: sizeof(clong).} = enum
  drawOrderIndex = 0
  drawOrderLifetime = 1
  drawOrderReverseLifetime = 2
  drawOrderViewDepth = 3

type GpuParticles3D_EmitFlags* {.size: sizeof(clong).} = enum
  emitFlagPosition = 1
  emitFlagRotationScale = 2
  emitFlagVelocity = 4
  emitFlagColor = 8
  emitFlagCustom = 16

type GpuParticles3D_TransformAlign* {.size: sizeof(clong).} = enum
  transformAlignDisabled = 0
  transformAlignZBillboard = 1
  transformAlignYToVelocity = 2
  transformAlignZBillboardYToVelocity = 3

type GpuParticlesCollisionHeightField3D_Resolution* {.size: sizeof(clong).} = enum
  resolution256 = 0
  resolution512 = 1
  resolution1024 = 2
  resolution2048 = 3
  resolution4096 = 4
  resolution8192 = 5
  resolutionMax = 6

type GpuParticlesCollisionHeightField3D_UpdateMode* {.size: sizeof(clong).} = enum
  updateModeWhenMoved = 0
  updateModeAlways = 1

type GpuParticlesCollisionSdf3D_Resolution* {.size: sizeof(clong).} = enum
  resolution16 = 0
  resolution32 = 1
  resolution64 = 2
  resolution128 = 3
  resolution256 = 4
  resolution512 = 5
  resolutionMax = 6

type Generic6DofJoint3D_Param* {.size: sizeof(clong).} = enum
  paramLinearLowerLimit = 0
  paramLinearUpperLimit = 1
  paramLinearLimitSoftness = 2
  paramLinearRestitution = 3
  paramLinearDamping = 4
  paramLinearMotorTargetVelocity = 5
  paramLinearMotorForceLimit = 6
  paramLinearSpringStiffness = 7
  paramLinearSpringDamping = 8
  paramLinearSpringEquilibriumPoint = 9
  paramAngularLowerLimit = 10
  paramAngularUpperLimit = 11
  paramAngularLimitSoftness = 12
  paramAngularDamping = 13
  paramAngularRestitution = 14
  paramAngularForceLimit = 15
  paramAngularErp = 16
  paramAngularMotorTargetVelocity = 17
  paramAngularMotorForceLimit = 18
  paramAngularSpringStiffness = 19
  paramAngularSpringDamping = 20
  paramAngularSpringEquilibriumPoint = 21
  paramMax = 22

type Generic6DofJoint3D_Flag* {.size: sizeof(clong).} = enum
  flagEnableLinearLimit = 0
  flagEnableAngularLimit = 1
  flagEnableAngularSpring = 2
  flagEnableLinearSpring = 3
  flagEnableMotor = 4
  flagEnableLinearMotor = 5
  flagMax = 6

type Geometry2D_PolyBooleanOperation* {.size: sizeof(clong).} = enum
  operationUnion = 0
  operationDifference = 1
  operationIntersection = 2
  operationXor = 3

type Geometry2D_PolyJoinType* {.size: sizeof(clong).} = enum
  joinSquare = 0
  joinRound = 1
  joinMiter = 2

type Geometry2D_PolyEndType* {.size: sizeof(clong).} = enum
  endPolygon = 0
  endJoined = 1
  endButt = 2
  endSquare = 3
  endRound = 4

type GeometryInstance3D_ShadowCastingSetting* {.size: sizeof(clong).} = enum
  shadowCastingSettingOff = 0
  shadowCastingSettingOn = 1
  shadowCastingSettingDoubleSided = 2
  shadowCastingSettingShadowsOnly = 3

type GeometryInstance3D_GiMode* {.size: sizeof(clong).} = enum
  giModeDisabled = 0
  giModeStatic = 1
  giModeDynamic = 2

type GeometryInstance3D_LightmapScale* {.size: sizeof(clong).} = enum
  lightmapScale1X = 0
  lightmapScale2X = 1
  lightmapScale4X = 2
  lightmapScale8X = 3
  lightmapScaleMax = 4

type GeometryInstance3D_VisibilityRangeFadeMode* {.size: sizeof(clong).} = enum
  visibilityRangeFadeDisabled = 0
  visibilityRangeFadeSelf = 1
  visibilityRangeFadeDependencies = 2

type Gradient_InterpolationMode* {.size: sizeof(clong).} = enum
  gradientInterpolateLinear = 0
  gradientInterpolateConstant = 1
  gradientInterpolateCubic = 2

type Gradient_ColorSpace* {.size: sizeof(clong).} = enum
  gradientColorSpaceSrgb = 0
  gradientColorSpaceLinearSrgb = 1
  gradientColorSpaceOklab = 2

type GradientTexture2D_Fill* {.size: sizeof(clong).} = enum
  fillLinear = 0
  fillRadial = 1
  fillSquare = 2

type GradientTexture2D_Repeat* {.size: sizeof(clong).} = enum
  repeatNone = 0
  repeat = 1
  repeatMirror = 2

type GraphEdit_PanningScheme* {.size: sizeof(clong).} = enum
  scrollZooms = 0
  scrollPans = 1

type GraphEdit_GridPattern* {.size: sizeof(clong).} = enum
  gridPatternLines = 0
  gridPatternDots = 1

type HttpClient_Method* {.size: sizeof(clong).} = enum
  methodGet = 0
  methodHead = 1
  methodPost = 2
  methodPut = 3
  methodDelete = 4
  methodOptions = 5
  methodTrace = 6
  methodConnect = 7
  methodPatch = 8
  methodMax = 9

type HttpClient_Status* {.size: sizeof(clong).} = enum
  statusDisconnected = 0
  statusResolving = 1
  statusCantResolve = 2
  statusConnecting = 3
  statusCantConnect = 4
  statusConnected = 5
  statusRequesting = 6
  statusBody = 7
  statusConnectionError = 8
  statusTlsHandshakeError = 9

type HttpClient_ResponseCode* {.size: sizeof(clong).} = enum
  responseContinue = 100
  responseSwitchingProtocols = 101
  responseProcessing = 102
  responseOk = 200
  responseCreated = 201
  responseAccepted = 202
  responseNonAuthoritativeInformation = 203
  responseNoContent = 204
  responseResetContent = 205
  responsePartialContent = 206
  responseMultiStatus = 207
  responseAlreadyReported = 208
  responseImUsed = 226
  responseMultipleChoices = 300
  responseMovedPermanently = 301
  responseFound = 302
  responseSeeOther = 303
  responseNotModified = 304
  responseUseProxy = 305
  responseSwitchProxy = 306
  responseTemporaryRedirect = 307
  responsePermanentRedirect = 308
  responseBadRequest = 400
  responseUnauthorized = 401
  responsePaymentRequired = 402
  responseForbidden = 403
  responseNotFound = 404
  responseMethodNotAllowed = 405
  responseNotAcceptable = 406
  responseProxyAuthenticationRequired = 407
  responseRequestTimeout = 408
  responseConflict = 409
  responseGone = 410
  responseLengthRequired = 411
  responsePreconditionFailed = 412
  responseRequestEntityTooLarge = 413
  responseRequestUriTooLong = 414
  responseUnsupportedMediaType = 415
  responseRequestedRangeNotSatisfiable = 416
  responseExpectationFailed = 417
  responseImATeapot = 418
  responseMisdirectedRequest = 421
  responseUnprocessableEntity = 422
  responseLocked = 423
  responseFailedDependency = 424
  responseUpgradeRequired = 426
  responsePreconditionRequired = 428
  responseTooManyRequests = 429
  responseRequestHeaderFieldsTooLarge = 431
  responseUnavailableForLegalReasons = 451
  responseInternalServerError = 500
  responseNotImplemented = 501
  responseBadGateway = 502
  responseServiceUnavailable = 503
  responseGatewayTimeout = 504
  responseHttpVersionNotSupported = 505
  responseVariantAlsoNegotiates = 506
  responseInsufficientStorage = 507
  responseLoopDetected = 508
  responseNotExtended = 510
  responseNetworkAuthRequired = 511

type HttpRequest_Result* {.size: sizeof(clong).} = enum
  resultSuccess = 0
  resultChunkedBodySizeMismatch = 1
  resultCantConnect = 2
  resultCantResolve = 3
  resultConnectionError = 4
  resultTlsHandshakeError = 5
  resultNoResponse = 6
  resultBodySizeLimitExceeded = 7
  resultBodyDecompressFailed = 8
  resultRequestFailed = 9
  resultDownloadFileCantOpen = 10
  resultDownloadFileWriteError = 11
  resultRedirectLimitReached = 12
  resultTimeout = 13

type HashingContext_HashType* {.size: sizeof(clong).} = enum
  hashMd5 = 0
  hashSha1 = 1
  hashSha256 = 2

type HingeJoint3D_Param* {.size: sizeof(clong).} = enum
  paramBias = 0
  paramLimitUpper = 1
  paramLimitLower = 2
  paramLimitBias = 3
  paramLimitSoftness = 4
  paramLimitRelaxation = 5
  paramMotorTargetVelocity = 6
  paramMotorMaxImpulse = 7
  paramMax = 8

type HingeJoint3D_Flag* {.size: sizeof(clong).} = enum
  flagUseLimit = 0
  flagEnableMotor = 1
  flagMax = 2

type Ip_ResolverStatus* {.size: sizeof(clong).} = enum
  resolverStatusNone = 0
  resolverStatusWaiting = 1
  resolverStatusDone = 2
  resolverStatusError = 3

type Ip_Type* {.size: sizeof(clong).} = enum
  typeNone = 0
  typeIpv4 = 1
  typeIpv6 = 2
  typeAny = 3

type Image_Format* {.size: sizeof(clong).} = enum
  formatL8 = 0
  formatLa8 = 1
  formatR8 = 2
  formatRg8 = 3
  formatRgb8 = 4
  formatRgba8 = 5
  formatRgba4444 = 6
  formatRgb565 = 7
  formatRf = 8
  formatRgf = 9
  formatRgbf = 10
  formatRgbaf = 11
  formatRh = 12
  formatRgh = 13
  formatRgbh = 14
  formatRgbah = 15
  formatRgbe9995 = 16
  formatDxt1 = 17
  formatDxt3 = 18
  formatDxt5 = 19
  formatRgtcR = 20
  formatRgtcRg = 21
  formatBptcRgba = 22
  formatBptcRgbf = 23
  formatBptcRgbfu = 24
  formatEtc = 25
  formatEtc2R11 = 26
  formatEtc2R11S = 27
  formatEtc2Rg11 = 28
  formatEtc2Rg11S = 29
  formatEtc2Rgb8 = 30
  formatEtc2Rgba8 = 31
  formatEtc2Rgb8A1 = 32
  formatEtc2RaAsRg = 33
  formatDxt5RaAsRg = 34
  formatAstc4X4 = 35
  formatAstc4X4Hdr = 36
  formatAstc8X8 = 37
  formatAstc8X8Hdr = 38
  formatMax = 39

type Image_Interpolation* {.size: sizeof(clong).} = enum
  interpolateNearest = 0
  interpolateBilinear = 1
  interpolateCubic = 2
  interpolateTrilinear = 3
  interpolateLanczos = 4

type Image_AlphaMode* {.size: sizeof(clong).} = enum
  alphaNone = 0
  alphaBit = 1
  alphaBlend = 2

type Image_CompressMode* {.size: sizeof(clong).} = enum
  compressS3Tc = 0
  compressEtc = 1
  compressEtc2 = 2
  compressBptc = 3
  compressAstc = 4
  compressMax = 5

type Image_UsedChannels* {.size: sizeof(clong).} = enum
  usedChannelsL = 0
  usedChannelsLa = 1
  usedChannelsR = 2
  usedChannelsRg = 3
  usedChannelsRgb = 4
  usedChannelsRgba = 5

type Image_CompressSource* {.size: sizeof(clong).} = enum
  compressSourceGeneric = 0
  compressSourceSrgb = 1
  compressSourceNormal = 2

type Image_AstcFormat* {.size: sizeof(clong).} = enum
  astcFormat4X4 = 0
  astcFormat8X8 = 1

type ImageFormatLoader_LoaderFlags* = enum
  # flagNone = 0
  flagForceLinear = 0
  flagConvertColors = 1
  `--Padding-Max--` = 63 # To align size-of set[ImageFormatLoader_LoaderFlags] to size-of Int.

type Input_MouseMode* {.size: sizeof(clong).} = enum
  mouseModeVisible = 0
  mouseModeHidden = 1
  mouseModeCaptured = 2
  mouseModeConfined = 3
  mouseModeConfinedHidden = 4

type Input_CursorShape* {.size: sizeof(clong).} = enum
  cursorArrow = 0
  cursorIbeam = 1
  cursorPointingHand = 2
  cursorCross = 3
  cursorWait = 4
  cursorBusy = 5
  cursorDrag = 6
  cursorCanDrop = 7
  cursorForbidden = 8
  cursorVsize = 9
  cursorHsize = 10
  cursorBdiagsize = 11
  cursorFdiagsize = 12
  cursorMove = 13
  cursorVsplit = 14
  cursorHsplit = 15
  cursorHelp = 16

type ItemList_IconMode* {.size: sizeof(clong).} = enum
  iconModeTop = 0
  iconModeLeft = 1

type ItemList_SelectMode* {.size: sizeof(clong).} = enum
  selectSingle = 0
  selectMulti = 1

type Jsonrpc_ErrorCode* {.size: sizeof(clong).} = enum
  parseError = -32700
  internalError = -32603
  invalidParams = -32602
  methodNotFound = -32601
  invalidRequest = -32600

type Label3D_DrawFlags* {.size: sizeof(clong).} = enum
  flagShaded = 0
  flagDoubleSided = 1
  flagDisableDepthTest = 2
  flagFixedSize = 3
  flagMax = 4

type Label3D_AlphaCutMode* {.size: sizeof(clong).} = enum
  alphaCutDisabled = 0
  alphaCutDiscard = 1
  alphaCutOpaquePrepass = 2
  alphaCutHash = 3

type Light2D_ShadowFilter* {.size: sizeof(clong).} = enum
  shadowFilterNone = 0
  shadowFilterPcf5 = 1
  shadowFilterPcf13 = 2

type Light2D_BlendMode* {.size: sizeof(clong).} = enum
  blendModeAdd = 0
  blendModeSub = 1
  blendModeMix = 2

type Light3D_Param* {.size: sizeof(clong).} = enum
  paramEnergy = 0
  paramIndirectEnergy = 1
  paramVolumetricFogEnergy = 2
  paramSpecular = 3
  paramRange = 4
  paramSize = 5
  paramAttenuation = 6
  paramSpotAngle = 7
  paramSpotAttenuation = 8
  paramShadowMaxDistance = 9
  paramShadowSplit1Offset = 10
  paramShadowSplit2Offset = 11
  paramShadowSplit3Offset = 12
  paramShadowFadeStart = 13
  paramShadowNormalBias = 14
  paramShadowBias = 15
  paramShadowPancakeSize = 16
  paramShadowOpacity = 17
  paramShadowBlur = 18
  paramTransmittanceBias = 19
  paramIntensity = 20
  paramMax = 21

type Light3D_BakeMode* {.size: sizeof(clong).} = enum
  bakeDisabled = 0
  bakeStatic = 1
  bakeDynamic = 2

type LightmapGi_BakeQuality* {.size: sizeof(clong).} = enum
  bakeQualityLow = 0
  bakeQualityMedium = 1
  bakeQualityHigh = 2
  bakeQualityUltra = 3

type LightmapGi_GenerateProbes* {.size: sizeof(clong).} = enum
  generateProbesDisabled = 0
  generateProbesSubdiv4 = 1
  generateProbesSubdiv8 = 2
  generateProbesSubdiv16 = 3
  generateProbesSubdiv32 = 4

type LightmapGi_BakeError* {.size: sizeof(clong).} = enum
  bakeErrorOk = 0
  bakeErrorNoSceneRoot = 1
  bakeErrorForeignData = 2
  bakeErrorNoLightmapper = 3
  bakeErrorNoSavePath = 4
  bakeErrorNoMeshes = 5
  bakeErrorMeshesInvalid = 6
  bakeErrorCantCreateImage = 7
  bakeErrorUserAborted = 8
  bakeErrorTextureSizeTooSmall = 9
  bakeErrorLightmapTooSmall = 10
  bakeErrorAtlasTooSmall = 11

type LightmapGi_EnvironmentMode* {.size: sizeof(clong).} = enum
  environmentModeDisabled = 0
  environmentModeScene = 1
  environmentModeCustomSky = 2
  environmentModeCustomColor = 3

type Line2D_LineJointMode* {.size: sizeof(clong).} = enum
  lineJointSharp = 0
  lineJointBevel = 1
  lineJointRound = 2

type Line2D_LineCapMode* {.size: sizeof(clong).} = enum
  lineCapNone = 0
  lineCapBox = 1
  lineCapRound = 2

type Line2D_LineTextureMode* {.size: sizeof(clong).} = enum
  lineTextureNone = 0
  lineTextureTile = 1
  lineTextureStretch = 2

type LineEdit_MenuItems* {.size: sizeof(clong).} = enum
  menuCut = 0
  menuCopy = 1
  menuPaste = 2
  menuClear = 3
  menuSelectAll = 4
  menuUndo = 5
  menuRedo = 6
  menuSubmenuTextDir = 7
  menuDirInherited = 8
  menuDirAuto = 9
  menuDirLtr = 10
  menuDirRtl = 11
  menuDisplayUcc = 12
  menuSubmenuInsertUcc = 13
  menuInsertLrm = 14
  menuInsertRlm = 15
  menuInsertLre = 16
  menuInsertRle = 17
  menuInsertLro = 18
  menuInsertRlo = 19
  menuInsertPdf = 20
  menuInsertAlm = 21
  menuInsertLri = 22
  menuInsertRli = 23
  menuInsertFsi = 24
  menuInsertPdi = 25
  menuInsertZwj = 26
  menuInsertZwnj = 27
  menuInsertWj = 28
  menuInsertShy = 29
  menuMax = 30

type LineEdit_VirtualKeyboardType* {.size: sizeof(clong).} = enum
  keyboardTypeDefault = 0
  keyboardTypeMultiline = 1
  keyboardTypeNumber = 2
  keyboardTypeNumberDecimal = 3
  keyboardTypePhone = 4
  keyboardTypeEmailAddress = 5
  keyboardTypePassword = 6
  keyboardTypeUrl = 7

type LinkButton_UnderlineMode* {.size: sizeof(clong).} = enum
  underlineModeAlways = 0
  underlineModeOnHover = 1
  underlineModeNever = 2

type Mesh_PrimitiveType* {.size: sizeof(clong).} = enum
  primitivePoints = 0
  primitiveLines = 1
  primitiveLineStrip = 2
  primitiveTriangles = 3
  primitiveTriangleStrip = 4

type Mesh_ArrayType* {.size: sizeof(clong).} = enum
  arrayVertex = 0
  arrayNormal = 1
  arrayTangent = 2
  arrayColor = 3
  arrayTexUv = 4
  arrayTexUv2 = 5
  arrayCustom0 = 6
  arrayCustom1 = 7
  arrayCustom2 = 8
  arrayCustom3 = 9
  arrayBones = 10
  arrayWeights = 11
  arrayIndex = 12
  arrayMax = 13

type Mesh_ArrayCustomFormat* {.size: sizeof(clong).} = enum
  arrayCustomRgba8Unorm = 0
  arrayCustomRgba8Snorm = 1
  arrayCustomRgHalf = 2
  arrayCustomRgbaHalf = 3
  arrayCustomRFloat = 4
  arrayCustomRgFloat = 5
  arrayCustomRgbFloat = 6
  arrayCustomRgbaFloat = 7
  arrayCustomMax = 8

type Mesh_ArrayFormat* = enum
  arrayFormatVertex = 0
  arrayFormatNormal = 1
  arrayFormatTangent = 2
  arrayFormatColor = 3
  arrayFormatTexUv = 4
  arrayFormatTexUv2 = 5
  arrayFormatCustom0 = 6
  arrayFormatCustom1 = 7
  arrayFormatCustom2 = 8
  arrayFormatCustom3 = 9
  arrayFormatBones = 10
  arrayFormatWeights = 11
  arrayFormatIndex = 12
  arrayFlagUse2DVertices = 25
  arrayFlagUseDynamicUpdate = 26
  arrayFlagUse8BoneWeights = 27
  arrayFlagUsesEmptyVertexArray = 28
  arrayFlagCompressAttributes = 29
  `--Padding-Max--` = 63 # To align size-of set[Mesh_ArrayFormat] to size-of Int.
template arrayFormatCustomBits*[T: Mesh_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](3)
template arrayFormatBlendShapeMask*[T: Mesh_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](7)
template arrayFormatCustomMask*[T: Mesh_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](7)
template arrayFormatCustomBase*[T: Mesh_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](13)
template arrayFormatCustom0Shift*[T: Mesh_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](13)
template arrayFormatCustom1Shift*[T: Mesh_ArrayFormat](_: typedesc[T]): T = T(4)
template arrayFormatCustom2Shift*[T: Mesh_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](19)
template arrayFormatCustom3Shift*[T: Mesh_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](22)
template arrayCompressFlagsBase*[T: Mesh_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](25)

type Mesh_BlendShapeMode* {.size: sizeof(clong).} = enum
  blendShapeModeNormalized = 0
  blendShapeModeRelative = 1

type MeshConvexDecompositionSettings_Mode* {.size: sizeof(clong).} = enum
  convexDecompositionModeVoxel = 0
  convexDecompositionModeTetrahedron = 1

type MultiMesh_TransformFormat* {.size: sizeof(clong).} = enum
  transform2D = 0
  transform3D = 1

type MultiplayerApi_RpcMode* {.size: sizeof(clong).} = enum
  rpcModeDisabled = 0
  rpcModeAnyPeer = 1
  rpcModeAuthority = 2

type MultiplayerPeer_ConnectionStatus* {.size: sizeof(clong).} = enum
  connectionDisconnected = 0
  connectionConnecting = 1
  connectionConnected = 2

type MultiplayerPeer_TransferMode* {.size: sizeof(clong).} = enum
  transferModeUnreliable = 0
  transferModeUnreliableOrdered = 1
  transferModeReliable = 2

type MultiplayerSynchronizer_VisibilityUpdateMode* {.size: sizeof(clong).} = enum
  visibilityProcessIdle = 0
  visibilityProcessPhysics = 1
  visibilityProcessNone = 2

type NativeMenu_Feature* {.size: sizeof(clong).} = enum
  featureGlobalMenu = 0
  featurePopupMenu = 1
  featureOpenCloseCallback = 2
  featureHoverCallback = 3
  featureKeyCallback = 4

type NativeMenu_SystemMenus* {.size: sizeof(clong).} = enum
  invalidMenuId = 0
  mainMenuId = 1
  applicationMenuId = 2
  windowMenuId = 3
  helpMenuId = 4
  dockMenuId = 5

type NavigationMesh_SamplePartitionType* {.size: sizeof(clong).} = enum
  samplePartitionWatershed = 0
  samplePartitionMonotone = 1
  samplePartitionLayers = 2
  samplePartitionMax = 3

type NavigationMesh_ParsedGeometryType* {.size: sizeof(clong).} = enum
  parsedGeometryMeshInstances = 0
  parsedGeometryStaticColliders = 1
  parsedGeometryBoth = 2
  parsedGeometryMax = 3

type NavigationMesh_SourceGeometryMode* {.size: sizeof(clong).} = enum
  sourceGeometryRootNodeChildren = 0
  sourceGeometryGroupsWithChildren = 1
  sourceGeometryGroupsExplicit = 2
  sourceGeometryMax = 3

type NavigationPathQueryParameters2D_PathfindingAlgorithm* {.size: sizeof(clong).} = enum
  pathfindingAlgorithmAstar = 0

type NavigationPathQueryParameters2D_PathPostProcessing* {.size: sizeof(clong).} = enum
  pathPostprocessingCorridorfunnel = 0
  pathPostprocessingEdgecentered = 1

type NavigationPathQueryParameters2D_PathMetadataFlags* = enum
  # pathMetadataIncludeNone = 0
  pathMetadataIncludeTypes = 0
  pathMetadataIncludeRids = 1
  pathMetadataIncludeOwners = 2
  `--Padding-Max--` = 63 # To align size-of set[NavigationPathQueryParameters2D_PathMetadataFlags] to size-of Int.
template pathMetadataIncludeAll*[T: NavigationPathQueryParameters2D_PathMetadataFlags](_: typedesc[T]): set[T] = cast[set[T]](7)

type NavigationPathQueryParameters3D_PathfindingAlgorithm* {.size: sizeof(clong).} = enum
  pathfindingAlgorithmAstar = 0

type NavigationPathQueryParameters3D_PathPostProcessing* {.size: sizeof(clong).} = enum
  pathPostprocessingCorridorfunnel = 0
  pathPostprocessingEdgecentered = 1

type NavigationPathQueryParameters3D_PathMetadataFlags* = enum
  # pathMetadataIncludeNone = 0
  pathMetadataIncludeTypes = 0
  pathMetadataIncludeRids = 1
  pathMetadataIncludeOwners = 2
  `--Padding-Max--` = 63 # To align size-of set[NavigationPathQueryParameters3D_PathMetadataFlags] to size-of Int.
template pathMetadataIncludeAll*[T: NavigationPathQueryParameters3D_PathMetadataFlags](_: typedesc[T]): set[T] = cast[set[T]](7)

type NavigationPathQueryResult2D_PathSegmentType* {.size: sizeof(clong).} = enum
  pathSegmentTypeRegion = 0
  pathSegmentTypeLink = 1

type NavigationPathQueryResult3D_PathSegmentType* {.size: sizeof(clong).} = enum
  pathSegmentTypeRegion = 0
  pathSegmentTypeLink = 1

type NavigationPolygon_ParsedGeometryType* {.size: sizeof(clong).} = enum
  parsedGeometryMeshInstances = 0
  parsedGeometryStaticColliders = 1
  parsedGeometryBoth = 2
  parsedGeometryMax = 3

type NavigationPolygon_SourceGeometryMode* {.size: sizeof(clong).} = enum
  sourceGeometryRootNodeChildren = 0
  sourceGeometryGroupsWithChildren = 1
  sourceGeometryGroupsExplicit = 2
  sourceGeometryMax = 3

type NavigationServer3D_ProcessInfo* {.size: sizeof(clong).} = enum
  infoActiveMaps = 0
  infoRegionCount = 1
  infoAgentCount = 2
  infoLinkCount = 3
  infoPolygonCount = 4
  infoEdgeCount = 5
  infoEdgeMergeCount = 6
  infoEdgeConnectionCount = 7
  infoEdgeFreeCount = 8

type NinePatchRect_AxisStretchMode* {.size: sizeof(clong).} = enum
  axisStretchModeStretch = 0
  axisStretchModeTile = 1
  axisStretchModeTileFit = 2

type Node_ProcessMode* {.size: sizeof(clong).} = enum
  processModeInherit = 0
  processModePausable = 1
  processModeWhenPaused = 2
  processModeAlways = 3
  processModeDisabled = 4

type Node_ProcessThreadGroup* {.size: sizeof(clong).} = enum
  processThreadGroupInherit = 0
  processThreadGroupMainThread = 1
  processThreadGroupSubThread = 2

type Node_ProcessThreadMessages* = enum
  flagProcessThreadMessages = 0
  flagProcessThreadMessagesPhysics = 1
  `--Padding-Max--` = 63 # To align size-of set[Node_ProcessThreadMessages] to size-of Int.
template flagProcessThreadMessagesAll*[T: Node_ProcessThreadMessages](_: typedesc[T]): set[T] = cast[set[T]](3)

type Node_PhysicsInterpolationMode* {.size: sizeof(clong).} = enum
  physicsInterpolationModeInherit = 0
  physicsInterpolationModeOn = 1
  physicsInterpolationModeOff = 2

type Node_DuplicateFlags* {.size: sizeof(clong).} = enum
  duplicateSignals = 1
  duplicateGroups = 2
  duplicateScripts = 4
  duplicateUseInstantiation = 8

type Node_InternalMode* {.size: sizeof(clong).} = enum
  internalModeDisabled = 0
  internalModeFront = 1
  internalModeBack = 2

type Node_AutoTranslateMode* {.size: sizeof(clong).} = enum
  autoTranslateModeInherit = 0
  autoTranslateModeAlways = 1
  autoTranslateModeDisabled = 2

type Node3D_RotationEditMode* {.size: sizeof(clong).} = enum
  rotationEditModeEuler = 0
  rotationEditModeQuaternion = 1
  rotationEditModeBasis = 2

type Os_RenderingDriver* {.size: sizeof(clong).} = enum
  renderingDriverVulkan = 0
  renderingDriverOpengl3 = 1
  renderingDriverD3D12 = 2

type Os_SystemDir* {.size: sizeof(clong).} = enum
  systemDirDesktop = 0
  systemDirDcim = 1
  systemDirDocuments = 2
  systemDirDownloads = 3
  systemDirMovies = 4
  systemDirMusic = 5
  systemDirPictures = 6
  systemDirRingtones = 7

type Object_ConnectFlags* {.size: sizeof(clong).} = enum
  connectDeferred = 1
  connectPersist = 2
  connectOneShot = 4
  connectReferenceCounted = 8

type OccluderPolygon2D_CullMode* {.size: sizeof(clong).} = enum
  cullDisabled = 0
  cullClockwise = 1
  cullCounterClockwise = 2

type OmniLight3D_ShadowMode* {.size: sizeof(clong).} = enum
  shadowDualParaboloid = 0
  shadowCube = 1

type OpenXrapiExtension_OpenXrAlphaBlendModeSupport* {.size: sizeof(clong).} = enum
  openxrAlphaBlendModeSupportNone = 0
  openxrAlphaBlendModeSupportReal = 1
  openxrAlphaBlendModeSupportEmulating = 2

type OpenXrAction_ActionType* {.size: sizeof(clong).} = enum
  openxrActionBool = 0
  openxrActionFloat = 1
  openxrActionVector2 = 2
  openxrActionPose = 3

type OpenXrHand_Hands* {.size: sizeof(clong).} = enum
  handLeft = 0
  handRight = 1
  handMax = 2

type OpenXrHand_MotionRange* {.size: sizeof(clong).} = enum
  motionRangeUnobstructed = 0
  motionRangeConformToController = 1
  motionRangeMax = 2

type OpenXrHand_SkeletonRig* {.size: sizeof(clong).} = enum
  skeletonRigOpenxr = 0
  skeletonRigHumanoid = 1
  skeletonRigMax = 2

type OpenXrHand_BoneUpdate* {.size: sizeof(clong).} = enum
  boneUpdateFull = 0
  boneUpdateRotationOnly = 1
  boneUpdateMax = 2

type OpenXrInterface_Hand* {.size: sizeof(clong).} = enum
  handLeft = 0
  handRight = 1
  handMax = 2

type OpenXrInterface_HandMotionRange* {.size: sizeof(clong).} = enum
  handMotionRangeUnobstructed = 0
  handMotionRangeConformToController = 1
  handMotionRangeMax = 2

type OpenXrInterface_HandTrackedSource* {.size: sizeof(clong).} = enum
  handTrackedSourceUnknown = 0
  handTrackedSourceUnobstructed = 1
  handTrackedSourceController = 2
  handTrackedSourceMax = 3

type OpenXrInterface_HandJoints* {.size: sizeof(clong).} = enum
  handJointPalm = 0
  handJointWrist = 1
  handJointThumbMetacarpal = 2
  handJointThumbProximal = 3
  handJointThumbDistal = 4
  handJointThumbTip = 5
  handJointIndexMetacarpal = 6
  handJointIndexProximal = 7
  handJointIndexIntermediate = 8
  handJointIndexDistal = 9
  handJointIndexTip = 10
  handJointMiddleMetacarpal = 11
  handJointMiddleProximal = 12
  handJointMiddleIntermediate = 13
  handJointMiddleDistal = 14
  handJointMiddleTip = 15
  handJointRingMetacarpal = 16
  handJointRingProximal = 17
  handJointRingIntermediate = 18
  handJointRingDistal = 19
  handJointRingTip = 20
  handJointLittleMetacarpal = 21
  handJointLittleProximal = 22
  handJointLittleIntermediate = 23
  handJointLittleDistal = 24
  handJointLittleTip = 25
  handJointMax = 26

type OpenXrInterface_HandJointFlags* = enum
  # handJointNone = 0
  handJointOrientationValid = 0
  handJointOrientationTracked = 1
  handJointPositionValid = 2
  handJointPositionTracked = 3
  handJointLinearVelocityValid = 4
  handJointAngularVelocityValid = 5
  `--Padding-Max--` = 63 # To align size-of set[OpenXrInterface_HandJointFlags] to size-of Int.

type PackedScene_GenEditState* {.size: sizeof(clong).} = enum
  genEditStateDisabled = 0
  genEditStateInstance = 1
  genEditStateMain = 2
  genEditStateMainInherited = 3

type PacketPeerDtls_Status* {.size: sizeof(clong).} = enum
  statusDisconnected = 0
  statusHandshaking = 1
  statusConnected = 2
  statusError = 3
  statusErrorHostnameMismatch = 4

type ParticleProcessMaterial_Parameter* {.size: sizeof(clong).} = enum
  paramInitialLinearVelocity = 0
  paramAngularVelocity = 1
  paramOrbitVelocity = 2
  paramLinearAccel = 3
  paramRadialAccel = 4
  paramTangentialAccel = 5
  paramDamping = 6
  paramAngle = 7
  paramScale = 8
  paramHueVariation = 9
  paramAnimSpeed = 10
  paramAnimOffset = 11
  paramTurbInfluenceOverLife = 12
  paramTurbVelInfluence = 13
  paramTurbInitDisplacement = 14
  paramRadialVelocity = 15
  paramDirectionalVelocity = 16
  paramScaleOverVelocity = 17
  paramMax = 18

type ParticleProcessMaterial_ParticleFlags* {.size: sizeof(clong).} = enum
  particleFlagAlignYToVelocity = 0
  particleFlagRotateY = 1
  particleFlagDisableZ = 2
  particleFlagDampingAsFriction = 3
  particleFlagMax = 4

type ParticleProcessMaterial_EmissionShape* {.size: sizeof(clong).} = enum
  emissionShapePoint = 0
  emissionShapeSphere = 1
  emissionShapeSphereSurface = 2
  emissionShapeBox = 3
  emissionShapePoints = 4
  emissionShapeDirectedPoints = 5
  emissionShapeRing = 6
  emissionShapeMax = 7

type ParticleProcessMaterial_SubEmitterMode* {.size: sizeof(clong).} = enum
  subEmitterDisabled = 0
  subEmitterConstant = 1
  subEmitterAtEnd = 2
  subEmitterAtCollision = 3
  subEmitterMax = 4

type ParticleProcessMaterial_CollisionMode* {.size: sizeof(clong).} = enum
  collisionDisabled = 0
  collisionRigid = 1
  collisionHideOnContact = 2
  collisionMax = 3

type PathFollow3D_RotationMode* {.size: sizeof(clong).} = enum
  rotationNone = 0
  rotationY = 1
  rotationXy = 2
  rotationXyz = 3
  rotationOriented = 4

type Performance_Monitor* {.size: sizeof(clong).} = enum
  timeFps = 0
  timeProcess = 1
  timePhysicsProcess = 2
  timeNavigationProcess = 3
  memoryStatic = 4
  memoryStaticMax = 5
  memoryMessageBufferMax = 6
  objectCount = 7
  objectResourceCount = 8
  objectNodeCount = 9
  objectOrphanNodeCount = 10
  renderTotalObjectsInFrame = 11
  renderTotalPrimitivesInFrame = 12
  renderTotalDrawCallsInFrame = 13
  renderVideoMemUsed = 14
  renderTextureMemUsed = 15
  renderBufferMemUsed = 16
  physics2DActiveObjects = 17
  physics2DCollisionPairs = 18
  physics2DIslandCount = 19
  physics3DActiveObjects = 20
  physics3DCollisionPairs = 21
  physics3DIslandCount = 22
  audioOutputLatency = 23
  navigationActiveMaps = 24
  navigationRegionCount = 25
  navigationAgentCount = 26
  navigationLinkCount = 27
  navigationPolygonCount = 28
  navigationEdgeCount = 29
  navigationEdgeMergeCount = 30
  navigationEdgeConnectionCount = 31
  navigationEdgeFreeCount = 32
  monitorMax = 33

type PhysicalBone3D_DampMode* {.size: sizeof(clong).} = enum
  dampModeCombine = 0
  dampModeReplace = 1

type PhysicalBone3D_JointType* {.size: sizeof(clong).} = enum
  jointTypeNone = 0
  jointTypePin = 1
  jointTypeCone = 2
  jointTypeHinge = 3
  jointTypeSlider = 4
  jointType6Dof = 5

type PhysicsServer2D_SpaceParameter* {.size: sizeof(clong).} = enum
  spaceParamContactRecycleRadius = 0
  spaceParamContactMaxSeparation = 1
  spaceParamContactMaxAllowedPenetration = 2
  spaceParamContactDefaultBias = 3
  spaceParamBodyLinearVelocitySleepThreshold = 4
  spaceParamBodyAngularVelocitySleepThreshold = 5
  spaceParamBodyTimeToSleep = 6
  spaceParamConstraintDefaultBias = 7
  spaceParamSolverIterations = 8

type PhysicsServer2D_ShapeType* {.size: sizeof(clong).} = enum
  shapeWorldBoundary = 0
  shapeSeparationRay = 1
  shapeSegment = 2
  shapeCircle = 3
  shapeRectangle = 4
  shapeCapsule = 5
  shapeConvexPolygon = 6
  shapeConcavePolygon = 7
  shapeCustom = 8

type PhysicsServer2D_AreaParameter* {.size: sizeof(clong).} = enum
  areaParamGravityOverrideMode = 0
  areaParamGravity = 1
  areaParamGravityVector = 2
  areaParamGravityIsPoint = 3
  areaParamGravityPointUnitDistance = 4
  areaParamLinearDampOverrideMode = 5
  areaParamLinearDamp = 6
  areaParamAngularDampOverrideMode = 7
  areaParamAngularDamp = 8
  areaParamPriority = 9

type PhysicsServer2D_AreaSpaceOverrideMode* {.size: sizeof(clong).} = enum
  areaSpaceOverrideDisabled = 0
  areaSpaceOverrideCombine = 1
  areaSpaceOverrideCombineReplace = 2
  areaSpaceOverrideReplace = 3
  areaSpaceOverrideReplaceCombine = 4

type PhysicsServer2D_BodyMode* {.size: sizeof(clong).} = enum
  bodyModeStatic = 0
  bodyModeKinematic = 1
  bodyModeRigid = 2
  bodyModeRigidLinear = 3

type PhysicsServer2D_BodyParameter* {.size: sizeof(clong).} = enum
  bodyParamBounce = 0
  bodyParamFriction = 1
  bodyParamMass = 2
  bodyParamInertia = 3
  bodyParamCenterOfMass = 4
  bodyParamGravityScale = 5
  bodyParamLinearDampMode = 6
  bodyParamAngularDampMode = 7
  bodyParamLinearDamp = 8
  bodyParamAngularDamp = 9
  bodyParamMax = 10

type PhysicsServer2D_BodyDampMode* {.size: sizeof(clong).} = enum
  bodyDampModeCombine = 0
  bodyDampModeReplace = 1

type PhysicsServer2D_BodyState* {.size: sizeof(clong).} = enum
  bodyStateTransform = 0
  bodyStateLinearVelocity = 1
  bodyStateAngularVelocity = 2
  bodyStateSleeping = 3
  bodyStateCanSleep = 4

type PhysicsServer2D_JointType* {.size: sizeof(clong).} = enum
  jointTypePin = 0
  jointTypeGroove = 1
  jointTypeDampedSpring = 2
  jointTypeMax = 3

type PhysicsServer2D_JointParam* {.size: sizeof(clong).} = enum
  jointParamBias = 0
  jointParamMaxBias = 1
  jointParamMaxForce = 2

type PhysicsServer2D_PinJointParam* {.size: sizeof(clong).} = enum
  pinJointSoftness = 0
  pinJointLimitUpper = 1
  pinJointLimitLower = 2
  pinJointMotorTargetVelocity = 3

type PhysicsServer2D_PinJointFlag* {.size: sizeof(clong).} = enum
  pinJointFlagAngularLimitEnabled = 0
  pinJointFlagMotorEnabled = 1

type PhysicsServer2D_DampedSpringParam* {.size: sizeof(clong).} = enum
  dampedSpringRestLength = 0
  dampedSpringStiffness = 1
  dampedSpringDamping = 2

type PhysicsServer2D_CcdMode* {.size: sizeof(clong).} = enum
  ccdModeDisabled = 0
  ccdModeCastRay = 1
  ccdModeCastShape = 2

type PhysicsServer2D_AreaBodyStatus* {.size: sizeof(clong).} = enum
  areaBodyAdded = 0
  areaBodyRemoved = 1

type PhysicsServer2D_ProcessInfo* {.size: sizeof(clong).} = enum
  infoActiveObjects = 0
  infoCollisionPairs = 1
  infoIslandCount = 2

type PhysicsServer3D_JointType* {.size: sizeof(clong).} = enum
  jointTypePin = 0
  jointTypeHinge = 1
  jointTypeSlider = 2
  jointTypeConeTwist = 3
  jointType6Dof = 4
  jointTypeMax = 5

type PhysicsServer3D_PinJointParam* {.size: sizeof(clong).} = enum
  pinJointBias = 0
  pinJointDamping = 1
  pinJointImpulseClamp = 2

type PhysicsServer3D_HingeJointParam* {.size: sizeof(clong).} = enum
  hingeJointBias = 0
  hingeJointLimitUpper = 1
  hingeJointLimitLower = 2
  hingeJointLimitBias = 3
  hingeJointLimitSoftness = 4
  hingeJointLimitRelaxation = 5
  hingeJointMotorTargetVelocity = 6
  hingeJointMotorMaxImpulse = 7

type PhysicsServer3D_HingeJointFlag* {.size: sizeof(clong).} = enum
  hingeJointFlagUseLimit = 0
  hingeJointFlagEnableMotor = 1

type PhysicsServer3D_SliderJointParam* {.size: sizeof(clong).} = enum
  sliderJointLinearLimitUpper = 0
  sliderJointLinearLimitLower = 1
  sliderJointLinearLimitSoftness = 2
  sliderJointLinearLimitRestitution = 3
  sliderJointLinearLimitDamping = 4
  sliderJointLinearMotionSoftness = 5
  sliderJointLinearMotionRestitution = 6
  sliderJointLinearMotionDamping = 7
  sliderJointLinearOrthogonalSoftness = 8
  sliderJointLinearOrthogonalRestitution = 9
  sliderJointLinearOrthogonalDamping = 10
  sliderJointAngularLimitUpper = 11
  sliderJointAngularLimitLower = 12
  sliderJointAngularLimitSoftness = 13
  sliderJointAngularLimitRestitution = 14
  sliderJointAngularLimitDamping = 15
  sliderJointAngularMotionSoftness = 16
  sliderJointAngularMotionRestitution = 17
  sliderJointAngularMotionDamping = 18
  sliderJointAngularOrthogonalSoftness = 19
  sliderJointAngularOrthogonalRestitution = 20
  sliderJointAngularOrthogonalDamping = 21
  sliderJointMax = 22

type PhysicsServer3D_ConeTwistJointParam* {.size: sizeof(clong).} = enum
  coneTwistJointSwingSpan = 0
  coneTwistJointTwistSpan = 1
  coneTwistJointBias = 2
  coneTwistJointSoftness = 3
  coneTwistJointRelaxation = 4

type PhysicsServer3D_G6DofJointAxisParam* {.size: sizeof(clong).} = enum
  g6DofJointLinearLowerLimit = 0
  g6DofJointLinearUpperLimit = 1
  g6DofJointLinearLimitSoftness = 2
  g6DofJointLinearRestitution = 3
  g6DofJointLinearDamping = 4
  g6DofJointLinearMotorTargetVelocity = 5
  g6DofJointLinearMotorForceLimit = 6
  g6DofJointLinearSpringStiffness = 7
  g6DofJointLinearSpringDamping = 8
  g6DofJointLinearSpringEquilibriumPoint = 9
  g6DofJointAngularLowerLimit = 10
  g6DofJointAngularUpperLimit = 11
  g6DofJointAngularLimitSoftness = 12
  g6DofJointAngularDamping = 13
  g6DofJointAngularRestitution = 14
  g6DofJointAngularForceLimit = 15
  g6DofJointAngularErp = 16
  g6DofJointAngularMotorTargetVelocity = 17
  g6DofJointAngularMotorForceLimit = 18
  g6DofJointAngularSpringStiffness = 19
  g6DofJointAngularSpringDamping = 20
  g6DofJointAngularSpringEquilibriumPoint = 21
  g6DofJointMax = 22

type PhysicsServer3D_G6DofJointAxisFlag* {.size: sizeof(clong).} = enum
  g6DofJointFlagEnableLinearLimit = 0
  g6DofJointFlagEnableAngularLimit = 1
  g6DofJointFlagEnableAngularSpring = 2
  g6DofJointFlagEnableLinearSpring = 3
  g6DofJointFlagEnableMotor = 4
  g6DofJointFlagEnableLinearMotor = 5
  g6DofJointFlagMax = 6

type PhysicsServer3D_ShapeType* {.size: sizeof(clong).} = enum
  shapeWorldBoundary = 0
  shapeSeparationRay = 1
  shapeSphere = 2
  shapeBox = 3
  shapeCapsule = 4
  shapeCylinder = 5
  shapeConvexPolygon = 6
  shapeConcavePolygon = 7
  shapeHeightmap = 8
  shapeSoftBody = 9
  shapeCustom = 10

type PhysicsServer3D_AreaParameter* {.size: sizeof(clong).} = enum
  areaParamGravityOverrideMode = 0
  areaParamGravity = 1
  areaParamGravityVector = 2
  areaParamGravityIsPoint = 3
  areaParamGravityPointUnitDistance = 4
  areaParamLinearDampOverrideMode = 5
  areaParamLinearDamp = 6
  areaParamAngularDampOverrideMode = 7
  areaParamAngularDamp = 8
  areaParamPriority = 9
  areaParamWindForceMagnitude = 10
  areaParamWindSource = 11
  areaParamWindDirection = 12
  areaParamWindAttenuationFactor = 13

type PhysicsServer3D_AreaSpaceOverrideMode* {.size: sizeof(clong).} = enum
  areaSpaceOverrideDisabled = 0
  areaSpaceOverrideCombine = 1
  areaSpaceOverrideCombineReplace = 2
  areaSpaceOverrideReplace = 3
  areaSpaceOverrideReplaceCombine = 4

type PhysicsServer3D_BodyMode* {.size: sizeof(clong).} = enum
  bodyModeStatic = 0
  bodyModeKinematic = 1
  bodyModeRigid = 2
  bodyModeRigidLinear = 3

type PhysicsServer3D_BodyParameter* {.size: sizeof(clong).} = enum
  bodyParamBounce = 0
  bodyParamFriction = 1
  bodyParamMass = 2
  bodyParamInertia = 3
  bodyParamCenterOfMass = 4
  bodyParamGravityScale = 5
  bodyParamLinearDampMode = 6
  bodyParamAngularDampMode = 7
  bodyParamLinearDamp = 8
  bodyParamAngularDamp = 9
  bodyParamMax = 10

type PhysicsServer3D_BodyDampMode* {.size: sizeof(clong).} = enum
  bodyDampModeCombine = 0
  bodyDampModeReplace = 1

type PhysicsServer3D_BodyState* {.size: sizeof(clong).} = enum
  bodyStateTransform = 0
  bodyStateLinearVelocity = 1
  bodyStateAngularVelocity = 2
  bodyStateSleeping = 3
  bodyStateCanSleep = 4

type PhysicsServer3D_AreaBodyStatus* {.size: sizeof(clong).} = enum
  areaBodyAdded = 0
  areaBodyRemoved = 1

type PhysicsServer3D_ProcessInfo* {.size: sizeof(clong).} = enum
  infoActiveObjects = 0
  infoCollisionPairs = 1
  infoIslandCount = 2

type PhysicsServer3D_SpaceParameter* {.size: sizeof(clong).} = enum
  spaceParamContactRecycleRadius = 0
  spaceParamContactMaxSeparation = 1
  spaceParamContactMaxAllowedPenetration = 2
  spaceParamContactDefaultBias = 3
  spaceParamBodyLinearVelocitySleepThreshold = 4
  spaceParamBodyAngularVelocitySleepThreshold = 5
  spaceParamBodyTimeToSleep = 6
  spaceParamSolverIterations = 7

type PhysicsServer3D_BodyAxis* {.size: sizeof(clong).} = enum
  bodyAxisLinearX = 1
  bodyAxisLinearY = 2
  bodyAxisLinearZ = 4
  bodyAxisAngularX = 8
  bodyAxisAngularY = 16
  bodyAxisAngularZ = 32

type PinJoint3D_Param* {.size: sizeof(clong).} = enum
  paramBias = 0
  paramDamping = 1
  paramImpulseClamp = 2

type PlaneMesh_Orientation* {.size: sizeof(clong).} = enum
  faceX = 0
  faceY = 1
  faceZ = 2

type PortableCompressedTexture2D_CompressionMode* {.size: sizeof(clong).} = enum
  compressionModeLossless = 0
  compressionModeLossy = 1
  compressionModeBasisUniversal = 2
  compressionModeS3Tc = 3
  compressionModeEtc2 = 4
  compressionModeBptc = 5

type ProgressBar_FillMode* {.size: sizeof(clong).} = enum
  fillBeginToEnd = 0
  fillEndToBegin = 1
  fillTopToBottom = 2
  fillBottomToTop = 3

type ReflectionProbe_UpdateMode* {.size: sizeof(clong).} = enum
  updateOnce = 0
  updateAlways = 1

type ReflectionProbe_AmbientMode* {.size: sizeof(clong).} = enum
  ambientDisabled = 0
  ambientEnvironment = 1
  ambientColor = 2

type RenderingDevice_DeviceType* {.size: sizeof(clong).} = enum
  deviceTypeOther = 0
  deviceTypeIntegratedGpu = 1
  deviceTypeDiscreteGpu = 2
  deviceTypeVirtualGpu = 3
  deviceTypeCpu = 4
  deviceTypeMax = 5

type RenderingDevice_DriverResource* {.size: sizeof(clong).} = enum
  driverResourceLogicalDevice = 0
  driverResourcePhysicalDevice = 1
  driverResourceTopmostObject = 2
  driverResourceCommandQueue = 3
  driverResourceQueueFamily = 4
  driverResourceTexture = 5
  driverResourceTextureView = 6
  driverResourceTextureDataFormat = 7
  driverResourceSampler = 8
  driverResourceUniformSet = 9
  driverResourceBuffer = 10
  driverResourceComputePipeline = 11
  driverResourceRenderPipeline = 12
template driverResourceVulkanDevice*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(0)
template driverResourceVulkanPhysicalDevice*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(1)
template driverResourceVulkanInstance*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(2)
template driverResourceVulkanQueue*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(3)
template driverResourceVulkanQueueFamilyIndex*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(4)
template driverResourceVulkanImage*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(5)
template driverResourceVulkanImageView*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(6)
template driverResourceVulkanImageNativeTextureFormat*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(7)
template driverResourceVulkanSampler*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(8)
template driverResourceVulkanDescriptorSet*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(9)
template driverResourceVulkanBuffer*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(10)
template driverResourceVulkanComputePipeline*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(11)
template driverResourceVulkanRenderPipeline*[T: RenderingDevice_DriverResource](_: typedesc[T]): T = T(12)

type RenderingDevice_DataFormat* {.size: sizeof(clong).} = enum
  dataFormatR4G4UnormPack8 = 0
  dataFormatR4G4B4A4UnormPack16 = 1
  dataFormatB4G4R4A4UnormPack16 = 2
  dataFormatR5G6B5UnormPack16 = 3
  dataFormatB5G6R5UnormPack16 = 4
  dataFormatR5G5B5A1UnormPack16 = 5
  dataFormatB5G5R5A1UnormPack16 = 6
  dataFormatA1R5G5B5UnormPack16 = 7
  dataFormatR8Unorm = 8
  dataFormatR8Snorm = 9
  dataFormatR8Uscaled = 10
  dataFormatR8Sscaled = 11
  dataFormatR8Uint = 12
  dataFormatR8Sint = 13
  dataFormatR8Srgb = 14
  dataFormatR8G8Unorm = 15
  dataFormatR8G8Snorm = 16
  dataFormatR8G8Uscaled = 17
  dataFormatR8G8Sscaled = 18
  dataFormatR8G8Uint = 19
  dataFormatR8G8Sint = 20
  dataFormatR8G8Srgb = 21
  dataFormatR8G8B8Unorm = 22
  dataFormatR8G8B8Snorm = 23
  dataFormatR8G8B8Uscaled = 24
  dataFormatR8G8B8Sscaled = 25
  dataFormatR8G8B8Uint = 26
  dataFormatR8G8B8Sint = 27
  dataFormatR8G8B8Srgb = 28
  dataFormatB8G8R8Unorm = 29
  dataFormatB8G8R8Snorm = 30
  dataFormatB8G8R8Uscaled = 31
  dataFormatB8G8R8Sscaled = 32
  dataFormatB8G8R8Uint = 33
  dataFormatB8G8R8Sint = 34
  dataFormatB8G8R8Srgb = 35
  dataFormatR8G8B8A8Unorm = 36
  dataFormatR8G8B8A8Snorm = 37
  dataFormatR8G8B8A8Uscaled = 38
  dataFormatR8G8B8A8Sscaled = 39
  dataFormatR8G8B8A8Uint = 40
  dataFormatR8G8B8A8Sint = 41
  dataFormatR8G8B8A8Srgb = 42
  dataFormatB8G8R8A8Unorm = 43
  dataFormatB8G8R8A8Snorm = 44
  dataFormatB8G8R8A8Uscaled = 45
  dataFormatB8G8R8A8Sscaled = 46
  dataFormatB8G8R8A8Uint = 47
  dataFormatB8G8R8A8Sint = 48
  dataFormatB8G8R8A8Srgb = 49
  dataFormatA8B8G8R8UnormPack32 = 50
  dataFormatA8B8G8R8SnormPack32 = 51
  dataFormatA8B8G8R8UscaledPack32 = 52
  dataFormatA8B8G8R8SscaledPack32 = 53
  dataFormatA8B8G8R8UintPack32 = 54
  dataFormatA8B8G8R8SintPack32 = 55
  dataFormatA8B8G8R8SrgbPack32 = 56
  dataFormatA2R10G10B10UnormPack32 = 57
  dataFormatA2R10G10B10SnormPack32 = 58
  dataFormatA2R10G10B10UscaledPack32 = 59
  dataFormatA2R10G10B10SscaledPack32 = 60
  dataFormatA2R10G10B10UintPack32 = 61
  dataFormatA2R10G10B10SintPack32 = 62
  dataFormatA2B10G10R10UnormPack32 = 63
  dataFormatA2B10G10R10SnormPack32 = 64
  dataFormatA2B10G10R10UscaledPack32 = 65
  dataFormatA2B10G10R10SscaledPack32 = 66
  dataFormatA2B10G10R10UintPack32 = 67
  dataFormatA2B10G10R10SintPack32 = 68
  dataFormatR16Unorm = 69
  dataFormatR16Snorm = 70
  dataFormatR16Uscaled = 71
  dataFormatR16Sscaled = 72
  dataFormatR16Uint = 73
  dataFormatR16Sint = 74
  dataFormatR16Sfloat = 75
  dataFormatR16G16Unorm = 76
  dataFormatR16G16Snorm = 77
  dataFormatR16G16Uscaled = 78
  dataFormatR16G16Sscaled = 79
  dataFormatR16G16Uint = 80
  dataFormatR16G16Sint = 81
  dataFormatR16G16Sfloat = 82
  dataFormatR16G16B16Unorm = 83
  dataFormatR16G16B16Snorm = 84
  dataFormatR16G16B16Uscaled = 85
  dataFormatR16G16B16Sscaled = 86
  dataFormatR16G16B16Uint = 87
  dataFormatR16G16B16Sint = 88
  dataFormatR16G16B16Sfloat = 89
  dataFormatR16G16B16A16Unorm = 90
  dataFormatR16G16B16A16Snorm = 91
  dataFormatR16G16B16A16Uscaled = 92
  dataFormatR16G16B16A16Sscaled = 93
  dataFormatR16G16B16A16Uint = 94
  dataFormatR16G16B16A16Sint = 95
  dataFormatR16G16B16A16Sfloat = 96
  dataFormatR32Uint = 97
  dataFormatR32Sint = 98
  dataFormatR32Sfloat = 99
  dataFormatR32G32Uint = 100
  dataFormatR32G32Sint = 101
  dataFormatR32G32Sfloat = 102
  dataFormatR32G32B32Uint = 103
  dataFormatR32G32B32Sint = 104
  dataFormatR32G32B32Sfloat = 105
  dataFormatR32G32B32A32Uint = 106
  dataFormatR32G32B32A32Sint = 107
  dataFormatR32G32B32A32Sfloat = 108
  dataFormatR64Uint = 109
  dataFormatR64Sint = 110
  dataFormatR64Sfloat = 111
  dataFormatR64G64Uint = 112
  dataFormatR64G64Sint = 113
  dataFormatR64G64Sfloat = 114
  dataFormatR64G64B64Uint = 115
  dataFormatR64G64B64Sint = 116
  dataFormatR64G64B64Sfloat = 117
  dataFormatR64G64B64A64Uint = 118
  dataFormatR64G64B64A64Sint = 119
  dataFormatR64G64B64A64Sfloat = 120
  dataFormatB10G11R11UfloatPack32 = 121
  dataFormatE5B9G9R9UfloatPack32 = 122
  dataFormatD16Unorm = 123
  dataFormatX8D24UnormPack32 = 124
  dataFormatD32Sfloat = 125
  dataFormatS8Uint = 126
  dataFormatD16UnormS8Uint = 127
  dataFormatD24UnormS8Uint = 128
  dataFormatD32SfloatS8Uint = 129
  dataFormatBc1RgbUnormBlock = 130
  dataFormatBc1RgbSrgbBlock = 131
  dataFormatBc1RgbaUnormBlock = 132
  dataFormatBc1RgbaSrgbBlock = 133
  dataFormatBc2UnormBlock = 134
  dataFormatBc2SrgbBlock = 135
  dataFormatBc3UnormBlock = 136
  dataFormatBc3SrgbBlock = 137
  dataFormatBc4UnormBlock = 138
  dataFormatBc4SnormBlock = 139
  dataFormatBc5UnormBlock = 140
  dataFormatBc5SnormBlock = 141
  dataFormatBc6HUfloatBlock = 142
  dataFormatBc6HSfloatBlock = 143
  dataFormatBc7UnormBlock = 144
  dataFormatBc7SrgbBlock = 145
  dataFormatEtc2R8G8B8UnormBlock = 146
  dataFormatEtc2R8G8B8SrgbBlock = 147
  dataFormatEtc2R8G8B8A1UnormBlock = 148
  dataFormatEtc2R8G8B8A1SrgbBlock = 149
  dataFormatEtc2R8G8B8A8UnormBlock = 150
  dataFormatEtc2R8G8B8A8SrgbBlock = 151
  dataFormatEacR11UnormBlock = 152
  dataFormatEacR11SnormBlock = 153
  dataFormatEacR11G11UnormBlock = 154
  dataFormatEacR11G11SnormBlock = 155
  dataFormatAstc4X4UnormBlock = 156
  dataFormatAstc4X4SrgbBlock = 157
  dataFormatAstc5X4UnormBlock = 158
  dataFormatAstc5X4SrgbBlock = 159
  dataFormatAstc5X5UnormBlock = 160
  dataFormatAstc5X5SrgbBlock = 161
  dataFormatAstc6X5UnormBlock = 162
  dataFormatAstc6X5SrgbBlock = 163
  dataFormatAstc6X6UnormBlock = 164
  dataFormatAstc6X6SrgbBlock = 165
  dataFormatAstc8X5UnormBlock = 166
  dataFormatAstc8X5SrgbBlock = 167
  dataFormatAstc8X6UnormBlock = 168
  dataFormatAstc8X6SrgbBlock = 169
  dataFormatAstc8X8UnormBlock = 170
  dataFormatAstc8X8SrgbBlock = 171
  dataFormatAstc10X5UnormBlock = 172
  dataFormatAstc10X5SrgbBlock = 173
  dataFormatAstc10X6UnormBlock = 174
  dataFormatAstc10X6SrgbBlock = 175
  dataFormatAstc10X8UnormBlock = 176
  dataFormatAstc10X8SrgbBlock = 177
  dataFormatAstc10X10UnormBlock = 178
  dataFormatAstc10X10SrgbBlock = 179
  dataFormatAstc12X10UnormBlock = 180
  dataFormatAstc12X10SrgbBlock = 181
  dataFormatAstc12X12UnormBlock = 182
  dataFormatAstc12X12SrgbBlock = 183
  dataFormatG8B8G8R8422Unorm = 184
  dataFormatB8G8R8G8422Unorm = 185
  dataFormatG8B8R83Plane420Unorm = 186
  dataFormatG8B8R82Plane420Unorm = 187
  dataFormatG8B8R83Plane422Unorm = 188
  dataFormatG8B8R82Plane422Unorm = 189
  dataFormatG8B8R83Plane444Unorm = 190
  dataFormatR10X6UnormPack16 = 191
  dataFormatR10X6G10X6Unorm2Pack16 = 192
  dataFormatR10X6G10X6B10X6A10X6Unorm4Pack16 = 193
  dataFormatG10X6B10X6G10X6R10X6422Unorm4Pack16 = 194
  dataFormatB10X6G10X6R10X6G10X6422Unorm4Pack16 = 195
  dataFormatG10X6B10X6R10X63Plane420Unorm3Pack16 = 196
  dataFormatG10X6B10X6R10X62Plane420Unorm3Pack16 = 197
  dataFormatG10X6B10X6R10X63Plane422Unorm3Pack16 = 198
  dataFormatG10X6B10X6R10X62Plane422Unorm3Pack16 = 199
  dataFormatG10X6B10X6R10X63Plane444Unorm3Pack16 = 200
  dataFormatR12X4UnormPack16 = 201
  dataFormatR12X4G12X4Unorm2Pack16 = 202
  dataFormatR12X4G12X4B12X4A12X4Unorm4Pack16 = 203
  dataFormatG12X4B12X4G12X4R12X4422Unorm4Pack16 = 204
  dataFormatB12X4G12X4R12X4G12X4422Unorm4Pack16 = 205
  dataFormatG12X4B12X4R12X43Plane420Unorm3Pack16 = 206
  dataFormatG12X4B12X4R12X42Plane420Unorm3Pack16 = 207
  dataFormatG12X4B12X4R12X43Plane422Unorm3Pack16 = 208
  dataFormatG12X4B12X4R12X42Plane422Unorm3Pack16 = 209
  dataFormatG12X4B12X4R12X43Plane444Unorm3Pack16 = 210
  dataFormatG16B16G16R16422Unorm = 211
  dataFormatB16G16R16G16422Unorm = 212
  dataFormatG16B16R163Plane420Unorm = 213
  dataFormatG16B16R162Plane420Unorm = 214
  dataFormatG16B16R163Plane422Unorm = 215
  dataFormatG16B16R162Plane422Unorm = 216
  dataFormatG16B16R163Plane444Unorm = 217
  dataFormatMax = 218

type RenderingDevice_BarrierMask* = enum
  barrierMaskVertex = 0
  barrierMaskCompute = 1
  barrierMaskTransfer = 2
  barrierMaskFragment = 3
  barrierMaskNoBarrier = 15
  `--Padding-Max--` = 63 # To align size-of set[RenderingDevice_BarrierMask] to size-of Int.
template barrierMaskRaster*[T: RenderingDevice_BarrierMask](_: typedesc[T]): set[T] = cast[set[T]](9)
template barrierMaskAllBarriers*[T: RenderingDevice_BarrierMask](_: typedesc[T]): set[T] = cast[set[T]](32767)

type RenderingDevice_TextureType* {.size: sizeof(clong).} = enum
  textureType1D = 0
  textureType2D = 1
  textureType3D = 2
  textureTypeCube = 3
  textureType1DArray = 4
  textureType2DArray = 5
  textureTypeCubeArray = 6
  textureTypeMax = 7

type RenderingDevice_TextureSamples* {.size: sizeof(clong).} = enum
  textureSamples1 = 0
  textureSamples2 = 1
  textureSamples4 = 2
  textureSamples8 = 3
  textureSamples16 = 4
  textureSamples32 = 5
  textureSamples64 = 6
  textureSamplesMax = 7

type RenderingDevice_TextureUsageBits* = enum
  textureUsageSamplingBit = 0
  textureUsageColorAttachmentBit = 1
  textureUsageDepthStencilAttachmentBit = 2
  textureUsageStorageBit = 3
  textureUsageStorageAtomicBit = 4
  textureUsageCpuReadBit = 5
  textureUsageCanUpdateBit = 6
  textureUsageCanCopyFromBit = 7
  textureUsageCanCopyToBit = 8
  textureUsageInputAttachmentBit = 9
  `--Padding-Max--` = 63 # To align size-of set[RenderingDevice_TextureUsageBits] to size-of Int.

type RenderingDevice_TextureSwizzle* {.size: sizeof(clong).} = enum
  textureSwizzleIdentity = 0
  textureSwizzleZero = 1
  textureSwizzleOne = 2
  textureSwizzleR = 3
  textureSwizzleG = 4
  textureSwizzleB = 5
  textureSwizzleA = 6
  textureSwizzleMax = 7

type RenderingDevice_TextureSliceType* {.size: sizeof(clong).} = enum
  textureSlice2D = 0
  textureSliceCubemap = 1
  textureSlice3D = 2

type RenderingDevice_SamplerFilter* {.size: sizeof(clong).} = enum
  samplerFilterNearest = 0
  samplerFilterLinear = 1

type RenderingDevice_SamplerRepeatMode* {.size: sizeof(clong).} = enum
  samplerRepeatModeRepeat = 0
  samplerRepeatModeMirroredRepeat = 1
  samplerRepeatModeClampToEdge = 2
  samplerRepeatModeClampToBorder = 3
  samplerRepeatModeMirrorClampToEdge = 4
  samplerRepeatModeMax = 5

type RenderingDevice_SamplerBorderColor* {.size: sizeof(clong).} = enum
  samplerBorderColorFloatTransparentBlack = 0
  samplerBorderColorIntTransparentBlack = 1
  samplerBorderColorFloatOpaqueBlack = 2
  samplerBorderColorIntOpaqueBlack = 3
  samplerBorderColorFloatOpaqueWhite = 4
  samplerBorderColorIntOpaqueWhite = 5
  samplerBorderColorMax = 6

type RenderingDevice_VertexFrequency* {.size: sizeof(clong).} = enum
  vertexFrequencyVertex = 0
  vertexFrequencyInstance = 1

type RenderingDevice_IndexBufferFormat* {.size: sizeof(clong).} = enum
  indexBufferFormatUint16 = 0
  indexBufferFormatUint32 = 1

type RenderingDevice_StorageBufferUsage* = enum
  storageBufferUsageDispatchIndirect = 0
  `--Padding-Max--` = 63 # To align size-of set[RenderingDevice_StorageBufferUsage] to size-of Int.

type RenderingDevice_UniformType* {.size: sizeof(clong).} = enum
  uniformTypeSampler = 0
  uniformTypeSamplerWithTexture = 1
  uniformTypeTexture = 2
  uniformTypeImage = 3
  uniformTypeTextureBuffer = 4
  uniformTypeSamplerWithTextureBuffer = 5
  uniformTypeImageBuffer = 6
  uniformTypeUniformBuffer = 7
  uniformTypeStorageBuffer = 8
  uniformTypeInputAttachment = 9
  uniformTypeMax = 10

type RenderingDevice_RenderPrimitive* {.size: sizeof(clong).} = enum
  renderPrimitivePoints = 0
  renderPrimitiveLines = 1
  renderPrimitiveLinesWithAdjacency = 2
  renderPrimitiveLinestrips = 3
  renderPrimitiveLinestripsWithAdjacency = 4
  renderPrimitiveTriangles = 5
  renderPrimitiveTrianglesWithAdjacency = 6
  renderPrimitiveTriangleStrips = 7
  renderPrimitiveTriangleStripsWithAjacency = 8
  renderPrimitiveTriangleStripsWithRestartIndex = 9
  renderPrimitiveTesselationPatch = 10
  renderPrimitiveMax = 11

type RenderingDevice_PolygonCullMode* {.size: sizeof(clong).} = enum
  polygonCullDisabled = 0
  polygonCullFront = 1
  polygonCullBack = 2

type RenderingDevice_PolygonFrontFace* {.size: sizeof(clong).} = enum
  polygonFrontFaceClockwise = 0
  polygonFrontFaceCounterClockwise = 1

type RenderingDevice_StencilOperation* {.size: sizeof(clong).} = enum
  stencilOpKeep = 0
  stencilOpZero = 1
  stencilOpReplace = 2
  stencilOpIncrementAndClamp = 3
  stencilOpDecrementAndClamp = 4
  stencilOpInvert = 5
  stencilOpIncrementAndWrap = 6
  stencilOpDecrementAndWrap = 7
  stencilOpMax = 8

type RenderingDevice_CompareOperator* {.size: sizeof(clong).} = enum
  compareOpNever = 0
  compareOpLess = 1
  compareOpEqual = 2
  compareOpLessOrEqual = 3
  compareOpGreater = 4
  compareOpNotEqual = 5
  compareOpGreaterOrEqual = 6
  compareOpAlways = 7
  compareOpMax = 8

type RenderingDevice_LogicOperation* {.size: sizeof(clong).} = enum
  logicOpClear = 0
  logicOpAnd = 1
  logicOpAndReverse = 2
  logicOpCopy = 3
  logicOpAndInverted = 4
  logicOpNoOp = 5
  logicOpXor = 6
  logicOpOr = 7
  logicOpNor = 8
  logicOpEquivalent = 9
  logicOpInvert = 10
  logicOpOrReverse = 11
  logicOpCopyInverted = 12
  logicOpOrInverted = 13
  logicOpNand = 14
  logicOpSet = 15
  logicOpMax = 16

type RenderingDevice_BlendFactor* {.size: sizeof(clong).} = enum
  blendFactorZero = 0
  blendFactorOne = 1
  blendFactorSrcColor = 2
  blendFactorOneMinusSrcColor = 3
  blendFactorDstColor = 4
  blendFactorOneMinusDstColor = 5
  blendFactorSrcAlpha = 6
  blendFactorOneMinusSrcAlpha = 7
  blendFactorDstAlpha = 8
  blendFactorOneMinusDstAlpha = 9
  blendFactorConstantColor = 10
  blendFactorOneMinusConstantColor = 11
  blendFactorConstantAlpha = 12
  blendFactorOneMinusConstantAlpha = 13
  blendFactorSrcAlphaSaturate = 14
  blendFactorSrc1Color = 15
  blendFactorOneMinusSrc1Color = 16
  blendFactorSrc1Alpha = 17
  blendFactorOneMinusSrc1Alpha = 18
  blendFactorMax = 19

type RenderingDevice_BlendOperation* {.size: sizeof(clong).} = enum
  blendOpAdd = 0
  blendOpSubtract = 1
  blendOpReverseSubtract = 2
  blendOpMinimum = 3
  blendOpMaximum = 4
  blendOpMax = 5

type RenderingDevice_PipelineDynamicStateFlags* = enum
  dynamicStateLineWidth = 0
  dynamicStateDepthBias = 1
  dynamicStateBlendConstants = 2
  dynamicStateDepthBounds = 3
  dynamicStateStencilCompareMask = 4
  dynamicStateStencilWriteMask = 5
  dynamicStateStencilReference = 6
  `--Padding-Max--` = 63 # To align size-of set[RenderingDevice_PipelineDynamicStateFlags] to size-of Int.

type RenderingDevice_InitialAction* {.size: sizeof(clong).} = enum
  initialActionLoad = 0
  initialActionClear = 1
  initialActionDiscard = 2
  initialActionMax = 3
template initialActionKeep*[T: RenderingDevice_InitialAction](_: typedesc[T]): T = T(0)
template initialActionContinue*[T: RenderingDevice_InitialAction](_: typedesc[T]): T = T(0)
template initialActionClearRegion*[T: RenderingDevice_InitialAction](_: typedesc[T]): T = T(1)
template initialActionClearRegionContinue*[T: RenderingDevice_InitialAction](_: typedesc[T]): T = T(1)
template initialActionDrop*[T: RenderingDevice_InitialAction](_: typedesc[T]): T = T(2)

type RenderingDevice_FinalAction* {.size: sizeof(clong).} = enum
  finalActionStore = 0
  finalActionDiscard = 1
  finalActionMax = 2
template finalActionRead*[T: RenderingDevice_FinalAction](_: typedesc[T]): T = T(0)
template finalActionContinue*[T: RenderingDevice_FinalAction](_: typedesc[T]): T = T(0)

type RenderingDevice_ShaderStage* {.size: sizeof(clong).} = enum
  shaderStageVertex = 0
  shaderStageFragment = 1
  shaderStageTesselationControl = 2
  shaderStageTesselationEvaluation = 3
  shaderStageCompute = 4
  shaderStageMax = 5
  shaderStageTesselationEvaluationBit = 8
  shaderStageComputeBit = 16
template shaderStageVertexBit*[T: RenderingDevice_ShaderStage](_: typedesc[T]): T = T(1)
template shaderStageFragmentBit*[T: RenderingDevice_ShaderStage](_: typedesc[T]): T = T(2)
template shaderStageTesselationControlBit*[T: RenderingDevice_ShaderStage](_: typedesc[T]): T = T(4)

type RenderingDevice_ShaderLanguage* {.size: sizeof(clong).} = enum
  shaderLanguageGlsl = 0
  shaderLanguageHlsl = 1

type RenderingDevice_PipelineSpecializationConstantType* {.size: sizeof(clong).} = enum
  pipelineSpecializationConstantTypeBool = 0
  pipelineSpecializationConstantTypeInt = 1
  pipelineSpecializationConstantTypeFloat = 2

type RenderingDevice_Limit* {.size: sizeof(clong).} = enum
  limitMaxBoundUniformSets = 0
  limitMaxFramebufferColorAttachments = 1
  limitMaxTexturesPerUniformSet = 2
  limitMaxSamplersPerUniformSet = 3
  limitMaxStorageBuffersPerUniformSet = 4
  limitMaxStorageImagesPerUniformSet = 5
  limitMaxUniformBuffersPerUniformSet = 6
  limitMaxDrawIndexedIndex = 7
  limitMaxFramebufferHeight = 8
  limitMaxFramebufferWidth = 9
  limitMaxTextureArrayLayers = 10
  limitMaxTextureSize1D = 11
  limitMaxTextureSize2D = 12
  limitMaxTextureSize3D = 13
  limitMaxTextureSizeCube = 14
  limitMaxTexturesPerShaderStage = 15
  limitMaxSamplersPerShaderStage = 16
  limitMaxStorageBuffersPerShaderStage = 17
  limitMaxStorageImagesPerShaderStage = 18
  limitMaxUniformBuffersPerShaderStage = 19
  limitMaxPushConstantSize = 20
  limitMaxUniformBufferSize = 21
  limitMaxVertexInputAttributeOffset = 22
  limitMaxVertexInputAttributes = 23
  limitMaxVertexInputBindings = 24
  limitMaxVertexInputBindingStride = 25
  limitMinUniformBufferOffsetAlignment = 26
  limitMaxComputeSharedMemorySize = 27
  limitMaxComputeWorkgroupCountX = 28
  limitMaxComputeWorkgroupCountY = 29
  limitMaxComputeWorkgroupCountZ = 30
  limitMaxComputeWorkgroupInvocations = 31
  limitMaxComputeWorkgroupSizeX = 32
  limitMaxComputeWorkgroupSizeY = 33
  limitMaxComputeWorkgroupSizeZ = 34
  limitMaxViewportDimensionsX = 35
  limitMaxViewportDimensionsY = 36

type RenderingDevice_MemoryType* {.size: sizeof(clong).} = enum
  memoryTextures = 0
  memoryBuffers = 1
  memoryTotal = 2

type RenderingServer_TextureLayeredType* {.size: sizeof(clong).} = enum
  textureLayered2DArray = 0
  textureLayeredCubemap = 1
  textureLayeredCubemapArray = 2

type RenderingServer_CubeMapLayer* {.size: sizeof(clong).} = enum
  cubemapLayerLeft = 0
  cubemapLayerRight = 1
  cubemapLayerBottom = 2
  cubemapLayerTop = 3
  cubemapLayerFront = 4
  cubemapLayerBack = 5

type RenderingServer_ShaderMode* {.size: sizeof(clong).} = enum
  shaderSpatial = 0
  shaderCanvasItem = 1
  shaderParticles = 2
  shaderSky = 3
  shaderFog = 4
  shaderMax = 5

type RenderingServer_ArrayType* {.size: sizeof(clong).} = enum
  arrayVertex = 0
  arrayNormal = 1
  arrayTangent = 2
  arrayColor = 3
  arrayTexUv = 4
  arrayTexUv2 = 5
  arrayCustom0 = 6
  arrayCustom1 = 7
  arrayCustom2 = 8
  arrayCustom3 = 9
  arrayBones = 10
  arrayWeights = 11
  arrayIndex = 12
  arrayMax = 13

type RenderingServer_ArrayCustomFormat* {.size: sizeof(clong).} = enum
  arrayCustomRgba8Unorm = 0
  arrayCustomRgba8Snorm = 1
  arrayCustomRgHalf = 2
  arrayCustomRgbaHalf = 3
  arrayCustomRFloat = 4
  arrayCustomRgFloat = 5
  arrayCustomRgbFloat = 6
  arrayCustomRgbaFloat = 7
  arrayCustomMax = 8

type RenderingServer_ArrayFormat* = enum
  # arrayFlagFormatVersion1 = 0
  arrayFormatVertex = 0
  arrayFormatNormal = 1
  arrayFormatTangent = 2
  arrayFormatColor = 3
  arrayFormatTexUv = 4
  arrayFormatTexUv2 = 5
  arrayFormatCustom0 = 6
  arrayFormatCustom1 = 7
  arrayFormatCustom2 = 8
  arrayFormatCustom3 = 9
  arrayFormatBones = 10
  arrayFormatWeights = 11
  arrayFormatIndex = 12
  arrayFlagUse2DVertices = 25
  arrayFlagUseDynamicUpdate = 26
  arrayFlagUse8BoneWeights = 27
  arrayFlagUsesEmptyVertexArray = 28
  arrayFlagCompressAttributes = 29
  arrayFlagFormatVersion2 = 35
  `--Padding-Max--` = 63 # To align size-of set[RenderingServer_ArrayFormat] to size-of Int.
template arrayFormatCustomBits*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](3)
template arrayFormatBlendShapeMask*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](7)
template arrayFormatCustomMask*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](7)
template arrayFormatCustomBase*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](13)
template arrayFormatCustom0Shift*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](13)
template arrayFormatCustom1Shift*[T: RenderingServer_ArrayFormat](_: typedesc[T]): T = T(4)
template arrayFormatCustom2Shift*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](19)
template arrayFormatCustom3Shift*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](22)
template arrayCompressFlagsBase*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](25)
template arrayFlagFormatVersionBase*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](35)
template arrayFlagFormatVersionShift*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](35)
template arrayFlagFormatVersionMask*[T: RenderingServer_ArrayFormat](_: typedesc[T]): set[T] = cast[set[T]](255)
template arrayFlagFormatCurrentVersion*[T: RenderingServer_ArrayFormat](_: typedesc[T]): T = T(35)

type RenderingServer_PrimitiveType* {.size: sizeof(clong).} = enum
  primitivePoints = 0
  primitiveLines = 1
  primitiveLineStrip = 2
  primitiveTriangles = 3
  primitiveTriangleStrip = 4
  primitiveMax = 5

type RenderingServer_BlendShapeMode* {.size: sizeof(clong).} = enum
  blendShapeModeNormalized = 0
  blendShapeModeRelative = 1

type RenderingServer_MultimeshTransformFormat* {.size: sizeof(clong).} = enum
  multimeshTransform2D = 0
  multimeshTransform3D = 1

type RenderingServer_LightProjectorFilter* {.size: sizeof(clong).} = enum
  lightProjectorFilterNearest = 0
  lightProjectorFilterLinear = 1
  lightProjectorFilterNearestMipmaps = 2
  lightProjectorFilterLinearMipmaps = 3
  lightProjectorFilterNearestMipmapsAnisotropic = 4
  lightProjectorFilterLinearMipmapsAnisotropic = 5

type RenderingServer_LightType* {.size: sizeof(clong).} = enum
  lightDirectional = 0
  lightOmni = 1
  lightSpot = 2

type RenderingServer_LightParam* {.size: sizeof(clong).} = enum
  lightParamEnergy = 0
  lightParamIndirectEnergy = 1
  lightParamVolumetricFogEnergy = 2
  lightParamSpecular = 3
  lightParamRange = 4
  lightParamSize = 5
  lightParamAttenuation = 6
  lightParamSpotAngle = 7
  lightParamSpotAttenuation = 8
  lightParamShadowMaxDistance = 9
  lightParamShadowSplit1Offset = 10
  lightParamShadowSplit2Offset = 11
  lightParamShadowSplit3Offset = 12
  lightParamShadowFadeStart = 13
  lightParamShadowNormalBias = 14
  lightParamShadowBias = 15
  lightParamShadowPancakeSize = 16
  lightParamShadowOpacity = 17
  lightParamShadowBlur = 18
  lightParamTransmittanceBias = 19
  lightParamIntensity = 20
  lightParamMax = 21

type RenderingServer_LightBakeMode* {.size: sizeof(clong).} = enum
  lightBakeDisabled = 0
  lightBakeStatic = 1
  lightBakeDynamic = 2

type RenderingServer_LightOmniShadowMode* {.size: sizeof(clong).} = enum
  lightOmniShadowDualParaboloid = 0
  lightOmniShadowCube = 1

type RenderingServer_LightDirectionalShadowMode* {.size: sizeof(clong).} = enum
  lightDirectionalShadowOrthogonal = 0
  lightDirectionalShadowParallel2Splits = 1
  lightDirectionalShadowParallel4Splits = 2

type RenderingServer_LightDirectionalSkyMode* {.size: sizeof(clong).} = enum
  lightDirectionalSkyModeLightAndSky = 0
  lightDirectionalSkyModeLightOnly = 1
  lightDirectionalSkyModeSkyOnly = 2

type RenderingServer_ShadowQuality* {.size: sizeof(clong).} = enum
  shadowQualityHard = 0
  shadowQualitySoftVeryLow = 1
  shadowQualitySoftLow = 2
  shadowQualitySoftMedium = 3
  shadowQualitySoftHigh = 4
  shadowQualitySoftUltra = 5
  shadowQualityMax = 6

type RenderingServer_ReflectionProbeUpdateMode* {.size: sizeof(clong).} = enum
  reflectionProbeUpdateOnce = 0
  reflectionProbeUpdateAlways = 1

type RenderingServer_ReflectionProbeAmbientMode* {.size: sizeof(clong).} = enum
  reflectionProbeAmbientDisabled = 0
  reflectionProbeAmbientEnvironment = 1
  reflectionProbeAmbientColor = 2

type RenderingServer_DecalTexture* {.size: sizeof(clong).} = enum
  decalTextureAlbedo = 0
  decalTextureNormal = 1
  decalTextureOrm = 2
  decalTextureEmission = 3
  decalTextureMax = 4

type RenderingServer_DecalFilter* {.size: sizeof(clong).} = enum
  decalFilterNearest = 0
  decalFilterLinear = 1
  decalFilterNearestMipmaps = 2
  decalFilterLinearMipmaps = 3
  decalFilterNearestMipmapsAnisotropic = 4
  decalFilterLinearMipmapsAnisotropic = 5

type RenderingServer_VoxelGiQuality* {.size: sizeof(clong).} = enum
  voxelGiQualityLow = 0
  voxelGiQualityHigh = 1

type RenderingServer_ParticlesMode* {.size: sizeof(clong).} = enum
  particlesMode2D = 0
  particlesMode3D = 1

type RenderingServer_ParticlesTransformAlign* {.size: sizeof(clong).} = enum
  particlesTransformAlignDisabled = 0
  particlesTransformAlignZBillboard = 1
  particlesTransformAlignYToVelocity = 2
  particlesTransformAlignZBillboardYToVelocity = 3

type RenderingServer_ParticlesDrawOrder* {.size: sizeof(clong).} = enum
  particlesDrawOrderIndex = 0
  particlesDrawOrderLifetime = 1
  particlesDrawOrderReverseLifetime = 2
  particlesDrawOrderViewDepth = 3

type RenderingServer_ParticlesCollisionType* {.size: sizeof(clong).} = enum
  particlesCollisionTypeSphereAttract = 0
  particlesCollisionTypeBoxAttract = 1
  particlesCollisionTypeVectorFieldAttract = 2
  particlesCollisionTypeSphereCollide = 3
  particlesCollisionTypeBoxCollide = 4
  particlesCollisionTypeSdfCollide = 5
  particlesCollisionTypeHeightfieldCollide = 6

type RenderingServer_ParticlesCollisionHeightfieldResolution* {.size: sizeof(clong).} = enum
  particlesCollisionHeightfieldResolution256 = 0
  particlesCollisionHeightfieldResolution512 = 1
  particlesCollisionHeightfieldResolution1024 = 2
  particlesCollisionHeightfieldResolution2048 = 3
  particlesCollisionHeightfieldResolution4096 = 4
  particlesCollisionHeightfieldResolution8192 = 5
  particlesCollisionHeightfieldResolutionMax = 6

type RenderingServer_FogVolumeShape* {.size: sizeof(clong).} = enum
  fogVolumeShapeEllipsoid = 0
  fogVolumeShapeCone = 1
  fogVolumeShapeCylinder = 2
  fogVolumeShapeBox = 3
  fogVolumeShapeWorld = 4
  fogVolumeShapeMax = 5

type RenderingServer_ViewportScaling3DMode* {.size: sizeof(clong).} = enum
  viewportScaling3DModeBilinear = 0
  viewportScaling3DModeFsr = 1
  viewportScaling3DModeFsr2 = 2
  viewportScaling3DModeMax = 3

type RenderingServer_ViewportUpdateMode* {.size: sizeof(clong).} = enum
  viewportUpdateDisabled = 0
  viewportUpdateOnce = 1
  viewportUpdateWhenVisible = 2
  viewportUpdateWhenParentVisible = 3
  viewportUpdateAlways = 4

type RenderingServer_ViewportClearMode* {.size: sizeof(clong).} = enum
  viewportClearAlways = 0
  viewportClearNever = 1
  viewportClearOnlyNextFrame = 2

type RenderingServer_ViewportEnvironmentMode* {.size: sizeof(clong).} = enum
  viewportEnvironmentDisabled = 0
  viewportEnvironmentEnabled = 1
  viewportEnvironmentInherit = 2
  viewportEnvironmentMax = 3

type RenderingServer_ViewportSdfOversize* {.size: sizeof(clong).} = enum
  viewportSdfOversize100Percent = 0
  viewportSdfOversize120Percent = 1
  viewportSdfOversize150Percent = 2
  viewportSdfOversize200Percent = 3
  viewportSdfOversizeMax = 4

type RenderingServer_ViewportSdfScale* {.size: sizeof(clong).} = enum
  viewportSdfScale100Percent = 0
  viewportSdfScale50Percent = 1
  viewportSdfScale25Percent = 2
  viewportSdfScaleMax = 3

type RenderingServer_ViewportMsaa* {.size: sizeof(clong).} = enum
  viewportMsaaDisabled = 0
  viewportMsaa2X = 1
  viewportMsaa4X = 2
  viewportMsaa8X = 3
  viewportMsaaMax = 4

type RenderingServer_ViewportScreenSpaceAa* {.size: sizeof(clong).} = enum
  viewportScreenSpaceAaDisabled = 0
  viewportScreenSpaceAaFxaa = 1
  viewportScreenSpaceAaMax = 2

type RenderingServer_ViewportOcclusionCullingBuildQuality* {.size: sizeof(clong).} = enum
  viewportOcclusionBuildQualityLow = 0
  viewportOcclusionBuildQualityMedium = 1
  viewportOcclusionBuildQualityHigh = 2

type RenderingServer_ViewportRenderInfo* {.size: sizeof(clong).} = enum
  viewportRenderInfoObjectsInFrame = 0
  viewportRenderInfoPrimitivesInFrame = 1
  viewportRenderInfoDrawCallsInFrame = 2
  viewportRenderInfoMax = 3

type RenderingServer_ViewportRenderInfoType* {.size: sizeof(clong).} = enum
  viewportRenderInfoTypeVisible = 0
  viewportRenderInfoTypeShadow = 1
  viewportRenderInfoTypeCanvas = 2
  viewportRenderInfoTypeMax = 3

type RenderingServer_ViewportDebugDraw* {.size: sizeof(clong).} = enum
  viewportDebugDrawDisabled = 0
  viewportDebugDrawUnshaded = 1
  viewportDebugDrawLighting = 2
  viewportDebugDrawOverdraw = 3
  viewportDebugDrawWireframe = 4
  viewportDebugDrawNormalBuffer = 5
  viewportDebugDrawVoxelGiAlbedo = 6
  viewportDebugDrawVoxelGiLighting = 7
  viewportDebugDrawVoxelGiEmission = 8
  viewportDebugDrawShadowAtlas = 9
  viewportDebugDrawDirectionalShadowAtlas = 10
  viewportDebugDrawSceneLuminance = 11
  viewportDebugDrawSsao = 12
  viewportDebugDrawSsil = 13
  viewportDebugDrawPssmSplits = 14
  viewportDebugDrawDecalAtlas = 15
  viewportDebugDrawSdfgi = 16
  viewportDebugDrawSdfgiProbes = 17
  viewportDebugDrawGiBuffer = 18
  viewportDebugDrawDisableLod = 19
  viewportDebugDrawClusterOmniLights = 20
  viewportDebugDrawClusterSpotLights = 21
  viewportDebugDrawClusterDecals = 22
  viewportDebugDrawClusterReflectionProbes = 23
  viewportDebugDrawOccluders = 24
  viewportDebugDrawMotionVectors = 25
  viewportDebugDrawInternalBuffer = 26

type RenderingServer_ViewportVrsMode* {.size: sizeof(clong).} = enum
  viewportVrsDisabled = 0
  viewportVrsTexture = 1
  viewportVrsXr = 2
  viewportVrsMax = 3

type RenderingServer_ViewportVrsUpdateMode* {.size: sizeof(clong).} = enum
  viewportVrsUpdateDisabled = 0
  viewportVrsUpdateOnce = 1
  viewportVrsUpdateAlways = 2
  viewportVrsUpdateMax = 3

type RenderingServer_SkyMode* {.size: sizeof(clong).} = enum
  skyModeAutomatic = 0
  skyModeQuality = 1
  skyModeIncremental = 2
  skyModeRealtime = 3

type RenderingServer_CompositorEffectFlags* {.size: sizeof(clong).} = enum
  compositorEffectFlagAccessResolvedColor = 1
  compositorEffectFlagAccessResolvedDepth = 2
  compositorEffectFlagNeedsMotionVectors = 4
  compositorEffectFlagNeedsRoughness = 8
  compositorEffectFlagNeedsSeparateSpecular = 16

type RenderingServer_CompositorEffectCallbackType* {.size: sizeof(clong).} = enum
  compositorEffectCallbackTypeAny = -1
  compositorEffectCallbackTypePreOpaque = 0
  compositorEffectCallbackTypePostOpaque = 1
  compositorEffectCallbackTypePostSky = 2
  compositorEffectCallbackTypePreTransparent = 3
  compositorEffectCallbackTypePostTransparent = 4

type RenderingServer_EnvironmentBg* {.size: sizeof(clong).} = enum
  envBgClearColor = 0
  envBgColor = 1
  envBgSky = 2
  envBgCanvas = 3
  envBgKeep = 4
  envBgCameraFeed = 5
  envBgMax = 6

type RenderingServer_EnvironmentAmbientSource* {.size: sizeof(clong).} = enum
  envAmbientSourceBg = 0
  envAmbientSourceDisabled = 1
  envAmbientSourceColor = 2
  envAmbientSourceSky = 3

type RenderingServer_EnvironmentReflectionSource* {.size: sizeof(clong).} = enum
  envReflectionSourceBg = 0
  envReflectionSourceDisabled = 1
  envReflectionSourceSky = 2

type RenderingServer_EnvironmentGlowBlendMode* {.size: sizeof(clong).} = enum
  envGlowBlendModeAdditive = 0
  envGlowBlendModeScreen = 1
  envGlowBlendModeSoftlight = 2
  envGlowBlendModeReplace = 3
  envGlowBlendModeMix = 4

type RenderingServer_EnvironmentFogMode* {.size: sizeof(clong).} = enum
  envFogModeExponential = 0
  envFogModeDepth = 1

type RenderingServer_EnvironmentToneMapper* {.size: sizeof(clong).} = enum
  envToneMapperLinear = 0
  envToneMapperReinhard = 1
  envToneMapperFilmic = 2
  envToneMapperAces = 3

type RenderingServer_EnvironmentSsrRoughnessQuality* {.size: sizeof(clong).} = enum
  envSsrRoughnessQualityDisabled = 0
  envSsrRoughnessQualityLow = 1
  envSsrRoughnessQualityMedium = 2
  envSsrRoughnessQualityHigh = 3

type RenderingServer_EnvironmentSsaoQuality* {.size: sizeof(clong).} = enum
  envSsaoQualityVeryLow = 0
  envSsaoQualityLow = 1
  envSsaoQualityMedium = 2
  envSsaoQualityHigh = 3
  envSsaoQualityUltra = 4

type RenderingServer_EnvironmentSsilQuality* {.size: sizeof(clong).} = enum
  envSsilQualityVeryLow = 0
  envSsilQualityLow = 1
  envSsilQualityMedium = 2
  envSsilQualityHigh = 3
  envSsilQualityUltra = 4

type RenderingServer_EnvironmentSdfgiyScale* {.size: sizeof(clong).} = enum
  envSdfgiYScale50Percent = 0
  envSdfgiYScale75Percent = 1
  envSdfgiYScale100Percent = 2

type RenderingServer_EnvironmentSdfgiRayCount* {.size: sizeof(clong).} = enum
  envSdfgiRayCount4 = 0
  envSdfgiRayCount8 = 1
  envSdfgiRayCount16 = 2
  envSdfgiRayCount32 = 3
  envSdfgiRayCount64 = 4
  envSdfgiRayCount96 = 5
  envSdfgiRayCount128 = 6
  envSdfgiRayCountMax = 7

type RenderingServer_EnvironmentSdfgiFramesToConverge* {.size: sizeof(clong).} = enum
  envSdfgiConvergeIn5Frames = 0
  envSdfgiConvergeIn10Frames = 1
  envSdfgiConvergeIn15Frames = 2
  envSdfgiConvergeIn20Frames = 3
  envSdfgiConvergeIn25Frames = 4
  envSdfgiConvergeIn30Frames = 5
  envSdfgiConvergeMax = 6

type RenderingServer_EnvironmentSdfgiFramesToUpdateLight* {.size: sizeof(clong).} = enum
  envSdfgiUpdateLightIn1Frame = 0
  envSdfgiUpdateLightIn2Frames = 1
  envSdfgiUpdateLightIn4Frames = 2
  envSdfgiUpdateLightIn8Frames = 3
  envSdfgiUpdateLightIn16Frames = 4
  envSdfgiUpdateLightMax = 5

type RenderingServer_SubSurfaceScatteringQuality* {.size: sizeof(clong).} = enum
  subSurfaceScatteringQualityDisabled = 0
  subSurfaceScatteringQualityLow = 1
  subSurfaceScatteringQualityMedium = 2
  subSurfaceScatteringQualityHigh = 3

type RenderingServer_DofBokehShape* {.size: sizeof(clong).} = enum
  dofBokehBox = 0
  dofBokehHexagon = 1
  dofBokehCircle = 2

type RenderingServer_DofBlurQuality* {.size: sizeof(clong).} = enum
  dofBlurQualityVeryLow = 0
  dofBlurQualityLow = 1
  dofBlurQualityMedium = 2
  dofBlurQualityHigh = 3

type RenderingServer_InstanceType* {.size: sizeof(clong).} = enum
  instanceNone = 0
  instanceMesh = 1
  instanceMultimesh = 2
  instanceParticles = 3
  instanceParticlesCollision = 4
  instanceLight = 5
  instanceReflectionProbe = 6
  instanceDecal = 7
  instanceVoxelGi = 8
  instanceLightmap = 9
  instanceOccluder = 10
  instanceVisiblityNotifier = 11
  instanceFogVolume = 12
  instanceMax = 13
  instanceGeometryMask = 14

type RenderingServer_InstanceFlags* {.size: sizeof(clong).} = enum
  instanceFlagUseBakedLight = 0
  instanceFlagUseDynamicGi = 1
  instanceFlagDrawNextFrameIfVisible = 2
  instanceFlagIgnoreOcclusionCulling = 3
  instanceFlagMax = 4

type RenderingServer_ShadowCastingSetting* {.size: sizeof(clong).} = enum
  shadowCastingSettingOff = 0
  shadowCastingSettingOn = 1
  shadowCastingSettingDoubleSided = 2
  shadowCastingSettingShadowsOnly = 3

type RenderingServer_VisibilityRangeFadeMode* {.size: sizeof(clong).} = enum
  visibilityRangeFadeDisabled = 0
  visibilityRangeFadeSelf = 1
  visibilityRangeFadeDependencies = 2

type RenderingServer_BakeChannels* {.size: sizeof(clong).} = enum
  bakeChannelAlbedoAlpha = 0
  bakeChannelNormal = 1
  bakeChannelOrm = 2
  bakeChannelEmission = 3

type RenderingServer_CanvasTextureChannel* {.size: sizeof(clong).} = enum
  canvasTextureChannelDiffuse = 0
  canvasTextureChannelNormal = 1
  canvasTextureChannelSpecular = 2

type RenderingServer_NinePatchAxisMode* {.size: sizeof(clong).} = enum
  ninePatchStretch = 0
  ninePatchTile = 1
  ninePatchTileFit = 2

type RenderingServer_CanvasItemTextureFilter* {.size: sizeof(clong).} = enum
  canvasItemTextureFilterDefault = 0
  canvasItemTextureFilterNearest = 1
  canvasItemTextureFilterLinear = 2
  canvasItemTextureFilterNearestWithMipmaps = 3
  canvasItemTextureFilterLinearWithMipmaps = 4
  canvasItemTextureFilterNearestWithMipmapsAnisotropic = 5
  canvasItemTextureFilterLinearWithMipmapsAnisotropic = 6
  canvasItemTextureFilterMax = 7

type RenderingServer_CanvasItemTextureRepeat* {.size: sizeof(clong).} = enum
  canvasItemTextureRepeatDefault = 0
  canvasItemTextureRepeatDisabled = 1
  canvasItemTextureRepeatEnabled = 2
  canvasItemTextureRepeatMirror = 3
  canvasItemTextureRepeatMax = 4

type RenderingServer_CanvasGroupMode* {.size: sizeof(clong).} = enum
  canvasGroupModeDisabled = 0
  canvasGroupModeClipOnly = 1
  canvasGroupModeClipAndDraw = 2
  canvasGroupModeTransparent = 3

type RenderingServer_CanvasLightMode* {.size: sizeof(clong).} = enum
  canvasLightModePoint = 0
  canvasLightModeDirectional = 1

type RenderingServer_CanvasLightBlendMode* {.size: sizeof(clong).} = enum
  canvasLightBlendModeAdd = 0
  canvasLightBlendModeSub = 1
  canvasLightBlendModeMix = 2

type RenderingServer_CanvasLightShadowFilter* {.size: sizeof(clong).} = enum
  canvasLightFilterNone = 0
  canvasLightFilterPcf5 = 1
  canvasLightFilterPcf13 = 2
  canvasLightFilterMax = 3

type RenderingServer_CanvasOccluderPolygonCullMode* {.size: sizeof(clong).} = enum
  canvasOccluderPolygonCullDisabled = 0
  canvasOccluderPolygonCullClockwise = 1
  canvasOccluderPolygonCullCounterClockwise = 2

type RenderingServer_GlobalShaderParameterType* {.size: sizeof(clong).} = enum
  globalVarTypeBool = 0
  globalVarTypeBvec2 = 1
  globalVarTypeBvec3 = 2
  globalVarTypeBvec4 = 3
  globalVarTypeInt = 4
  globalVarTypeIvec2 = 5
  globalVarTypeIvec3 = 6
  globalVarTypeIvec4 = 7
  globalVarTypeRect2I = 8
  globalVarTypeUint = 9
  globalVarTypeUvec2 = 10
  globalVarTypeUvec3 = 11
  globalVarTypeUvec4 = 12
  globalVarTypeFloat = 13
  globalVarTypeVec2 = 14
  globalVarTypeVec3 = 15
  globalVarTypeVec4 = 16
  globalVarTypeColor = 17
  globalVarTypeRect2 = 18
  globalVarTypeMat2 = 19
  globalVarTypeMat3 = 20
  globalVarTypeMat4 = 21
  globalVarTypeTransform2D = 22
  globalVarTypeTransform = 23
  globalVarTypeSampler2D = 24
  globalVarTypeSampler2Darray = 25
  globalVarTypeSampler3D = 26
  globalVarTypeSamplercube = 27
  globalVarTypeMax = 28

type RenderingServer_RenderingInfo* {.size: sizeof(clong).} = enum
  renderingInfoTotalObjectsInFrame = 0
  renderingInfoTotalPrimitivesInFrame = 1
  renderingInfoTotalDrawCallsInFrame = 2
  renderingInfoTextureMemUsed = 3
  renderingInfoBufferMemUsed = 4
  renderingInfoVideoMemUsed = 5

type RenderingServer_Features* {.size: sizeof(clong).} = enum
  featureShaders = 0
  featureMultithreaded = 1

type ResourceFormatLoader_CacheMode* {.size: sizeof(clong).} = enum
  cacheModeIgnore = 0
  cacheModeReuse = 1
  cacheModeReplace = 2
  cacheModeIgnoreDeep = 3
  cacheModeReplaceDeep = 4

type ResourceImporter_ImportOrder* {.size: sizeof(clong).} = enum
  importOrderDefault = 0
  importOrderScene = 100

type ResourceLoader_ThreadLoadStatus* {.size: sizeof(clong).} = enum
  threadLoadInvalidResource = 0
  threadLoadInProgress = 1
  threadLoadFailed = 2
  threadLoadLoaded = 3

type ResourceLoader_CacheMode* {.size: sizeof(clong).} = enum
  cacheModeIgnore = 0
  cacheModeReuse = 1
  cacheModeReplace = 2
  cacheModeIgnoreDeep = 3
  cacheModeReplaceDeep = 4

type ResourceSaver_SaverFlags* = enum
  # flagNone = 0
  flagRelativePaths = 0
  flagBundleResources = 1
  flagChangePath = 2
  flagOmitEditorProperties = 3
  flagSaveBigEndian = 4
  flagCompress = 5
  flagReplaceSubresourcePaths = 6
  `--Padding-Max--` = 63 # To align size-of set[ResourceSaver_SaverFlags] to size-of Int.

type RibbonTrailMesh_Shape* {.size: sizeof(clong).} = enum
  shapeFlat = 0
  shapeCross = 1

type RichTextLabel_ListType* {.size: sizeof(clong).} = enum
  listNumbers = 0
  listLetters = 1
  listRoman = 2
  listDots = 3

type RichTextLabel_MenuItems* {.size: sizeof(clong).} = enum
  menuCopy = 0
  menuSelectAll = 1
  menuMax = 2

type RichTextLabel_MetaUnderline* {.size: sizeof(clong).} = enum
  metaUnderlineNever = 0
  metaUnderlineAlways = 1
  metaUnderlineOnHover = 2

type RichTextLabel_ImageUpdateMask* = enum
  updateTexture = 0
  updateSize = 1
  updateColor = 2
  updateAlignment = 3
  updateRegion = 4
  updatePad = 5
  updateTooltip = 6
  updateWidthInPercent = 7
  `--Padding-Max--` = 63 # To align size-of set[RichTextLabel_ImageUpdateMask] to size-of Int.

type RigidBody2D_FreezeMode* {.size: sizeof(clong).} = enum
  freezeModeStatic = 0
  freezeModeKinematic = 1

type RigidBody2D_CenterOfMassMode* {.size: sizeof(clong).} = enum
  centerOfMassModeAuto = 0
  centerOfMassModeCustom = 1

type RigidBody2D_DampMode* {.size: sizeof(clong).} = enum
  dampModeCombine = 0
  dampModeReplace = 1

type RigidBody2D_CcdMode* {.size: sizeof(clong).} = enum
  ccdModeDisabled = 0
  ccdModeCastRay = 1
  ccdModeCastShape = 2

type RigidBody3D_FreezeMode* {.size: sizeof(clong).} = enum
  freezeModeStatic = 0
  freezeModeKinematic = 1

type RigidBody3D_CenterOfMassMode* {.size: sizeof(clong).} = enum
  centerOfMassModeAuto = 0
  centerOfMassModeCustom = 1

type RigidBody3D_DampMode* {.size: sizeof(clong).} = enum
  dampModeCombine = 0
  dampModeReplace = 1

type SceneReplicationConfig_ReplicationMode* {.size: sizeof(clong).} = enum
  replicationModeNever = 0
  replicationModeAlways = 1
  replicationModeOnChange = 2

type SceneState_GenEditState* {.size: sizeof(clong).} = enum
  genEditStateDisabled = 0
  genEditStateInstance = 1
  genEditStateMain = 2
  genEditStateMainInherited = 3

type SceneTree_GroupCallFlags* {.size: sizeof(clong).} = enum
  groupCallDefault = 0
  groupCallReverse = 1
  groupCallDeferred = 2
  groupCallUnique = 4

type ScriptLanguage_ScriptNameCasing* {.size: sizeof(clong).} = enum
  scriptNameCasingAuto = 0
  scriptNameCasingPascalCase = 1
  scriptNameCasingSnakeCase = 2
  scriptNameCasingKebabCase = 3

type ScriptLanguageExtension_LookupResultType* {.size: sizeof(clong).} = enum
  lookupResultScriptLocation = 0
  lookupResultClass = 1
  lookupResultClassConstant = 2
  lookupResultClassProperty = 3
  lookupResultClassMethod = 4
  lookupResultClassSignal = 5
  lookupResultClassEnum = 6
  lookupResultClassTbdGlobalscope = 7
  lookupResultClassAnnotation = 8
  lookupResultMax = 9

type ScriptLanguageExtension_CodeCompletionLocation* {.size: sizeof(clong).} = enum
  locationLocal = 0
  locationParentMask = 256
  locationOtherUserCode = 512
  locationOther = 1024

type ScriptLanguageExtension_CodeCompletionKind* {.size: sizeof(clong).} = enum
  codeCompletionKindClass = 0
  codeCompletionKindFunction = 1
  codeCompletionKindSignal = 2
  codeCompletionKindVariable = 3
  codeCompletionKindMember = 4
  codeCompletionKindEnum = 5
  codeCompletionKindConstant = 6
  codeCompletionKindNodePath = 7
  codeCompletionKindFilePath = 8
  codeCompletionKindPlainText = 9
  codeCompletionKindMax = 10

type ScrollContainer_ScrollMode* {.size: sizeof(clong).} = enum
  scrollModeDisabled = 0
  scrollModeAuto = 1
  scrollModeShowAlways = 2
  scrollModeShowNever = 3

type Shader_Mode* {.size: sizeof(clong).} = enum
  modeSpatial = 0
  modeCanvasItem = 1
  modeParticles = 2
  modeSky = 3
  modeFog = 4

type Skeleton3D_ModifierCallbackModeProcess* {.size: sizeof(clong).} = enum
  modifierCallbackModeProcessPhysics = 0
  modifierCallbackModeProcessIdle = 1

type SkeletonProfile_TailDirection* {.size: sizeof(clong).} = enum
  tailDirectionAverageChildren = 0
  tailDirectionSpecificChild = 1
  tailDirectionEnd = 2

type Sky_RadianceSize* {.size: sizeof(clong).} = enum
  radianceSize32 = 0
  radianceSize64 = 1
  radianceSize128 = 2
  radianceSize256 = 3
  radianceSize512 = 4
  radianceSize1024 = 5
  radianceSize2048 = 6
  radianceSizeMax = 7

type Sky_ProcessMode* {.size: sizeof(clong).} = enum
  processModeAutomatic = 0
  processModeQuality = 1
  processModeIncremental = 2
  processModeRealtime = 3

type SliderJoint3D_Param* {.size: sizeof(clong).} = enum
  paramLinearLimitUpper = 0
  paramLinearLimitLower = 1
  paramLinearLimitSoftness = 2
  paramLinearLimitRestitution = 3
  paramLinearLimitDamping = 4
  paramLinearMotionSoftness = 5
  paramLinearMotionRestitution = 6
  paramLinearMotionDamping = 7
  paramLinearOrthogonalSoftness = 8
  paramLinearOrthogonalRestitution = 9
  paramLinearOrthogonalDamping = 10
  paramAngularLimitUpper = 11
  paramAngularLimitLower = 12
  paramAngularLimitSoftness = 13
  paramAngularLimitRestitution = 14
  paramAngularLimitDamping = 15
  paramAngularMotionSoftness = 16
  paramAngularMotionRestitution = 17
  paramAngularMotionDamping = 18
  paramAngularOrthogonalSoftness = 19
  paramAngularOrthogonalRestitution = 20
  paramAngularOrthogonalDamping = 21
  paramMax = 22

type SoftBody3D_DisableMode* {.size: sizeof(clong).} = enum
  disableModeRemove = 0
  disableModeKeepActive = 1

type SplitContainer_DraggerVisibility* {.size: sizeof(clong).} = enum
  draggerVisible = 0
  draggerHidden = 1
  draggerHiddenCollapsed = 2

type SpriteBase3D_DrawFlags* {.size: sizeof(clong).} = enum
  flagTransparent = 0
  flagShaded = 1
  flagDoubleSided = 2
  flagDisableDepthTest = 3
  flagFixedSize = 4
  flagMax = 5

type SpriteBase3D_AlphaCutMode* {.size: sizeof(clong).} = enum
  alphaCutDisabled = 0
  alphaCutDiscard = 1
  alphaCutOpaquePrepass = 2
  alphaCutHash = 3

type StreamPeerTcp_Status* {.size: sizeof(clong).} = enum
  statusNone = 0
  statusConnecting = 1
  statusConnected = 2
  statusError = 3

type StreamPeerTls_Status* {.size: sizeof(clong).} = enum
  statusDisconnected = 0
  statusHandshaking = 1
  statusConnected = 2
  statusError = 3
  statusErrorHostnameMismatch = 4

type StyleBoxTexture_AxisStretchMode* {.size: sizeof(clong).} = enum
  axisStretchModeStretch = 0
  axisStretchModeTile = 1
  axisStretchModeTileFit = 2

type SubViewport_ClearMode* {.size: sizeof(clong).} = enum
  clearModeAlways = 0
  clearModeNever = 1
  clearModeOnce = 2

type SubViewport_UpdateMode* {.size: sizeof(clong).} = enum
  updateDisabled = 0
  updateOnce = 1
  updateWhenVisible = 2
  updateWhenParentVisible = 3
  updateAlways = 4

type SurfaceTool_CustomFormat* {.size: sizeof(clong).} = enum
  customRgba8Unorm = 0
  customRgba8Snorm = 1
  customRgHalf = 2
  customRgbaHalf = 3
  customRFloat = 4
  customRgFloat = 5
  customRgbFloat = 6
  customRgbaFloat = 7
  customMax = 8

type SurfaceTool_SkinWeightCount* {.size: sizeof(clong).} = enum
  skin4Weights = 0
  skin8Weights = 1

type TabBar_AlignmentMode* {.size: sizeof(clong).} = enum
  alignmentLeft = 0
  alignmentCenter = 1
  alignmentRight = 2
  alignmentMax = 3

type TabBar_CloseButtonDisplayPolicy* {.size: sizeof(clong).} = enum
  closeButtonShowNever = 0
  closeButtonShowActiveOnly = 1
  closeButtonShowAlways = 2
  closeButtonMax = 3

type TabContainer_TabPosition* {.size: sizeof(clong).} = enum
  positionTop = 0
  positionBottom = 1
  positionMax = 2

type TextEdit_MenuItems* {.size: sizeof(clong).} = enum
  menuCut = 0
  menuCopy = 1
  menuPaste = 2
  menuClear = 3
  menuSelectAll = 4
  menuUndo = 5
  menuRedo = 6
  menuSubmenuTextDir = 7
  menuDirInherited = 8
  menuDirAuto = 9
  menuDirLtr = 10
  menuDirRtl = 11
  menuDisplayUcc = 12
  menuSubmenuInsertUcc = 13
  menuInsertLrm = 14
  menuInsertRlm = 15
  menuInsertLre = 16
  menuInsertRle = 17
  menuInsertLro = 18
  menuInsertRlo = 19
  menuInsertPdf = 20
  menuInsertAlm = 21
  menuInsertLri = 22
  menuInsertRli = 23
  menuInsertFsi = 24
  menuInsertPdi = 25
  menuInsertZwj = 26
  menuInsertZwnj = 27
  menuInsertWj = 28
  menuInsertShy = 29
  menuMax = 30

type TextEdit_EditAction* {.size: sizeof(clong).} = enum
  actionNone = 0
  actionTyping = 1
  actionBackspace = 2
  actionDelete = 3

type TextEdit_SearchFlags* {.size: sizeof(clong).} = enum
  searchMatchCase = 1
  searchWholeWords = 2
  searchBackwards = 4

type TextEdit_CaretType* {.size: sizeof(clong).} = enum
  caretTypeLine = 0
  caretTypeBlock = 1

type TextEdit_SelectionMode* {.size: sizeof(clong).} = enum
  selectionModeNone = 0
  selectionModeShift = 1
  selectionModePointer = 2
  selectionModeWord = 3
  selectionModeLine = 4

type TextEdit_LineWrappingMode* {.size: sizeof(clong).} = enum
  lineWrappingNone = 0
  lineWrappingBoundary = 1

type TextEdit_GutterType* {.size: sizeof(clong).} = enum
  gutterTypeString = 0
  gutterTypeIcon = 1
  gutterTypeCustom = 2

type TextServer_FontAntialiasing* {.size: sizeof(clong).} = enum
  fontAntialiasingNone = 0
  fontAntialiasingGray = 1
  fontAntialiasingLcd = 2

type TextServer_FontLcdSubpixelLayout* {.size: sizeof(clong).} = enum
  fontLcdSubpixelLayoutNone = 0
  fontLcdSubpixelLayoutHrgb = 1
  fontLcdSubpixelLayoutHbgr = 2
  fontLcdSubpixelLayoutVrgb = 3
  fontLcdSubpixelLayoutVbgr = 4
  fontLcdSubpixelLayoutMax = 5

type TextServer_Direction* {.size: sizeof(clong).} = enum
  directionAuto = 0
  directionLtr = 1
  directionRtl = 2
  directionInherited = 3

type TextServer_Orientation* {.size: sizeof(clong).} = enum
  orientationHorizontal = 0
  orientationVertical = 1

type TextServer_JustificationFlag* = enum
  # justificationNone = 0
  justificationKashida = 0
  justificationWordBound = 1
  justificationTrimEdgeSpaces = 2
  justificationAfterLastTab = 3
  justificationConstrainEllipsis = 4
  justificationSkipLastLine = 5
  justificationSkipLastLineWithVisibleChars = 6
  justificationDoNotSkipSingleLine = 7
  `--Padding-Max--` = 63 # To align size-of set[TextServer_JustificationFlag] to size-of Int.

type TextServer_AutowrapMode* {.size: sizeof(clong).} = enum
  autowrapOff = 0
  autowrapArbitrary = 1
  autowrapWord = 2
  autowrapWordSmart = 3

type TextServer_LineBreakFlag* = enum
  # breakNone = 0
  breakMandatory = 0
  breakWordBound = 1
  breakGraphemeBound = 2
  breakAdaptive = 3
  breakTrimEdgeSpaces = 4
  breakTrimIndent = 5
  `--Padding-Max--` = 63 # To align size-of set[TextServer_LineBreakFlag] to size-of Int.

type TextServer_VisibleCharactersBehavior* {.size: sizeof(clong).} = enum
  vcCharsBeforeShaping = 0
  vcCharsAfterShaping = 1
  vcGlyphsAuto = 2
  vcGlyphsLtr = 3
  vcGlyphsRtl = 4

type TextServer_OverrunBehavior* {.size: sizeof(clong).} = enum
  overrunNoTrimming = 0
  overrunTrimChar = 1
  overrunTrimWord = 2
  overrunTrimEllipsis = 3
  overrunTrimWordEllipsis = 4

type TextServer_TextOverrunFlag* = enum
  # overrunNoTrim = 0
  overrunTrim = 0
  overrunTrimWordOnly = 1
  overrunAddEllipsis = 2
  overrunEnforceEllipsis = 3
  overrunJustificationAware = 4
  `--Padding-Max--` = 63 # To align size-of set[TextServer_TextOverrunFlag] to size-of Int.

type TextServer_GraphemeFlag* = enum
  graphemeIsValid = 0
  graphemeIsRtl = 1
  graphemeIsVirtual = 2
  graphemeIsSpace = 3
  graphemeIsBreakHard = 4
  graphemeIsBreakSoft = 5
  graphemeIsTab = 6
  graphemeIsElongation = 7
  graphemeIsPunctuation = 8
  graphemeIsUnderscore = 9
  graphemeIsConnected = 10
  graphemeIsSafeToInsertTatweel = 11
  graphemeIsEmbeddedObject = 12
  graphemeIsSoftHyphen = 13
  `--Padding-Max--` = 63 # To align size-of set[TextServer_GraphemeFlag] to size-of Int.

type TextServer_Hinting* {.size: sizeof(clong).} = enum
  hintingNone = 0
  hintingLight = 1
  hintingNormal = 2

type TextServer_SubpixelPositioning* {.size: sizeof(clong).} = enum
  subpixelPositioningDisabled = 0
  subpixelPositioningAuto = 1
  subpixelPositioningOneHalf = 2
  subpixelPositioningOneQuarter = 3
  subpixelPositioningOneQuarterMaxSize = 16
  subpixelPositioningOneHalfMaxSize = 20

type TextServer_Feature* {.size: sizeof(clong).} = enum
  featureSimpleLayout = 1
  featureBidiLayout = 2
  featureVerticalLayout = 4
  featureShaping = 8
  featureKashidaJustification = 16
  featureBreakIterators = 32
  featureFontBitmap = 64
  featureFontDynamic = 128
  featureFontMsdf = 256
  featureFontSystem = 512
  featureFontVariable = 1024
  featureContextSensitiveCaseConversion = 2048
  featureUseSupportData = 4096
  featureUnicodeIdentifiers = 8192
  featureUnicodeSecurity = 16384

type TextServer_ContourPointTag* {.size: sizeof(clong).} = enum
  contourCurveTagOffConic = 0
  contourCurveTagOn = 1
  contourCurveTagOffCubic = 2

type TextServer_SpacingType* {.size: sizeof(clong).} = enum
  spacingGlyph = 0
  spacingSpace = 1
  spacingTop = 2
  spacingBottom = 3
  spacingMax = 4

type TextServer_FontStyle* = enum
  fontBold = 0
  fontItalic = 1
  fontFixedWidth = 2
  `--Padding-Max--` = 63 # To align size-of set[TextServer_FontStyle] to size-of Int.

type TextServer_StructuredTextParser* {.size: sizeof(clong).} = enum
  structuredTextDefault = 0
  structuredTextUri = 1
  structuredTextFile = 2
  structuredTextEmail = 3
  structuredTextList = 4
  structuredTextGdscript = 5
  structuredTextCustom = 6

type TextServer_FixedSizeScaleMode* {.size: sizeof(clong).} = enum
  fixedSizeScaleDisable = 0
  fixedSizeScaleIntegerOnly = 1
  fixedSizeScaleEnabled = 2

type TextureButton_StretchMode* {.size: sizeof(clong).} = enum
  stretchScale = 0
  stretchTile = 1
  stretchKeep = 2
  stretchKeepCentered = 3
  stretchKeepAspect = 4
  stretchKeepAspectCentered = 5
  stretchKeepAspectCovered = 6

type TextureLayered_LayeredType* {.size: sizeof(clong).} = enum
  layeredType2DArray = 0
  layeredTypeCubemap = 1
  layeredTypeCubemapArray = 2

type TextureProgressBar_FillMode* {.size: sizeof(clong).} = enum
  fillLeftToRight = 0
  fillRightToLeft = 1
  fillTopToBottom = 2
  fillBottomToTop = 3
  fillClockwise = 4
  fillCounterClockwise = 5
  fillBilinearLeftAndRight = 6
  fillBilinearTopAndBottom = 7
  fillClockwiseAndCounterClockwise = 8

type TextureRect_ExpandMode* {.size: sizeof(clong).} = enum
  expandKeepSize = 0
  expandIgnoreSize = 1
  expandFitWidth = 2
  expandFitWidthProportional = 3
  expandFitHeight = 4
  expandFitHeightProportional = 5

type TextureRect_StretchMode* {.size: sizeof(clong).} = enum
  stretchScale = 0
  stretchTile = 1
  stretchKeep = 2
  stretchKeepCentered = 3
  stretchKeepAspect = 4
  stretchKeepAspectCentered = 5
  stretchKeepAspectCovered = 6

type Theme_DataType* {.size: sizeof(clong).} = enum
  dataTypeColor = 0
  dataTypeConstant = 1
  dataTypeFont = 2
  dataTypeFontSize = 3
  dataTypeIcon = 4
  dataTypeStylebox = 5
  dataTypeMax = 6

type GodotThread_Priority* {.size: sizeof(clong).} = enum
  priorityLow = 0
  priorityNormal = 1
  priorityHigh = 2

type TileMap_VisibilityMode* {.size: sizeof(clong).} = enum
  visibilityModeDefault = 0
  visibilityModeForceShow = 1
  visibilityModeForceHide = 2

type TileMapLayer_DebugVisibilityMode* {.size: sizeof(clong).} = enum
  debugVisibilityModeDefault = 0
  debugVisibilityModeForceShow = 1
  debugVisibilityModeForceHide = 2

type TileSet_TileShape* {.size: sizeof(clong).} = enum
  tileShapeSquare = 0
  tileShapeIsometric = 1
  tileShapeHalfOffsetSquare = 2
  tileShapeHexagon = 3

type TileSet_TileLayout* {.size: sizeof(clong).} = enum
  tileLayoutStacked = 0
  tileLayoutStackedOffset = 1
  tileLayoutStairsRight = 2
  tileLayoutStairsDown = 3
  tileLayoutDiamondRight = 4
  tileLayoutDiamondDown = 5

type TileSet_TileOffsetAxis* {.size: sizeof(clong).} = enum
  tileOffsetAxisHorizontal = 0
  tileOffsetAxisVertical = 1

type TileSet_CellNeighbor* {.size: sizeof(clong).} = enum
  cellNeighborRightSide = 0
  cellNeighborRightCorner = 1
  cellNeighborBottomRightSide = 2
  cellNeighborBottomRightCorner = 3
  cellNeighborBottomSide = 4
  cellNeighborBottomCorner = 5
  cellNeighborBottomLeftSide = 6
  cellNeighborBottomLeftCorner = 7
  cellNeighborLeftSide = 8
  cellNeighborLeftCorner = 9
  cellNeighborTopLeftSide = 10
  cellNeighborTopLeftCorner = 11
  cellNeighborTopSide = 12
  cellNeighborTopCorner = 13
  cellNeighborTopRightSide = 14
  cellNeighborTopRightCorner = 15

type TileSet_TerrainMode* {.size: sizeof(clong).} = enum
  terrainModeMatchCornersAndSides = 0
  terrainModeMatchCorners = 1
  terrainModeMatchSides = 2

type TileSetAtlasSource_TileAnimationMode* {.size: sizeof(clong).} = enum
  tileAnimationModeDefault = 0
  tileAnimationModeRandomStartTimes = 1
  tileAnimationModeMax = 2

type Time_Month* {.size: sizeof(clong).} = enum
  monthJanuary = 1
  monthFebruary = 2
  monthMarch = 3
  monthApril = 4
  monthMay = 5
  monthJune = 6
  monthJuly = 7
  monthAugust = 8
  monthSeptember = 9
  monthOctober = 10
  monthNovember = 11
  monthDecember = 12

type Time_Weekday* {.size: sizeof(clong).} = enum
  weekdaySunday = 0
  weekdayMonday = 1
  weekdayTuesday = 2
  weekdayWednesday = 3
  weekdayThursday = 4
  weekdayFriday = 5
  weekdaySaturday = 6

type Timer_TimerProcessCallback* {.size: sizeof(clong).} = enum
  timerProcessPhysics = 0
  timerProcessIdle = 1

type TouchScreenButton_VisibilityMode* {.size: sizeof(clong).} = enum
  visibilityAlways = 0
  visibilityTouchscreenOnly = 1

type Tree_SelectMode* {.size: sizeof(clong).} = enum
  selectSingle = 0
  selectRow = 1
  selectMulti = 2

type Tree_DropModeFlags* {.size: sizeof(clong).} = enum
  dropModeDisabled = 0
  dropModeOnItem = 1
  dropModeInbetween = 2

type TreeItem_TreeCellMode* {.size: sizeof(clong).} = enum
  cellModeString = 0
  cellModeCheck = 1
  cellModeRange = 2
  cellModeIcon = 3
  cellModeCustom = 4

type Tween_TweenProcessMode* {.size: sizeof(clong).} = enum
  tweenProcessPhysics = 0
  tweenProcessIdle = 1

type Tween_TweenPauseMode* {.size: sizeof(clong).} = enum
  tweenPauseBound = 0
  tweenPauseStop = 1
  tweenPauseProcess = 2

type Tween_TransitionType* {.size: sizeof(clong).} = enum
  transLinear = 0
  transSine = 1
  transQuint = 2
  transQuart = 3
  transQuad = 4
  transExpo = 5
  transElastic = 6
  transCubic = 7
  transCirc = 8
  transBounce = 9
  transBack = 10
  transSpring = 11

type Tween_EaseType* {.size: sizeof(clong).} = enum
  easeIn = 0
  easeOut = 1
  easeInOut = 2
  easeOutIn = 3

type Upnp_UpnpResult* {.size: sizeof(clong).} = enum
  upnpResultSuccess = 0
  upnpResultNotAuthorized = 1
  upnpResultPortMappingNotFound = 2
  upnpResultInconsistentParameters = 3
  upnpResultNoSuchEntryInArray = 4
  upnpResultActionFailed = 5
  upnpResultSrcIpWildcardNotPermitted = 6
  upnpResultExtPortWildcardNotPermitted = 7
  upnpResultIntPortWildcardNotPermitted = 8
  upnpResultRemoteHostMustBeWildcard = 9
  upnpResultExtPortMustBeWildcard = 10
  upnpResultNoPortMapsAvailable = 11
  upnpResultConflictWithOtherMechanism = 12
  upnpResultConflictWithOtherMapping = 13
  upnpResultSamePortValuesRequired = 14
  upnpResultOnlyPermanentLeaseSupported = 15
  upnpResultInvalidGateway = 16
  upnpResultInvalidPort = 17
  upnpResultInvalidProtocol = 18
  upnpResultInvalidDuration = 19
  upnpResultInvalidArgs = 20
  upnpResultInvalidResponse = 21
  upnpResultInvalidParam = 22
  upnpResultHttpError = 23
  upnpResultSocketError = 24
  upnpResultMemAllocError = 25
  upnpResultNoGateway = 26
  upnpResultNoDevices = 27
  upnpResultUnknownError = 28

type UpnpDevice_IgdStatus* {.size: sizeof(clong).} = enum
  igdStatusOk = 0
  igdStatusHttpError = 1
  igdStatusHttpEmpty = 2
  igdStatusNoUrls = 3
  igdStatusNoIgd = 4
  igdStatusDisconnected = 5
  igdStatusUnknownDevice = 6
  igdStatusInvalidControl = 7
  igdStatusMallocError = 8
  igdStatusUnknownError = 9

type UndoRedo_MergeMode* {.size: sizeof(clong).} = enum
  mergeDisable = 0
  mergeEnds = 1
  mergeAll = 2

type Viewport_PositionalShadowAtlasQuadrantSubdiv* {.size: sizeof(clong).} = enum
  shadowAtlasQuadrantSubdivDisabled = 0
  shadowAtlasQuadrantSubdiv1 = 1
  shadowAtlasQuadrantSubdiv4 = 2
  shadowAtlasQuadrantSubdiv16 = 3
  shadowAtlasQuadrantSubdiv64 = 4
  shadowAtlasQuadrantSubdiv256 = 5
  shadowAtlasQuadrantSubdiv1024 = 6
  shadowAtlasQuadrantSubdivMax = 7

type Viewport_Scaling3DMode* {.size: sizeof(clong).} = enum
  scaling3DModeBilinear = 0
  scaling3DModeFsr = 1
  scaling3DModeFsr2 = 2
  scaling3DModeMax = 3

type Viewport_Msaa* {.size: sizeof(clong).} = enum
  msaaDisabled = 0
  msaa2X = 1
  msaa4X = 2
  msaa8X = 3
  msaaMax = 4

type Viewport_ScreenSpaceAa* {.size: sizeof(clong).} = enum
  screenSpaceAaDisabled = 0
  screenSpaceAaFxaa = 1
  screenSpaceAaMax = 2

type Viewport_RenderInfo* {.size: sizeof(clong).} = enum
  renderInfoObjectsInFrame = 0
  renderInfoPrimitivesInFrame = 1
  renderInfoDrawCallsInFrame = 2
  renderInfoMax = 3

type Viewport_RenderInfoType* {.size: sizeof(clong).} = enum
  renderInfoTypeVisible = 0
  renderInfoTypeShadow = 1
  renderInfoTypeCanvas = 2
  renderInfoTypeMax = 3

type Viewport_DebugDraw* {.size: sizeof(clong).} = enum
  debugDrawDisabled = 0
  debugDrawUnshaded = 1
  debugDrawLighting = 2
  debugDrawOverdraw = 3
  debugDrawWireframe = 4
  debugDrawNormalBuffer = 5
  debugDrawVoxelGiAlbedo = 6
  debugDrawVoxelGiLighting = 7
  debugDrawVoxelGiEmission = 8
  debugDrawShadowAtlas = 9
  debugDrawDirectionalShadowAtlas = 10
  debugDrawSceneLuminance = 11
  debugDrawSsao = 12
  debugDrawSsil = 13
  debugDrawPssmSplits = 14
  debugDrawDecalAtlas = 15
  debugDrawSdfgi = 16
  debugDrawSdfgiProbes = 17
  debugDrawGiBuffer = 18
  debugDrawDisableLod = 19
  debugDrawClusterOmniLights = 20
  debugDrawClusterSpotLights = 21
  debugDrawClusterDecals = 22
  debugDrawClusterReflectionProbes = 23
  debugDrawOccluders = 24
  debugDrawMotionVectors = 25
  debugDrawInternalBuffer = 26

type Viewport_DefaultCanvasItemTextureFilter* {.size: sizeof(clong).} = enum
  defaultCanvasItemTextureFilterNearest = 0
  defaultCanvasItemTextureFilterLinear = 1
  defaultCanvasItemTextureFilterLinearWithMipmaps = 2
  defaultCanvasItemTextureFilterNearestWithMipmaps = 3
  defaultCanvasItemTextureFilterMax = 4

type Viewport_DefaultCanvasItemTextureRepeat* {.size: sizeof(clong).} = enum
  defaultCanvasItemTextureRepeatDisabled = 0
  defaultCanvasItemTextureRepeatEnabled = 1
  defaultCanvasItemTextureRepeatMirror = 2
  defaultCanvasItemTextureRepeatMax = 3

type Viewport_SdfOversize* {.size: sizeof(clong).} = enum
  sdfOversize100Percent = 0
  sdfOversize120Percent = 1
  sdfOversize150Percent = 2
  sdfOversize200Percent = 3
  sdfOversizeMax = 4

type Viewport_SdfScale* {.size: sizeof(clong).} = enum
  sdfScale100Percent = 0
  sdfScale50Percent = 1
  sdfScale25Percent = 2
  sdfScaleMax = 3

type Viewport_VrsMode* {.size: sizeof(clong).} = enum
  vrsDisabled = 0
  vrsTexture = 1
  vrsXr = 2
  vrsMax = 3

type Viewport_VrsUpdateMode* {.size: sizeof(clong).} = enum
  vrsUpdateDisabled = 0
  vrsUpdateOnce = 1
  vrsUpdateAlways = 2
  vrsUpdateMax = 3

type VisibleOnScreenEnabler2D_EnableMode* {.size: sizeof(clong).} = enum
  enableModeInherit = 0
  enableModeAlways = 1
  enableModeWhenPaused = 2

type VisibleOnScreenEnabler3D_EnableMode* {.size: sizeof(clong).} = enum
  enableModeInherit = 0
  enableModeAlways = 1
  enableModeWhenPaused = 2

type VisualShader_Type* {.size: sizeof(clong).} = enum
  typeVertex = 0
  typeFragment = 1
  typeLight = 2
  typeStart = 3
  typeProcess = 4
  typeCollide = 5
  typeStartCustom = 6
  typeProcessCustom = 7
  typeSky = 8
  typeFog = 9
  typeMax = 10

type VisualShader_VaryingMode* {.size: sizeof(clong).} = enum
  varyingModeVertexToFragLight = 0
  varyingModeFragToLight = 1
  varyingModeMax = 2

type VisualShader_VaryingType* {.size: sizeof(clong).} = enum
  varyingTypeFloat = 0
  varyingTypeInt = 1
  varyingTypeUint = 2
  varyingTypeVector2D = 3
  varyingTypeVector3D = 4
  varyingTypeVector4D = 5
  varyingTypeBoolean = 6
  varyingTypeTransform = 7
  varyingTypeMax = 8

type VisualShaderNode_PortType* {.size: sizeof(clong).} = enum
  portTypeScalar = 0
  portTypeScalarInt = 1
  portTypeScalarUint = 2
  portTypeVector2D = 3
  portTypeVector3D = 4
  portTypeVector4D = 5
  portTypeBoolean = 6
  portTypeTransform = 7
  portTypeSampler = 8
  portTypeMax = 9

type VisualShaderNodeBillboard_BillboardType* {.size: sizeof(clong).} = enum
  billboardTypeDisabled = 0
  billboardTypeEnabled = 1
  billboardTypeFixedY = 2
  billboardTypeParticles = 3
  billboardTypeMax = 4

type VisualShaderNodeClamp_OpType* {.size: sizeof(clong).} = enum
  opTypeFloat = 0
  opTypeInt = 1
  opTypeUint = 2
  opTypeVector2D = 3
  opTypeVector3D = 4
  opTypeVector4D = 5
  opTypeMax = 6

type VisualShaderNodeColorFunc_Function* {.size: sizeof(clong).} = enum
  funcGrayscale = 0
  funcHsv2Rgb = 1
  funcRgb2Hsv = 2
  funcSepia = 3
  funcMax = 4

type VisualShaderNodeColorOp_Operator* {.size: sizeof(clong).} = enum
  opScreen = 0
  opDifference = 1
  opDarken = 2
  opLighten = 3
  opOverlay = 4
  opDodge = 5
  opBurn = 6
  opSoftLight = 7
  opHardLight = 8
  opMax = 9

type VisualShaderNodeCompare_ComparisonType* {.size: sizeof(clong).} = enum
  ctypeScalar = 0
  ctypeScalarInt = 1
  ctypeScalarUint = 2
  ctypeVector2D = 3
  ctypeVector3D = 4
  ctypeVector4D = 5
  ctypeBoolean = 6
  ctypeTransform = 7
  ctypeMax = 8

type VisualShaderNodeCompare_Function* {.size: sizeof(clong).} = enum
  funcEqual = 0
  funcNotEqual = 1
  funcGreaterThan = 2
  funcGreaterThanEqual = 3
  funcLessThan = 4
  funcLessThanEqual = 5
  funcMax = 6

type VisualShaderNodeCompare_Condition* {.size: sizeof(clong).} = enum
  condAll = 0
  condAny = 1
  condMax = 2

type VisualShaderNodeCubemap_Source* {.size: sizeof(clong).} = enum
  sourceTexture = 0
  sourcePort = 1
  sourceMax = 2

type VisualShaderNodeCubemap_TextureType* {.size: sizeof(clong).} = enum
  typeData = 0
  typeColor = 1
  typeNormalMap = 2
  typeMax = 3

type VisualShaderNodeDerivativeFunc_OpType* {.size: sizeof(clong).} = enum
  opTypeScalar = 0
  opTypeVector2D = 1
  opTypeVector3D = 2
  opTypeVector4D = 3
  opTypeMax = 4

type VisualShaderNodeDerivativeFunc_Function* {.size: sizeof(clong).} = enum
  funcSum = 0
  funcX = 1
  funcY = 2
  funcMax = 3

type VisualShaderNodeDerivativeFunc_Precision* {.size: sizeof(clong).} = enum
  precisionNone = 0
  precisionCoarse = 1
  precisionFine = 2
  precisionMax = 3

type VisualShaderNodeFloatFunc_Function* {.size: sizeof(clong).} = enum
  funcSin = 0
  funcCos = 1
  funcTan = 2
  funcAsin = 3
  funcAcos = 4
  funcAtan = 5
  funcSinh = 6
  funcCosh = 7
  funcTanh = 8
  funcLog = 9
  funcExp = 10
  funcSqrt = 11
  funcAbs = 12
  funcSign = 13
  funcFloor = 14
  funcRound = 15
  funcCeil = 16
  funcFract = 17
  funcSaturate = 18
  funcNegate = 19
  funcAcosh = 20
  funcAsinh = 21
  funcAtanh = 22
  funcDegrees = 23
  funcExp2 = 24
  funcInverseSqrt = 25
  funcLog2 = 26
  funcRadians = 27
  funcReciprocal = 28
  funcRoundeven = 29
  funcTrunc = 30
  funcOneminus = 31
  funcMax = 32

type VisualShaderNodeFloatOp_Operator* {.size: sizeof(clong).} = enum
  opAdd = 0
  opSub = 1
  opMul = 2
  opDiv = 3
  opMod = 4
  opPow = 5
  opMax = 6
  opMin = 7
  opAtan2 = 8
  opStep = 9
  opEnumSize = 10

type VisualShaderNodeFloatParameter_Hint* {.size: sizeof(clong).} = enum
  hintNone = 0
  hintRange = 1
  hintRangeStep = 2
  hintMax = 3

type VisualShaderNodeIntFunc_Function* {.size: sizeof(clong).} = enum
  funcAbs = 0
  funcNegate = 1
  funcSign = 2
  funcBitwiseNot = 3
  funcMax = 4

type VisualShaderNodeIntOp_Operator* {.size: sizeof(clong).} = enum
  opAdd = 0
  opSub = 1
  opMul = 2
  opDiv = 3
  opMod = 4
  opMax = 5
  opMin = 6
  opBitwiseAnd = 7
  opBitwiseOr = 8
  opBitwiseXor = 9
  opBitwiseLeftShift = 10
  opBitwiseRightShift = 11
  opEnumSize = 12

type VisualShaderNodeIntParameter_Hint* {.size: sizeof(clong).} = enum
  hintNone = 0
  hintRange = 1
  hintRangeStep = 2
  hintMax = 3

type VisualShaderNodeIs_Function* {.size: sizeof(clong).} = enum
  funcIsInf = 0
  funcIsNan = 1
  funcMax = 2

type VisualShaderNodeMix_OpType* {.size: sizeof(clong).} = enum
  opTypeScalar = 0
  opTypeVector2D = 1
  opTypeVector2DScalar = 2
  opTypeVector3D = 3
  opTypeVector3DScalar = 4
  opTypeVector4D = 5
  opTypeVector4DScalar = 6
  opTypeMax = 7

type VisualShaderNodeMultiplyAdd_OpType* {.size: sizeof(clong).} = enum
  opTypeScalar = 0
  opTypeVector2D = 1
  opTypeVector3D = 2
  opTypeVector4D = 3
  opTypeMax = 4

type VisualShaderNodeParameter_Qualifier* {.size: sizeof(clong).} = enum
  qualNone = 0
  qualGlobal = 1
  qualInstance = 2
  qualMax = 3

type VisualShaderNodeParticleAccelerator_Mode* {.size: sizeof(clong).} = enum
  modeLinear = 0
  modeRadial = 1
  modeTangential = 2
  modeMax = 3

type VisualShaderNodeParticleEmit_EmitFlags* {.size: sizeof(clong).} = enum
  emitFlagPosition = 1
  emitFlagRotScale = 2
  emitFlagVelocity = 4
  emitFlagColor = 8
  emitFlagCustom = 16

type VisualShaderNodeParticleRandomness_OpType* {.size: sizeof(clong).} = enum
  opTypeScalar = 0
  opTypeVector2D = 1
  opTypeVector3D = 2
  opTypeVector4D = 3
  opTypeMax = 4

type VisualShaderNodeSample3D_Source* {.size: sizeof(clong).} = enum
  sourceTexture = 0
  sourcePort = 1
  sourceMax = 2

type VisualShaderNodeSmoothStep_OpType* {.size: sizeof(clong).} = enum
  opTypeScalar = 0
  opTypeVector2D = 1
  opTypeVector2DScalar = 2
  opTypeVector3D = 3
  opTypeVector3DScalar = 4
  opTypeVector4D = 5
  opTypeVector4DScalar = 6
  opTypeMax = 7

type VisualShaderNodeStep_OpType* {.size: sizeof(clong).} = enum
  opTypeScalar = 0
  opTypeVector2D = 1
  opTypeVector2DScalar = 2
  opTypeVector3D = 3
  opTypeVector3DScalar = 4
  opTypeVector4D = 5
  opTypeVector4DScalar = 6
  opTypeMax = 7

type VisualShaderNodeSwitch_OpType* {.size: sizeof(clong).} = enum
  opTypeFloat = 0
  opTypeInt = 1
  opTypeUint = 2
  opTypeVector2D = 3
  opTypeVector3D = 4
  opTypeVector4D = 5
  opTypeBoolean = 6
  opTypeTransform = 7
  opTypeMax = 8

type VisualShaderNodeTexture_Source* {.size: sizeof(clong).} = enum
  sourceTexture = 0
  sourceScreen = 1
  source2DTexture = 2
  source2DNormal = 3
  sourceDepth = 4
  sourcePort = 5
  source3DNormal = 6
  sourceRoughness = 7
  sourceMax = 8

type VisualShaderNodeTexture_TextureType* {.size: sizeof(clong).} = enum
  typeData = 0
  typeColor = 1
  typeNormalMap = 2
  typeMax = 3

type VisualShaderNodeTextureParameter_TextureType* {.size: sizeof(clong).} = enum
  typeData = 0
  typeColor = 1
  typeNormalMap = 2
  typeAnisotropy = 3
  typeMax = 4

type VisualShaderNodeTextureParameter_ColorDefault* {.size: sizeof(clong).} = enum
  colorDefaultWhite = 0
  colorDefaultBlack = 1
  colorDefaultTransparent = 2
  colorDefaultMax = 3

type VisualShaderNodeTextureParameter_TextureFilter* {.size: sizeof(clong).} = enum
  filterDefault = 0
  filterNearest = 1
  filterLinear = 2
  filterNearestMipmap = 3
  filterLinearMipmap = 4
  filterNearestMipmapAnisotropic = 5
  filterLinearMipmapAnisotropic = 6
  filterMax = 7

type VisualShaderNodeTextureParameter_TextureRepeat* {.size: sizeof(clong).} = enum
  repeatDefault = 0
  repeatEnabled = 1
  repeatDisabled = 2
  repeatMax = 3

type VisualShaderNodeTextureParameter_TextureSource* {.size: sizeof(clong).} = enum
  sourceNone = 0
  sourceScreen = 1
  sourceDepth = 2
  sourceNormalRoughness = 3
  sourceMax = 4

type VisualShaderNodeTransformFunc_Function* {.size: sizeof(clong).} = enum
  funcInverse = 0
  funcTranspose = 1
  funcMax = 2

type VisualShaderNodeTransformOp_Operator* {.size: sizeof(clong).} = enum
  opAxB = 0
  opBxA = 1
  opAxBComp = 2
  opBxAComp = 3
  opAdd = 4
  opAMinusB = 5
  opBMinusA = 6
  opADivB = 7
  opBDivA = 8
  opMax = 9

type VisualShaderNodeTransformVecMult_Operator* {.size: sizeof(clong).} = enum
  opAxB = 0
  opBxA = 1
  op3X3AxB = 2
  op3X3BxA = 3
  opMax = 4

type VisualShaderNodeUIntFunc_Function* {.size: sizeof(clong).} = enum
  funcNegate = 0
  funcBitwiseNot = 1
  funcMax = 2

type VisualShaderNodeUIntOp_Operator* {.size: sizeof(clong).} = enum
  opAdd = 0
  opSub = 1
  opMul = 2
  opDiv = 3
  opMod = 4
  opMax = 5
  opMin = 6
  opBitwiseAnd = 7
  opBitwiseOr = 8
  opBitwiseXor = 9
  opBitwiseLeftShift = 10
  opBitwiseRightShift = 11
  opEnumSize = 12

type VisualShaderNodeUvFunc_Function* {.size: sizeof(clong).} = enum
  funcPanning = 0
  funcScaling = 1
  funcMax = 2

type VisualShaderNodeVectorBase_OpType* {.size: sizeof(clong).} = enum
  opTypeVector2D = 0
  opTypeVector3D = 1
  opTypeVector4D = 2
  opTypeMax = 3

type VisualShaderNodeVectorFunc_Function* {.size: sizeof(clong).} = enum
  funcNormalize = 0
  funcSaturate = 1
  funcNegate = 2
  funcReciprocal = 3
  funcAbs = 4
  funcAcos = 5
  funcAcosh = 6
  funcAsin = 7
  funcAsinh = 8
  funcAtan = 9
  funcAtanh = 10
  funcCeil = 11
  funcCos = 12
  funcCosh = 13
  funcDegrees = 14
  funcExp = 15
  funcExp2 = 16
  funcFloor = 17
  funcFract = 18
  funcInverseSqrt = 19
  funcLog = 20
  funcLog2 = 21
  funcRadians = 22
  funcRound = 23
  funcRoundeven = 24
  funcSign = 25
  funcSin = 26
  funcSinh = 27
  funcSqrt = 28
  funcTan = 29
  funcTanh = 30
  funcTrunc = 31
  funcOneminus = 32
  funcMax = 33

type VisualShaderNodeVectorOp_Operator* {.size: sizeof(clong).} = enum
  opAdd = 0
  opSub = 1
  opMul = 2
  opDiv = 3
  opMod = 4
  opPow = 5
  opMax = 6
  opMin = 7
  opCross = 8
  opAtan2 = 9
  opReflect = 10
  opStep = 11
  opEnumSize = 12

type VoxelGi_Subdiv* {.size: sizeof(clong).} = enum
  subdiv64 = 0
  subdiv128 = 1
  subdiv256 = 2
  subdiv512 = 3
  subdivMax = 4

type WebRtcDataChannel_WriteMode* {.size: sizeof(clong).} = enum
  writeModeText = 0
  writeModeBinary = 1

type WebRtcDataChannel_ChannelState* {.size: sizeof(clong).} = enum
  stateConnecting = 0
  stateOpen = 1
  stateClosing = 2
  stateClosed = 3

type WebRtcPeerConnection_ConnectionState* {.size: sizeof(clong).} = enum
  stateNew = 0
  stateConnecting = 1
  stateConnected = 2
  stateDisconnected = 3
  stateFailed = 4
  stateClosed = 5

type WebRtcPeerConnection_GatheringState* {.size: sizeof(clong).} = enum
  gatheringStateNew = 0
  gatheringStateGathering = 1
  gatheringStateComplete = 2

type WebRtcPeerConnection_SignalingState* {.size: sizeof(clong).} = enum
  signalingStateStable = 0
  signalingStateHaveLocalOffer = 1
  signalingStateHaveRemoteOffer = 2
  signalingStateHaveLocalPranswer = 3
  signalingStateHaveRemotePranswer = 4
  signalingStateClosed = 5

type WebSocketPeer_WriteMode* {.size: sizeof(clong).} = enum
  writeModeText = 0
  writeModeBinary = 1

type WebSocketPeer_State* {.size: sizeof(clong).} = enum
  stateConnecting = 0
  stateOpen = 1
  stateClosing = 2
  stateClosed = 3

type WebXrInterface_TargetRayMode* {.size: sizeof(clong).} = enum
  targetRayModeUnknown = 0
  targetRayModeGaze = 1
  targetRayModeTrackedPointer = 2
  targetRayModeScreen = 3

type Window_Mode* {.size: sizeof(clong).} = enum
  modeWindowed = 0
  modeMinimized = 1
  modeMaximized = 2
  modeFullscreen = 3
  modeExclusiveFullscreen = 4

type Window_Flags* {.size: sizeof(clong).} = enum
  flagResizeDisabled = 0
  flagBorderless = 1
  flagAlwaysOnTop = 2
  flagTransparent = 3
  flagNoFocus = 4
  flagPopup = 5
  flagExtendToTitle = 6
  flagMousePassthrough = 7
  flagMax = 8

type Window_ContentScaleMode* {.size: sizeof(clong).} = enum
  contentScaleModeDisabled = 0
  contentScaleModeCanvasItems = 1
  contentScaleModeViewport = 2

type Window_ContentScaleAspect* {.size: sizeof(clong).} = enum
  contentScaleAspectIgnore = 0
  contentScaleAspectKeep = 1
  contentScaleAspectKeepWidth = 2
  contentScaleAspectKeepHeight = 3
  contentScaleAspectExpand = 4

type Window_ContentScaleStretch* {.size: sizeof(clong).} = enum
  contentScaleStretchFractional = 0
  contentScaleStretchInteger = 1

type Window_LayoutDirection* {.size: sizeof(clong).} = enum
  layoutDirectionInherited = 0
  layoutDirectionLocale = 1
  layoutDirectionLtr = 2
  layoutDirectionRtl = 3

type Window_WindowInitialPosition* {.size: sizeof(clong).} = enum
  windowInitialPositionAbsolute = 0
  windowInitialPositionCenterPrimaryScreen = 1
  windowInitialPositionCenterMainWindowScreen = 2
  windowInitialPositionCenterOtherScreen = 3
  windowInitialPositionCenterScreenWithMouseFocus = 4
  windowInitialPositionCenterScreenWithKeyboardFocus = 5

type XmlParser_NodeType* {.size: sizeof(clong).} = enum
  nodeNone = 0
  nodeElement = 1
  nodeElementEnd = 2
  nodeText = 3
  nodeComment = 4
  nodeCdata = 5
  nodeUnknown = 6

type XrBodyModifier3D_BodyUpdate* = enum
  bodyUpdateUpperBody = 0
  bodyUpdateLowerBody = 1
  bodyUpdateHands = 2
  `--Padding-Max--` = 63 # To align size-of set[XrBodyModifier3D_BodyUpdate] to size-of Int.

type XrBodyModifier3D_BoneUpdate* {.size: sizeof(clong).} = enum
  boneUpdateFull = 0
  boneUpdateRotationOnly = 1
  boneUpdateMax = 2

type XrBodyTracker_BodyFlags* = enum
  bodyFlagUpperBodySupported = 0
  bodyFlagLowerBodySupported = 1
  bodyFlagHandsSupported = 2
  `--Padding-Max--` = 63 # To align size-of set[XrBodyTracker_BodyFlags] to size-of Int.

type XrBodyTracker_Joint* {.size: sizeof(clong).} = enum
  jointRoot = 0
  jointHips = 1
  jointSpine = 2
  jointChest = 3
  jointUpperChest = 4
  jointNeck = 5
  jointHead = 6
  jointHeadTip = 7
  jointLeftShoulder = 8
  jointLeftUpperArm = 9
  jointLeftLowerArm = 10
  jointRightShoulder = 11
  jointRightUpperArm = 12
  jointRightLowerArm = 13
  jointLeftUpperLeg = 14
  jointLeftLowerLeg = 15
  jointLeftFoot = 16
  jointLeftToes = 17
  jointRightUpperLeg = 18
  jointRightLowerLeg = 19
  jointRightFoot = 20
  jointRightToes = 21
  jointLeftHand = 22
  jointLeftPalm = 23
  jointLeftWrist = 24
  jointLeftThumbMetacarpal = 25
  jointLeftThumbPhalanxProximal = 26
  jointLeftThumbPhalanxDistal = 27
  jointLeftThumbTip = 28
  jointLeftIndexFingerMetacarpal = 29
  jointLeftIndexFingerPhalanxProximal = 30
  jointLeftIndexFingerPhalanxIntermediate = 31
  jointLeftIndexFingerPhalanxDistal = 32
  jointLeftIndexFingerTip = 33
  jointLeftMiddleFingerMetacarpal = 34
  jointLeftMiddleFingerPhalanxProximal = 35
  jointLeftMiddleFingerPhalanxIntermediate = 36
  jointLeftMiddleFingerPhalanxDistal = 37
  jointLeftMiddleFingerTip = 38
  jointLeftRingFingerMetacarpal = 39
  jointLeftRingFingerPhalanxProximal = 40
  jointLeftRingFingerPhalanxIntermediate = 41
  jointLeftRingFingerPhalanxDistal = 42
  jointLeftRingFingerTip = 43
  jointLeftPinkyFingerMetacarpal = 44
  jointLeftPinkyFingerPhalanxProximal = 45
  jointLeftPinkyFingerPhalanxIntermediate = 46
  jointLeftPinkyFingerPhalanxDistal = 47
  jointLeftPinkyFingerTip = 48
  jointRightHand = 49
  jointRightPalm = 50
  jointRightWrist = 51
  jointRightThumbMetacarpal = 52
  jointRightThumbPhalanxProximal = 53
  jointRightThumbPhalanxDistal = 54
  jointRightThumbTip = 55
  jointRightIndexFingerMetacarpal = 56
  jointRightIndexFingerPhalanxProximal = 57
  jointRightIndexFingerPhalanxIntermediate = 58
  jointRightIndexFingerPhalanxDistal = 59
  jointRightIndexFingerTip = 60
  jointRightMiddleFingerMetacarpal = 61
  jointRightMiddleFingerPhalanxProximal = 62
  jointRightMiddleFingerPhalanxIntermediate = 63
  jointRightMiddleFingerPhalanxDistal = 64
  jointRightMiddleFingerTip = 65
  jointRightRingFingerMetacarpal = 66
  jointRightRingFingerPhalanxProximal = 67
  jointRightRingFingerPhalanxIntermediate = 68
  jointRightRingFingerPhalanxDistal = 69
  jointRightRingFingerTip = 70
  jointRightPinkyFingerMetacarpal = 71
  jointRightPinkyFingerPhalanxProximal = 72
  jointRightPinkyFingerPhalanxIntermediate = 73
  jointRightPinkyFingerPhalanxDistal = 74
  jointRightPinkyFingerTip = 75
  jointMax = 76

type XrBodyTracker_JointFlags* = enum
  jointFlagOrientationValid = 0
  jointFlagOrientationTracked = 1
  jointFlagPositionValid = 2
  jointFlagPositionTracked = 3
  `--Padding-Max--` = 63 # To align size-of set[XrBodyTracker_JointFlags] to size-of Int.

type XrFaceTracker_BlendShapeEntry* {.size: sizeof(clong).} = enum
  ftEyeLookOutRight = 0
  ftEyeLookInRight = 1
  ftEyeLookUpRight = 2
  ftEyeLookDownRight = 3
  ftEyeLookOutLeft = 4
  ftEyeLookInLeft = 5
  ftEyeLookUpLeft = 6
  ftEyeLookDownLeft = 7
  ftEyeClosedRight = 8
  ftEyeClosedLeft = 9
  ftEyeSquintRight = 10
  ftEyeSquintLeft = 11
  ftEyeWideRight = 12
  ftEyeWideLeft = 13
  ftEyeDilationRight = 14
  ftEyeDilationLeft = 15
  ftEyeConstrictRight = 16
  ftEyeConstrictLeft = 17
  ftBrowPinchRight = 18
  ftBrowPinchLeft = 19
  ftBrowLowererRight = 20
  ftBrowLowererLeft = 21
  ftBrowInnerUpRight = 22
  ftBrowInnerUpLeft = 23
  ftBrowOuterUpRight = 24
  ftBrowOuterUpLeft = 25
  ftNoseSneerRight = 26
  ftNoseSneerLeft = 27
  ftNasalDilationRight = 28
  ftNasalDilationLeft = 29
  ftNasalConstrictRight = 30
  ftNasalConstrictLeft = 31
  ftCheekSquintRight = 32
  ftCheekSquintLeft = 33
  ftCheekPuffRight = 34
  ftCheekPuffLeft = 35
  ftCheekSuckRight = 36
  ftCheekSuckLeft = 37
  ftJawOpen = 38
  ftMouthClosed = 39
  ftJawRight = 40
  ftJawLeft = 41
  ftJawForward = 42
  ftJawBackward = 43
  ftJawClench = 44
  ftJawMandibleRaise = 45
  ftLipSuckUpperRight = 46
  ftLipSuckUpperLeft = 47
  ftLipSuckLowerRight = 48
  ftLipSuckLowerLeft = 49
  ftLipSuckCornerRight = 50
  ftLipSuckCornerLeft = 51
  ftLipFunnelUpperRight = 52
  ftLipFunnelUpperLeft = 53
  ftLipFunnelLowerRight = 54
  ftLipFunnelLowerLeft = 55
  ftLipPuckerUpperRight = 56
  ftLipPuckerUpperLeft = 57
  ftLipPuckerLowerRight = 58
  ftLipPuckerLowerLeft = 59
  ftMouthUpperUpRight = 60
  ftMouthUpperUpLeft = 61
  ftMouthLowerDownRight = 62
  ftMouthLowerDownLeft = 63
  ftMouthUpperDeepenRight = 64
  ftMouthUpperDeepenLeft = 65
  ftMouthUpperRight = 66
  ftMouthUpperLeft = 67
  ftMouthLowerRight = 68
  ftMouthLowerLeft = 69
  ftMouthCornerPullRight = 70
  ftMouthCornerPullLeft = 71
  ftMouthCornerSlantRight = 72
  ftMouthCornerSlantLeft = 73
  ftMouthFrownRight = 74
  ftMouthFrownLeft = 75
  ftMouthStretchRight = 76
  ftMouthStretchLeft = 77
  ftMouthDimpleRight = 78
  ftMouthDimpleLeft = 79
  ftMouthRaiserUpper = 80
  ftMouthRaiserLower = 81
  ftMouthPressRight = 82
  ftMouthPressLeft = 83
  ftMouthTightenerRight = 84
  ftMouthTightenerLeft = 85
  ftTongueOut = 86
  ftTongueUp = 87
  ftTongueDown = 88
  ftTongueRight = 89
  ftTongueLeft = 90
  ftTongueRoll = 91
  ftTongueBlendDown = 92
  ftTongueCurlUp = 93
  ftTongueSquish = 94
  ftTongueFlat = 95
  ftTongueTwistRight = 96
  ftTongueTwistLeft = 97
  ftSoftPalateClose = 98
  ftThroatSwallow = 99
  ftNeckFlexRight = 100
  ftNeckFlexLeft = 101
  ftEyeClosed = 102
  ftEyeWide = 103
  ftEyeSquint = 104
  ftEyeDilation = 105
  ftEyeConstrict = 106
  ftBrowDownRight = 107
  ftBrowDownLeft = 108
  ftBrowDown = 109
  ftBrowUpRight = 110
  ftBrowUpLeft = 111
  ftBrowUp = 112
  ftNoseSneer = 113
  ftNasalDilation = 114
  ftNasalConstrict = 115
  ftCheekPuff = 116
  ftCheekSuck = 117
  ftCheekSquint = 118
  ftLipSuckUpper = 119
  ftLipSuckLower = 120
  ftLipSuck = 121
  ftLipFunnelUpper = 122
  ftLipFunnelLower = 123
  ftLipFunnel = 124
  ftLipPuckerUpper = 125
  ftLipPuckerLower = 126
  ftLipPucker = 127
  ftMouthUpperUp = 128
  ftMouthLowerDown = 129
  ftMouthOpen = 130
  ftMouthRight = 131
  ftMouthLeft = 132
  ftMouthSmileRight = 133
  ftMouthSmileLeft = 134
  ftMouthSmile = 135
  ftMouthSadRight = 136
  ftMouthSadLeft = 137
  ftMouthSad = 138
  ftMouthStretch = 139
  ftMouthDimple = 140
  ftMouthTightener = 141
  ftMouthPress = 142
  ftMax = 143

type XrHandModifier3D_BoneUpdate* {.size: sizeof(clong).} = enum
  boneUpdateFull = 0
  boneUpdateRotationOnly = 1
  boneUpdateMax = 2

type XrHandTracker_HandTrackingSource* {.size: sizeof(clong).} = enum
  handTrackingSourceUnknown = 0
  handTrackingSourceUnobstructed = 1
  handTrackingSourceController = 2
  handTrackingSourceMax = 3

type XrHandTracker_HandJoint* {.size: sizeof(clong).} = enum
  handJointPalm = 0
  handJointWrist = 1
  handJointThumbMetacarpal = 2
  handJointThumbPhalanxProximal = 3
  handJointThumbPhalanxDistal = 4
  handJointThumbTip = 5
  handJointIndexFingerMetacarpal = 6
  handJointIndexFingerPhalanxProximal = 7
  handJointIndexFingerPhalanxIntermediate = 8
  handJointIndexFingerPhalanxDistal = 9
  handJointIndexFingerTip = 10
  handJointMiddleFingerMetacarpal = 11
  handJointMiddleFingerPhalanxProximal = 12
  handJointMiddleFingerPhalanxIntermediate = 13
  handJointMiddleFingerPhalanxDistal = 14
  handJointMiddleFingerTip = 15
  handJointRingFingerMetacarpal = 16
  handJointRingFingerPhalanxProximal = 17
  handJointRingFingerPhalanxIntermediate = 18
  handJointRingFingerPhalanxDistal = 19
  handJointRingFingerTip = 20
  handJointPinkyFingerMetacarpal = 21
  handJointPinkyFingerPhalanxProximal = 22
  handJointPinkyFingerPhalanxIntermediate = 23
  handJointPinkyFingerPhalanxDistal = 24
  handJointPinkyFingerTip = 25
  handJointMax = 26

type XrHandTracker_HandJointFlags* = enum
  handJointFlagOrientationValid = 0
  handJointFlagOrientationTracked = 1
  handJointFlagPositionValid = 2
  handJointFlagPositionTracked = 3
  handJointFlagLinearVelocityValid = 4
  handJointFlagAngularVelocityValid = 5
  `--Padding-Max--` = 63 # To align size-of set[XrHandTracker_HandJointFlags] to size-of Int.

type XrInterface_Capabilities* {.size: sizeof(clong).} = enum
  xrNone = 0
  xrMono = 1
  xrStereo = 2
  xrQuad = 4
  xrVr = 8
  xrAr = 16
  xrExternal = 32

type XrInterface_TrackingStatus* {.size: sizeof(clong).} = enum
  xrNormalTracking = 0
  xrExcessiveMotion = 1
  xrInsufficientFeatures = 2
  xrUnknownTracking = 3
  xrNotTracking = 4

type XrInterface_PlayAreaMode* {.size: sizeof(clong).} = enum
  xrPlayAreaUnknown = 0
  xrPlayArea3Dof = 1
  xrPlayAreaSitting = 2
  xrPlayAreaRoomscale = 3
  xrPlayAreaStage = 4

type XrInterface_EnvironmentBlendMode* {.size: sizeof(clong).} = enum
  xrEnvBlendModeOpaque = 0
  xrEnvBlendModeAdditive = 1
  xrEnvBlendModeAlphaBlend = 2

type XrPose_TrackingConfidence* {.size: sizeof(clong).} = enum
  xrTrackingConfidenceNone = 0
  xrTrackingConfidenceLow = 1
  xrTrackingConfidenceHigh = 2

type XrPositionalTracker_TrackerHand* {.size: sizeof(clong).} = enum
  trackerHandUnknown = 0
  trackerHandLeft = 1
  trackerHandRight = 2
  trackerHandMax = 3

type XrServer_TrackerType* {.size: sizeof(clong).} = enum
  trackerHead = 1
  trackerController = 2
  trackerBasestation = 4
  trackerAnchor = 8
  trackerHand = 16
  trackerBody = 32
  trackerFace = 64
  trackerAnyKnown = 127
  trackerUnknown = 128
  trackerAny = 255

type XrServer_RotationMode* {.size: sizeof(clong).} = enum
  resetFullRotation = 0
  resetButKeepTilt = 1
  dontResetRotation = 2

type ZipPacker_ZipAppend* {.size: sizeof(clong).} = enum
  appendCreate = 0
  appendCreateafter = 1
  appendAddinzip = 2