---
layout: default
title: Development Guide
author: la.panon.
---

* TOC
{:toc}

# 1. はじめに

## gdext-nim とは

**gdext-nim** は [Godot Engine](https://godotengine.org/) の拡張機構 **GDExtension** を[Nim](https://nim-lang.org/) から利用できるようにするプロジェクトです。  
これにより、GodotのAPIをNimから呼び出し、Nimの表現力を活かして拡張機能やゲームロジックを開発できるようになります。

## 対象読者

- Nim と Godot の基本的な文法・ワークフローを理解している方  
  （例：Nimの型やモジュール、Godotのシーンシステムやスクリプトの使い方）

どちらかに不慣れな場合は、以下の公式ドキュメントを先に参照することを推奨します：

- [Nim Documentation](https://nim-lang.org/documentation.html)  
- [Godot Docs](https://docs.godotengine.org/)  

## このガイドの目的

このガイドでは、gdext-nim を始めるにあたって必要な情報を一通り解説します。  
基本概念、開発環境の整え方、gdext-nim を用いた開発サイクルを順に示し、  
読了後には「gdext-nim を使って自分で小さな拡張やサンプルを作れる」状態になることを目標としています。  

以降は、あなたの関心に応じて「デモプロジェクト」「チュートリアル」「クイックリファレンス」「APIリファレンス」などの資料を読み進めてください。

## 用語の整理

- **ディレクトリ**

  windowsにおけるフォルダです。この文書ではディレクトリ表記に統一します。

- **動的ライブラリ**

  **.so** や **.dll** などのプログラム実行時に読み込まれるファイルです。
  GDExtensionはgdext-nimによってビルドされた動的ライブラリがGodotに読み込まれることで動作しています。

# 2. 開発環境の準備

## 必要なツール

### 必須:

- **Godot**: >= 4.4.0
- **Nim**: >= 2.0.12
- **gdext-nim**
- **C コンパイラ**
  - Unix系: gcc または clang
  - Windows: MinGW

### オプション:

- **emscripten**: Webブラウザでの実行を想定する場合
- **MinGW (クロスコンパイル用)**: Linux/macOS から Windows 向けバイナリを生成したい場合
- **Git (Git Bash)**: このガイドではBashを前提にコマンドを紹介します。WindowsユーザーでcmdやPowerShellに慣れていない場合はGit Bashのインストールを推奨

## インストール手順

### Godot のインストール
- [公式ダウンロードページ](https://godotengine.org/download) から安定版を取得してください。
- Windows/Mac/Linux 各プラットフォーム用のバイナリがあります。
- Steam / itch.io 経由でのインストールも可能です。

### Nim のインストール
最も簡単なのは **choosenim** を使う方法です。

```bash
curl https://nim-lang.org/choosenim/init.sh -sSf | sh
choosenim stable
```

Windows の場合は [公式インストーラ](https://nim-lang.org/install_windows.html)
 を利用すると、MinGW を同梱した環境を構築できます。
（Nim は C コンパイラに依存しており、Windows では MinGW が前提となります。）

インストール後、以下でバージョン確認してください。

```bash
nim --version
# Nim Compiler Version 2.2.4 [Linux: amd64]
```

### gdext-nim の導入

**nimble** を使ってインストールできます。

```bash
nimble install gdext
```

インストール後は [gdextwiz] コマンドが利用可能になります。gdextwizが使えることを確認してください。

```bash
gdextwiz --help
```

# 3. プロジェクトの作成フロー

## Godotプロジェクトの作成

エディタから新しいプロジェクトを作成するか、任意のディレクトリに空の**project.godot**ファイルを作成します。(`touch project.godot`)

gdext-nimは開発が進んだプロジェクトに後から導入することも可能です。すでにプロジェクトが存在している場合はこのセクションを読み飛ばしてください。

## gdext-nimエクステンションの作成

**project.godot**ファイルがあるディレクトリに移動してください。  
gdext-nim には補助ツール gdextwiz が付属しており、エクステンションの雛形生成やビルドを自動化できます。  

`gdextwiz new-extension [name]`を実行し、新しいエクステンションを作成しましょう。

```bash
gdextwiz new-extension AwesomeExtension
```


## ディレクトリ構成（例）

ここまでで、次のようなディレクトリ構成になっているはずです。

```
.
├── project.godot
├── nim
│   └── AwesomeExtension
│       ├── bootstrap.nim
│       ├── config.nims
│       └── src
│           └── classes
│               └── gdmyclass.nim
```

**bootstrap.nim**: gdext-nimエクステンションのエントリーポイントとなるファイルです。このファイルからクラス定義ファイル（例えばgdmyclass.nim）等をインポートするとそれらがGodotに認識されます。

**config.nims**: ビルド設定を記述します。

godot-cpp などを使ったことがある方は「.gdextension ファイルがない」ことに違和感を覚えるかもしれませんが、gdext-nim では自動生成されるため問題ありません。手動で管理したい場合は[Building & Exporting Guide]に従ってconfig.nimsを編集してください。

## サンプル実行

`gdextwiz build`を実行して、最初のエクステンションをビルドしてみましょう。

```bash
gdextwiz build
```

"nim/lib/"配下に動的ライブラリが作成されているはずです。


```diff
  .
  ├── project.godot
  ├── nim
+ │   ├── lib
+ │   │   └── libAwesomeExtension.linux.debug.x86_64.so
  │   └── AwesomeExtension
  │       ├── bootstrap.nim
  │       ├── config.nims
  │       └── src
  │           └── classes
  │               └── gdmyclass.nim
```

続いて`gdextwiz editor`または`godot --editor`を実行してエディタを立ち上げます。

```bash
gdextwiz editor &
```

MyClassノードを追加できれば成功です。これで Nim で作った拡張が Godot に正しく認識されています。

シーンに MyClass を追加している例:
![add a extension node into scene](https://github.com/user-attachments/assets/91a468dd-8d37-4b1c-8022-9196b6123335)

# 4. 開発の基本サイクル

基本的には

1. コードを書く
2. ビルドする
3. Godotで確認する

の３つのプロセスを回していくことになります。

## コードを書く

ここでは試しに、"Hello, world!"を出力する**MyFirstNode**を作成してみましょう。
"src/classes/"に"gdmyfirstnode.nim"ファイルを作成し、内容を次のようにします。

```nim
# src/classes/gdmyfirstnode.nim
import gdext
import gdext/classes/[gdNode]

type MyFirstNode* {.gdsync.} = ptr object of Node

method ready*(self: MyFirstNode) {.gdsync.} =
  print "hello, world!"
```

- `import gdext`

  gdext-nimのAPIはgdextモジュールをインポートすることで使用可能になります。

- `import gdext/classes/[gdNode]`

  GodotのクラスAPIは膨大です。それらを全てgdextモジュールに含めてしまうとコンパイル時間が増大してしまうため、クラスAPIのみクラスごとに個別にインポートする仕様になっています。親クラスのAPIも一緒にインポートされるため、gdObjectとgdNodeを併せてインポートする必要はありません。

- `type MyFirstNode* {.gdsync.} = ptr object of Node`

  Godotのクラスを継承した新しいクラスを定義しGodotに公開しています。**{.gdsync.}**をつけることと、**ptr object**であることは忘れやすいので注意してください。

- `method ready*(self: MyFirstNode) {.gdsync.} =`

  Nodeクラスの仮想関数である**_ready()**をオーバーライドしています。Nimではleading underscoreはシンボル名に使えないため除かれています。
  funcやprocではなく**method**であること、**{.gdsync.}**をつけること、所属するクラスを第一引数に取ることが必要になります。

bootstrap.nimに**gdmyfirstnode.nim**をインポートしてGodotに認識させましょう。

```diff
  # bootstrap.nim
  import gdext
  import classes/gdMyClass
+ import classes/gdMyFirstNode

  GDExtensionEntryPoint
```

- `GDExtensionEntryPoint`

  文字通りgdext-nimエクステンションのエントリーポイントになります。GodotAPIの取得やGDExtensionの型や関数等の登録がここから行われます。

## ビルドする

`gdextwiz build`を実行しエクステンションをビルドしましょう。

```bash
gdextwiz build
```

gdext-nimはホットリロードに対応しているので、ビルドして動的ライブラリを更新した後はエディタにフォーカスするだけで新しい動的ライブラリがロードされます。  
ただし、エクステンションにおかしな動作がみられた場合にはエディタの再起動も必要になります。

## Godotで確認する

シーンに**MyFirstNode**を追加し、**F5**で実行してみましょう。コンソールに"Hello, world!"と表示されます。

# 5. Godot × Nimの橋渡し

## GDScriptとの使い分け

Godot では GDScript と Nim (gdext-nim) を併用できます。
それぞれの得意分野に応じて使い分けると効率的です。

### GDScript に向いている処理

- シーンツリーやノードの組み立て・イベント接続など「ゲームロジックを素早く書きたい」部分
- エディタ上で直接調整したいスクリプト（例: UI の動き、シーン遷移）
- 小規模・試行的なコード（短く書けるのでプロトタイピングに向く）

### Nim (gdext-nim) に向いている処理

- 数値計算やシミュレーションなど パフォーマンスが重要な部分
- ネットワーク処理・外部ライブラリとの連携
- 型安全性や IDE 補完を活かして大規模に設計したいシステム
- 再利用したい「ゲーム固有でない」ロジック（エンジン拡張的なコード）

> 実際のプロジェクトでは「ゲーム部分は GDScript」「重い処理は Nim」と分担するのが現実的です。
> すべてを Nim で書くことも可能ですが、シーン設計やツール連携は GDScript の方が柔軟です。

## gdext-nimの利点

- 型安全

  Nim の型システムにより、引数や戻り値の不一致をコンパイル時に検出できます。
  GDScript ではランタイムエラーになりがちな部分を早期に防げます。

- パフォーマンス

  Nim は C にコンパイルされるため、GDScript より高速に動作します。
  大量のオブジェクト制御・物理計算・AI ロジックなどに向いています。

- IDE支援

  Nim のエコシステム（LSP, Nimble, NimblePackage）により、補完・型推論・リファクタリングが可能です。
  大規模プロジェクトや長期開発に強みを発揮します。

- シンプルな相互運用

  Nim の importc を用いれば、C/C++ のライブラリを直接利用できます。
  Godot をゲームエンジンとして使いつつ、外部コード資産を統合しやすいのも大きな特徴です。

## API参照方法

gdext-nim の API は Godot 本体の API に準拠しています。
クラス名やメソッド名は基本的に同じですが、Nim の命名規則（camelCase / PascalCase）に従って定義されています。

- [Godot 公式 API ドキュメント](https://docs.godotengine.org/en/stable/classes/index.html)
- [Full API Reference]

実装の際はまず Godot 公式 API を参照し、うまくいかない場合に対応するクラスやメソッドを gdext-nim API Reference で確認する流れが便利です。

# 6. 小さな実践例

ここでは単純に、Godotアイコンを矢印キーで動かしてみましょう。

"src/classes/"に"gdcharacter.nim"を作成します。

```nim
# src/classes/gdcharacter.nim

import gdext
import gdext/classes/[gdSprite2D, gdInput]

type Character* {.gdsync.} = ptr object of Sprite2D
  speed: float = 400
  angular_speed: float = PI


method process(self: Character; delta: float64) {.gdsync.} =
  var direction = 0
  if Input.is_action_pressed("ui_left"):
    direction = -1
  if Input.is_action_pressed("ui_right"):
    direction = 1

  self.rotation = self.rotation + self.angular_speed * direction * delta

  var velocity: Vector2
  if Input.is_action_pressed("ui_up"):
    velocity = Vector2.Up.rotated(self.rotation) * self.speed

  self.position = self.position + velocity * delta
```

ビルドし、作成したCharacterノードをシーンに配置します。  
Sprite2Dのtextureに"res://icon.png"を設定し、実行しましょう。

![プレイヤーの入力によって動き回るGodotアイコンのgif](https://docs.godotengine.org/en/stable/_images/scripting_first_script_moving_with_input.gif)


# 7. 次に読むべきリソース

- [Tutorial]

  Godot公式チュートリアル「Dodge the Creeps!」をgdext-nimで再実装します。
  開発プロセスを実践的に身につけたい方へ

- [Quick Reference]

  開発中の参照に便利な構文辞書。セマンティクスやGDScriptシンタックスからgdext-nimのシンタックスを引けます。すでにGDScriptに慣れている方はこちら

- [Building & Exporting Guide]

  gdext-nimのビルドシステムやプロジェクトを配布可能にする手順について詳しく書いたもの

- [Full API Reference]

  詳細な型や関数のドキュメント。bridgeモジュールのページが特に有益です。

{% include ja_links.md %}
