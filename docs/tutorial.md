---
layout: default
title: Tutorial - Your first 2D game
author: la.panon.
---

* TOC
{:toc}

# 1. Introduction

## Target Audience

- Those who already read [Development Guide]

## Purpose of this tutorial

In this tutorial, we will reimplement “Dodge the Creeps!” using gdext-nim based on [Your first 2D game] by Godot community.

Through this tutorial, you will learn in turn about game development using gdext-nim.

## Misc

Questions and requests for this tutorial can be submitted at:

  * https://github.com/godot-nim/gdext-nim/discussions/categories/tutorial

We hope to revitalize both the Godot and Nim communities. Please feel free to contact us.

A complete version of this project can be found here:

  * https://github.com/godot-nim/demo/tree/main/dodge_the_creeps_2d


# 2. Setting up the project

At first, please work according to the contents of [Godot Docs - Setting up the project][1].

We will start the project in the following state:
```
.
├── art
│   ├── enemyFlyingAlt_1.png
│   ├── enemyFlyingAlt_2.png
│   ├── enemySwimming_1.png
│   ├── enemySwimming_2.png
│   ├── enemyWalking_1.png
│   ├── enemyWalking_2.png
│   ├── gameover.wav
│   ├── House In a Forest Loop.ogg
│   ├── playerGrey_up1.png
│   ├── playerGrey_up2.png
│   ├── playerGrey_walk1.png
│   └── playerGrey_walk2.png
├── fonts
│   ├── FONTLOG.txt
│   ├── LICENSE.txt
│   └── Xolonium-Regular.ttf
├── icon.svg
├── icon.svg.import
└── project.godot
```

## Setting up new extension

Let's define a new extension by executing the following command in your project root (the folder that project.godot is placed):

```sh
gdextwiz new-extension nimmain
```

That will create a "nim/" folder as follows:

```
.
├── nim
│   └── nimmain
│       ├── bootstrap.nim
│       ├── config.nims
│       └── src
│           └── classes
│               └── gdmyclass.nim
```

MyClass is no longer needed, so let's delete it. Delete the file nim/nimmain/src/classes/gdmyclass.nim and remove the import statement from nim/nimmain/src/bootstrap.nim.

```diff
  # nim/nimmain/src/bootstrap.nim
  import gdext
- import classes/gdMyClass


  GDExtensionEntryPoint
```

bootstrap.nim is the entry point for the Nim extension. By importing the required classes from this file, they will be recognized by the engine.

Now let's rebuild the extension and focus the editor, and you will see that MyClass can no longer be added to the scene. As you can see, gdext-nim supports hot reloading. You can proceed with development without restarting the editor.

Nevertheless, the integration between gdext-nim and Godot Editor is not perfect. If you encounter a puzzling error, try restarting the editor once.

Please proceed with the [Godot Docs - Creating the player scene][1] content first. We will resume the tutorial with the following project configuration:

```
.
├── art
├── fonts
├── icon.svg
├── icon.svg.import
├── nim
├── player.tscn [New]
└── project.godot
```

Let's begin this section by defining our Player class.

```nim
# nim/nimmain/src/classes/gdplayer.nim
import gdext
import gdext/classes/gdArea2D

type Player* {.gdsync.} = ptr object of Area2D
  speed* {.gdexport.}: float32 = 400
  screen_size: Vector2
```

Two unique gdext-nim pragmas appeared.

[`{.gdsync.}`] is a pragma that allows Godot to recognize classes defined in Nim. When defining a new class, please add an asterisk `*` and [`{.gdsync.}`] to the type name.

[`{.gdexport.}`] is a pragma to expose properties to the engine (GDScript). By appending an asterisk `*` and [`{.gdexport.}`] to a property, this property will appear in the inspector and can be referenced from GDScript.

Import this module from bootstrap.nim and build the extension.

```diff
# nim/nimmain/bootstrap.nim
  import gdext
+ import classes/gdPlayer


  GDExtensionEntryPoint
```
```sh
gdextwiz build
```

Now we can replace the Player(Area2D) node in the player scene with our Player type. You should see the Speed property in the inspector.

