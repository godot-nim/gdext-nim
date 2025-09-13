---
layout: default
title: Building & Exporting Guide
author: la.panon.
---

* TOC
{:toc}

このガイドでは、**config.nims** を編集してビルド設定を管理し、[gdextwiz] と連携してエクスポートする方法を説明します。  
読了後には次が可能になります：

- gdext-nim を用いたエクステンションを各種プラットフォーム向けにエクスポートする  
- プロジェクトに最適化したビルド設定を編集・拡張する  
- 新しいターゲットプラットフォームを定義する  

[gdextwiz] の詳細は [gdextwiz User's manual] または `gdextwiz --help` を参照してください。  
**config.nims** で利用する [buildconf.nim] の API リファレンスも用意しています。


# 単純なビルド

最小構成の **config.nims** は以下の通りです。

```nim
# config.nims
import gdext/buildconf

--path: src

let setting = BuildSettings(
  name: "MyExtension",
)

configure(setting)
```

- `import gdext/buildconf`

  [buildconf.nim]はgdext-nimのビルド設定を簡便にするために作成されたモジュールになります。

- `--path: src`

  この一文により、bootstrap.nimから`import src/classes/gdmyclass`ではなく`import classes/gdmyclass`と書けるようになっています。

- `let setting = BuildSettings(`

  BuildSettingsはgdext-nimのビルド設定ステートを表すオブジェクトです。以降私達はこのオブジェクトを通じてgdext-nimにビルドオプションを渡したり、gdext-nimによって自動設定されたビルドオプションを取得したりします。

- `name: "MyExtension"`

  このエクステンションの名前を指定しています。グローバル関数のエクスポート先クラスとして使用されます。（[Exporting global functions](advanced-topics.html#exporting-global-functions))

- `configure(setting)`

  settingを参照してビルドオプションの自動設定を行い、その内容をsettingに書き込みます。
  自動設定されたオプションを参照したい場合は`configure(setting)`よりも後の行に記述してください。

`gdextwiz build`または`gdextwiz build-all`によってビルドが可能です。プロジェクトのパスを指定（デフォルトはカレントディレクトリ）して実行することもできます。

```bash
gdextwiz build
```

これはほぼ `nim c bootstrap.nim` と同等ですが、bootstrap.nim を自動検出します。
生成物は "nim/lib/" 以下に出力されます。例として Linux x64環境でMyExtensionをビルドした場合、**libMyExtension.linux.debug.x86_64.so** が作成されます。

`gdextwiz run`や`gdextwiz run-editor`によってビルドと実行（またはエディタ起動）を同時に行えます。

# プロジェクトのエクスポート

Godot のエクスポートについて理解の曖昧な場合は、先に[Godot Docs - Exporting projects](https://docs.godotengine.org/en/stable/tutorials/export/exporting_projects.html#exporting-projects)を一読しエクスポートテンプレートをセットアップしてください。

開発中は Nim が埋め込むデバッグ情報が役立ちますが、リリース時は無効化して高速化するのが一般的です。リリース用ビルドは以下で行います。

```bash
gdextwiz build -d:target=release
```

これにより、Linux x64環境でMyExtensionエクステンションをビルドした場合、**libMyExtension.linux.release.x86_64.so**というバイナリが作成されます。

この.release動的ライブラリは、[Export With Debug]チェックを外した状態でプロジェクトをエクスポートした際に使用されます。

# クロスプラットフォーム・ビルド

`-d:platform=XXX`や`-d:arch=XXX`、`-d:target=XXX`といったコンパイラ引数を渡すことによってクロスプラットフォーム・ビルドが可能です。Nimは`--os`や`--cpu`といったフラグをすでに備えていますが、これらの使用は避けてください。これらのフラグはgdext-nimが内部的に自動設定しています。

## Webビルド

**Godot Docs:** [Exporting for the Web](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_web.html)

**Note:**  
Webプラットフォームのビルドには[emscripten]が必要になります。

はじめに、emscriptenを公式の[ダウンロードガイド](https://emscripten.org/docs/getting_started/downloads.htm)に従ってダウンロードしてください。

**Project** > **Export...**と進みエクスポートウィンドウを開き、**Add ...**からWebプリセットを追加してください。

その際、**Variant**セクションの**Extensions Support**と**Thread Support**にチェックを入れます。

![Extensions SupportとThread Supportがチェックされている様子](https://github.com/user-attachments/assets/249d0807-cb48-4793-bb8b-1a1c9cf357d1)


Web向けにエクステンションをビルドするには以下のようにします。

```bash
gdextwiz build -d:platform=web
```

リリースビルドを行いたい場合は以下のとおりです。

```bash
gdextwiz build -d:platform=web -d:target=release
```

リリースビルド使用したい場合は[Export With Debug]のチェックを外すことを忘れないで下さい。

プロジェクトをエクスポートしエディタからローカルサーバーを立ち上げると、ブラウザが起動しゲームがロードされます。

![プロジェクトのエクスポートからブラウザでのゲームプレイまでの様子](https://github.com/user-attachments/assets/da8d8ef0-ca97-41fd-b852-38b14a920e97)


## Androidビルド

**Godot Docs:** [Exporting for Android](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_android.html)

上記の公式マニュアルに従って必要なツールをインストールしセットアップを済ませてください。

また、**ANDROID_NDK_ROOT**または**ANDROID_SDK_ROOT**環境変数を設定してください。

**ANDROID_NDK_ROOT**: ndkのツールチェインが含まれるディレクトリ（例: ~/Android/Sdk/ndk/23.2.8568313）

**ANDROID_SDK_ROOT**: ndkディレクトリが含まれるディレクトリ（例: ~/Android/Sdk）

gdext-nimでは、ndk 23.2.8568313をインストールし、`~/Android/Sdk/ndk/23.2.8568313`をANDROID_NDK_ROOT環境変数に設定することを推奨しています。


Android向けにエクステンションをビルドするには以下のようにします。

```bash
gdextwiz build -d:platform=android
```

基本的にはarm64 CPU向けにビルドされますが、x86_64アーキテクチャ向けにビルドしたい場合は次のとおりです。

```bash
gdextwiz build -d:platform=android -d:arch=x86_64
```

APIレベルはデフォルトでは21に設定されていますが、オプションで変更可能です。

```bash
gdextwiz build -d:platform=android -d:android_api_level=22
```

ビルドに成功したら、エディタのエクスポートウィンドウからAndroid向けにエクスポートし、adb等を使ってパッケージをAndroidにインストールしてください。

# ビルド設定を修正する

`configure()`の後に手動でコンパイルオプションを設定することによって、ビルド設定の修正が可能です。例えばWebプラットフォームのビルド設定を変更するには次のようにします。

```nim
# config.nims
import gdext/buildconf

--path: src

let setting = BuildSettings(
  name: "MyExtension",
)

configure(setting)

case setting.platform
of web:
    --cpu: wasm32
    --cc: clang

    when buildOS == "windows":
      --clang.exe: emcc.bat
      --clang.linkerexe: emcc.bat
    else:
      --clang.exe: emcc
      --clang.linkerexe: emcc

    --passC: "-s SIDE_MODULE=1 -s SUPPORT_LONGJMP='wasm'"
    --passL: "-s SIDE_MODULE=1 -s SUPPORT_LONGJMP='wasm' -s WASM_BIGINT"
```

# .gdextensionファイルの自動生成

GDExtensionはロードのために.gdextensionファイルをプロジェクト内に必要とします。gdext-nimでは.gdextensionファイルは自動生成されるため意識する必要はありませんが、柔軟に生成物をカスタマイズする方法はあります。

BuildSettingsには.gdextensionの生成に関わるオプションが２つあります。**extpath**と**updateMethod**です。

- **extpath**:

  参照する .gdextensionのパスを変更できます。

- **updateMethod**:

  .gdextensionの更新ポリシーを**create**、**overwrite**、**inject**の３つから選択できます。
  
  - **create**: デフォルトのupdateMethodで、既存の.gdextensionを無視し新たに作成します。
  - **overwrite**: 既存の.gdextensionを参照し、キーの重複があった場合に新しい値で上書きします。gdext-nim管理外のキーはそのまま引き継がれることを意味します。
  - **inject**: 既存の.gdextensionを参照し、不足しているデータがある場合に穴埋めします。.gdextensionを手動で管理したい場合は**inject**を指定するとよいです。

```nim
let setting = BuildSettings(
  name: "MyExtension",
  extpath: projectDir() & "/myextension.gdextension",
  updateMethod: inject,
)
```

`configure()`ブロックで直接 .gdextension の内容を指定することも可能です。

```nim
# config.nims
import gdext/buildconf
import std/[strformat, strutils]

--path: src

let setting = BuildSettings(
  name: "MyExtension",
)

let bin = setting.name.toLowerAscii

configure(setting):
  [libraries]
  linux.debug = &"res://nim/lib/lib{bin}.so"
  if true:
    linux.release = &"res://nim/lib/lib{bin}.release.so"
  else:
    linux.release = &"res://nim/lib/release/lib{bin}.so"

  [icons]
  MyNode = "res://icon.png"
```

この場合、gdext-nimによる自動生成よりも優先して、手動で渡された値が.gdextensionに書き込まれます。この機能により.gdextensionの内容を動的にプログラムすることができるようになります。

ビルドしたときに出力されるバイナリの名前及びパスは、librariesセクションへのパターンマッチによって決定しています。つまりlibrariesセクションからファイルパスを変更すれば、ビルド成果の出力先も自動的に変更されます。

[emscripten]: https://emscripten.org

{% include ja_links.md %}