![Replace player node's type with Player](https://github.com/user-attachments/assets/e508fa59-d12a-42c6-9bdb-c604f88de3ba)
![Inspector view of Player node that contains Speed property](https://github.com/user-attachments/assets/09e9e358-f410-4ba3-a542-70d607b6cade)

In gdext-nim, Godot virtual functions override the following:

```nim
method ready(self: Player) {.gdsync.} =
  self.screen_size = self.getViewportRect().size
```

Nim does not allow leading underscores. Instead, replace proc with method. That is the marker for overriding a virtual function. And [`{.gdsync.}`] appears here as well. As you might have guessed, if you forget to add [`{.gdsync.}`], Godot will not call that method. Please be careful.

Follow the Godot Docs to complete the input map setup.

Here is the function that handles the input map. Hmm, which is almost identical to that of GDScript.

```nim
method process(self: Player; delta: float64) {.gdsync.} =
  var velocity: Vector2
  if Input.isActionPressed "move_right":
    velocity.x += 1
  if Input.isActionPressed "move_left":
    velocity.x -= 1
  if Input.isActionPressed "move_down":
    velocity.y += 1
  if Input.isActionPressed "move_up":
    velocity.y -= 1

  if velocity.length > 0:
    velocity = velocity.normalized * self.speed
    play self.AnimatedSprite2D
  else:
    stop self.AnimatedSprite2D
```

The main thing to notice is the acquisition of child nodes, which in GDScript is done using the `$` operator, which is not supported in gdext-nim. Instead, we do the following

```nim
type Player* {.gdsync.} = ptr object of Area2D
  speed* {.gdexport.}: float32 = 400
  screen_size: Vector2
  AnimatedSprite2D: AnimatedSprite2D
  CollisionShape2D: CollisionShape2D

method ready(self: Player) {.gdsync.} =
  self.screen_size = self.getViewportRect().size
  self.AnimatedSprite2D = self/"AnimatedSprite2D" as AnimatedSprite2D
  self.CollisionShape2D = self/"CollisionShape2D" as CollisionShape2D
```

In other words, it gets the child node once at initialization, casts it, and caches it. The `/` is an alias for `get_node`, which retrieves the node whose name is specified by the path. The following complex description also works

```nim
discard self/"one/two"/"three"
```

The `/` operator returns just a Node, so cast it to the type you want with the `as` operator. Avoid using the standard Nim type conversion mechanism, which succeeds for upcast but almost always fails for downcast.

Oops, the compiler gets angry cuz the play() and stop() functions are undefined. Let's import the AnimationSprite2D functions.

```nim
import gdext/classes/gdAnimationSprite2D
```

Did you notice that the module names is in camelCase? This is not Nim's style, actually these module names are defined in lowercase. However, the Nim compiler normalizes module names so gdext-nim recommends to use camelCase in import sentence for readability.

# 3. Coding the player

Please proceed through the tutorial up to Preparing for collisions, taking into account what has been said so far.

In gdext-nim, signals are defined as follows

```nim
proc hit(self: Player): Error {.gdsync, signal.}
```

You're all set for [`{.gdsync.}`]; put it on the functions you want Godot to know about anyway.
To define a signal, pass in another [`{.signal.}`] pragma and set the return type to Error.

Now let's connect a callback to the signal.

```nim
method ready(self: Player) {.gdsync.} =
  self.screen_size = self.getViewportRect().size
  self.AnimatedSprite2D = self/"AnimatedSprite2D" as AnimatedSprite2D
  self.CollisionShape2D = self/"CollisionShape2D" as CollisionShape2D
  discard self.connect("body_entered", self.callable"_on_body_entered")
  hide self

proc onBodyEntered(self: Player; body: Variant) {.gdsync, name: "_on_body_entered".} =
  discard
```

In this example, the onBodyEntered function is recognized by the Engine by [`{.gdsync.}`], the alias is set by [`{.name.}`], and the connection is made by the connect function.

If you set an alias, the engine will recognize, in this example,  the onBodyEntered function as “_on_body_entered”.

To refer to the function via the engine, such as to refer to it from a GDScript or to retrieve a Callable, you should use the case-sensitive name you set whatever [`{.name.}`] pragma is set or not.

Okay, let's implement onBodyEntered.

```nim
proc onBodyEntered(self: Player; body: Variant) {.gdsync, name: "_on_body_entered".} =
  hide self
  discard self.hit()
  self.CollisionShape2D.setDeferred("disabled", variant true)
```

To emit a signal, simply call the signal as a function.
Of course, you can also use `Signal.emit` or `Object.emitSignal`.

```nim
discard self.emitSignal("hit")
discard self.signal("hit").emit()
```

Here is a full example of gdplayer.nim.

```nim
import gdext
import gdext/classes/gdArea2D
import gdext/classes/gdInput
import gdext/classes/gdSceneTree
import gdext/classes/gdAnimatedSprite2D
import gdext/classes/gdCollisionShape2D


type Player* {.gdsync.} = ptr object of Area2D
  speed* {.gdexport.}: float32 = 400
  screen_size: Vector2
  AnimatedSprite2D: AnimatedSprite2D
  CollisionShape2D: CollisionShape2D

proc hit(self: Player): Error {.gdsync, signal.}

proc start*(self: Player; pos: Vector2) =
  self.position = pos
  show self
  self.CollisionShape2D.disabled = false

method ready(self: Player) {.gdsync.} =
  self.screen_size = self.getViewportRect().size
  self.AnimatedSprite2D = self/"AnimatedSprite2D" as AnimatedSprite2D
  self.CollisionShape2D = self/"CollisionShape2D" as CollisionShape2D
  discard self.connect("body_entered", self.callable"_on_body_entered")
  hide self

method process(self: Player; delta: float64) {.gdsync.} =
  var velocity: Vector2
  if Input.isActionPressed "move_right":
    velocity.x += 1
  if Input.isActionPressed "move_left":
    velocity.x -= 1
  if Input.isActionPressed "move_down":
    velocity.y += 1
  if Input.isActionPressed "move_up":
    velocity.y -= 1

  if velocity.length > 0:
    velocity = velocity.normalized * self.speed
    play self.AnimatedSprite2D
  else:
    stop self.AnimatedSprite2D

  self.position = self.position + velocity * float32 delta
  self.position = self.position.clamp(Vector2.Zero, self.screen_size)

  if velocity.x != 0:
    self.AnimatedSprite2D.animation = "walk"
    self.AnimatedSprite2D.flip_v = false
    self.AnimatedSprite2D.flip_h = velocity.x < 0
  elif velocity.y != 0:
    self.AnimatedSprite2D.animation = "up"
    self.AnimatedSprite2D.flip_v = velocity.y > 0

proc onBodyEntered(self: Player; body: Variant) {.gdsync, name: "_on_body_entered".} =
  hide self
  discard self.hit()
  self.CollisionShape2D.setDeferred("disabled", variant true)
```

# 4. Creating the enemy

The tutorial corresponding to this page is [here][2]. Please proceed to the "Enemy script".

Let me show you the whole code first.

```nim
# nim/nimmain/src/classes/gdmob.nim
import gdext
import gdext/classes/gdAnimatedSprite2D
import gdext/classes/gdSpriteFrames
import gdext/classes/gdSceneTree

type Mob* {.gdsync.} = ptr object of RigidBody2D

method ready(self: Mob) {.gdsync.} =
  let AnimatedSprite2D = self/"AnimatedSprite2D" as AnimatedSprite2D
  let VisibleOnScreenNotifier2D = self/"VisibleOnScreenNotifier2D" as VisibleOnScreenNotifier2D

  discard VisibleOnScreenNotifier2D.connect("screen_exited", self.callable"_on_visible_on_screen_notifier_2d_screen_exited")

  let mobTypes = newArray AnimatedSprite2D.spriteFrames[].getAnimationNames
  AnimatedSprite2D.play(mobTypes.pickRandom.get(StringName))

proc on_VisibleOnScreenNotifier2D_screen_exited(self: Mob) {.gdsync, name: "_on_visible_on_screen_notifier_2d_screen_exited".} =
  queueFree self
```

The one that should be explained in this context is `AnimatedSprite2D.spriteFrames[]`. What is this `[]`?

`spriteFrames()` returns `SpriteFrames`, a subclass of type `Resource`. gdext-nim uses our `gdref` type instead of Nim's `ref` to emulate Godot's reference counting mechanism.

The `spriteFrames()` is precisely that it returns `gdref SpriteFrames`.

Because of implementation constraints, we need to call the `[]` operator to get the raw object out of the gdref-wrapped Resource.

```diff
# nim/nimmain/bootstrap.nim
  import gdext
  import classes/gdPlayer
+ import classes/gdMob


  GDExtensionEntryPoint
```

Don't forget to build and replace the Mob node.

# 5. The main game scene

```nim
# nim/nimmain/src/classes/gdmain.nim
import gdext

import classes/gdPlayer
import classes/gdMob

import gdext/classes/gdSceneTree
import gdext/classes/gdNode
import gdext/classes/gdMarker2D
import gdext/classes/gdTimer
import gdext/classes/gdPackedScene
import gdext/classes/gdPathFollow2D
import gdext/classes/gdRigidBody2D
import gdext/classes/gdAudioStreamPlayer

type Main* {.gdsync.} = ptr object of Node
  mob_scene* {.gdexport.}: gdref PackedScene
  score: int
  Player: Player
  MobTimer: Timer
  ScoreTimer: Timer
  StartTimer: Timer
  StartPosition: Marker2D
  MobSpawnLocation: PathFollow2D

proc newGame(self: Main) {.gdsync, name: "new_game".} =
  self.score = 0
  self.Player.start(self.StartPosition.position)
  start self.StartTimer

proc gameOver(self: Main) {.gdsync, name: "game_over".} =
  stop self.ScoreTimer
  stop self.MobTimer

method ready(self: Main) {.gdsync.} =
  self.Player = self/"Player" as Player
  self.MobTimer = self/"MobTimer" as Timer
  self.ScoreTimer = self/"ScoreTimer" as Timer
  self.StartTimer = self/"StartTimer" as Timer
  self.StartPosition = self/"StartPosition" as Marker2D
  self.MobSpawnLocation = self/"MobPath"/"MobSpawnLocation" as PathFollow2D

  discard self.Player.connect("hit", self.callable"game_over")

  discard self.MobTimer.connect("timeout", self.callable"_on_mob_timer_timeout")
  discard self.ScoreTimer.connect("timeout", self.callable"_on_score_timer_timeout")
  discard self.StartTimer.connect("timeout", self.callable"_on_start_timer_timeout")


proc onScoreTimerTimeout(self: Main) {.gdsync, name: "_on_score_timer_timeout".} =
  inc self.score

proc onStartTimerTimeout(self: Main) {.gdsync, name: "_on_start_timer_timeout".} =
  start self.MobTimer
  start self.ScoreTimer

proc onMobTimerTimeout(self: Main) {.gdsync, name: "_on_mob_timer_timeout".} =
  let mob = self.mob_scene[].instantiate as Mob
  self.MobSpawnLocation.progressRatio = randfRange(0, 1)

  var direction = self.MobSpawnLocation.rotation + PI/2

  mob.position = self.MobSpawnLocation.position

  direction += randfRange(-PI/4, PI/4)
  mob.rotation = direction

  var velocity = vector(randfRange(150, 250), 0f)
  mob.linearVelocity = velocity.rotated(direction)

  self.add_child mob
```

```diff
# nim/nimmain/bootstrap.nim
  import gdext
  import classes/gdPlayer
  import classes/gdMob
+ import classes/gdMain


  GDExtensionEntryPoint
```

# 6. Heads up display

There is nothing special to mention about this chapter. We will only show you code examples.

```nim
import gdext

import gdext/classes/gdSceneTree
import gdext/classes/gdLabel
import gdext/classes/gdButton
import gdext/classes/gdTimer
import gdext/classes/gdInput

type Hud* {.gdsync.} = ptr object of CanvasLayer
  ScoreLabel: Label
  Message: Label
  StartButton: Button
  MessageTimer: Timer

proc startGame*(self: Hud): Error {.gdsync, signal, name: "start_game".}

proc showMessage*(self: Hud; text: String) =
  self.Message.text = text
  show self.Message
  start self.MessageTimer

proc updateScore*(self: Hud; score: int) =
  self.ScoreLabel.text = $score

proc showGetReady*(self: Hud) =
  self.showMessage "Get Ready"

proc showGameOver*(self: Hud) =
  self.showMessage "Game Over"

  discard self.MessageTimer.connect("timeout", self.callable"_on_game_over_timer_timeout")
  proc onGameOverTimerTimeout(self: Hud) {.gdsync, name: "_on_game_over_timer_timeout".} =
    self.MessageTimer.disconnect("timeout", self.callable"_on_game_over_timer_timeout")
    self.Message.text = "Dodge the Creeps!"
    show self.Message
    discard self.getTree.createTimer(1)[].connect("timeout", self.callable"_on_start_button_timer_timeout")

  proc onStartButtonTimerTimeout(self: Hud) {.gdsync, name: "_on_start_button_timer_timeout".} =
    show self.StartButton

proc onMessageTimerTimeout(self: Hud) {.gdsync, name: "_on_message_timer_timeout".} =
  hide self.Message

proc onStartButtonPressed(self: Hud) {.gdsync, name: "_on_start_button_pressed".} =
  hide self.StartButton
  discard self.startGame()

method ready*(self: Hud) {.gdsync.} =
  self.ScoreLabel = self/"ScoreLabel" as Label
  self.Message = self/"Message" as Label
  self.StartButton = self/"StartButton" as Button
  self.MessageTimer = self/"MessageTimer" as Timer

  discard self.MessageTimer.connect("timeout", self.callable("_on_message_timer_timeout"))
  discard self.StartButton.connect("pressed", self.callable( "_on_start_button_pressed"))
```

Well... the showGameOver is quite strange compared to the GDScript one.

```GDScript
func show_game_over():
	show_message("Game Over")
	# Wait until the MessageTimer has counted down.
	await $MessageTimer.timeout

	$Message.text = "Dodge the Creeps!"
	$Message.show()
	# Make a one-shot timer and wait for it to finish.
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()
```
```nim
proc showGameOver*(self: Hud) =
  self.showMessage "Game Over"

  discard self.MessageTimer.connect("timeout", self.callable"_on_game_over_timer_timeout")
  proc onGameOverTimerTimeout(self: Hud) {.gdsync, name: "_on_game_over_timer_timeout".} =
    self.MessageTimer.disconnect("timeout", self.callable"_on_game_over_timer_timeout")
    self.Message.text = "Dodge the Creeps!"
    show self.Message
    discard self.getTree.createTimer(1)[].connect("timeout", self.callable"_on_start_button_timer_timeout")

  proc onStartButtonTimerTimeout(self: Hud) {.gdsync, name: "_on_start_button_timer_timeout".} =
    show self.StartButton
```

Since await signal is not yet supported by gdext-nim, we have to force it to be reproduced using connect and disconnect in this way.

Fortunately, {.gdsync.} can be applied to closures (functions within functions), so it can be expressed, albeit with a few lines of boilerplate. It might be interesting to create a template that removes this boilerplate.

```diff
# nim/nimmain/src/classes/gdmain.nim
type Main* {.gdsync.} = ptr object of Node
+ Hud: Hud

method ready(self: Main) {.gdsync.} =
+ self.Hud = self/"Hud" as Hud

proc newGame(self: Main) {.gdsync, name: "new_game".} =
+ self.Hud.updateScore(self.score)
+ self.Hud.showGetReady()

proc onScoreTimerTimeout(self: Main) {.gdsync, name: "_on_score_timer_timeout".} =
  inc self.score
+ self.Hud.updateScore(self.score)
```

```diff
# nim/nimmain/bootstrap.nim
  import gdext
  import classes/gdPlayer
  import classes/gdMob
  import classes/gdMain
+ import classes/gdHud


  GDExtensionEntryPoint
```

This completes the description of what is needed to port Dodge the Creeps to Nim. Have you been [finishing up][3] the project? That sounds good.

Want more comprehensive knowledge? Take a peek at our [guide][4] and [documentation][5]. Visit the [demo][6] and you'll find some content that actually works. My favorite is the chip-8 emulator. Thanks Flan.

This concludes this short tutorial. Thank you for reading this far.


[1]: https://docs.godotengine.org/en/stable/getting_started/first_2d_game/01.project_setup.html
[2]: https://docs.godotengine.org/en/stable/getting_started/first_2d_game/04.creating_the_enemy.html

[3]: https://docs.godotengine.org/en/stable/getting_started/first_2d_game/07.finishing-up.html
[4]: https://github.com/godot-nim/gdext-nim/wiki/Coding-Quick-Guide
[5]: {{site.baseurl}}/gdext.html
[6]: https://github.com/godot-nim/demo

[Your first 2D game]: https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html
[`{.gdsync.}`]: {{site.baseurl}}/gdext/bridge.html#gdsync.m
[`{.gdexport.}`]: {{site.baseurl}}/gdext/bridge.html#gdexport.t
[`{.signal.}`]: {{site.baseurl}}/gdext/bridge.html#signal.t
[`{.name.}`]: {{site.baseurl}}/gdext/bridge.html#name.t%2Cstaticstring
[Development Guide]: {{site.baseurl}}/development-guide
