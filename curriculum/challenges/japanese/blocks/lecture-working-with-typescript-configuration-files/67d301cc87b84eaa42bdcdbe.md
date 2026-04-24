---
id: 67d301cc87b84eaa42bdcdbe
title: tsconfigファイルとは何か、そしてTypeScriptプロジェクトに含めることが重要な理由
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

TypeScriptのコンパイラ設定は、プロジェクトのニーズに合わせて構成できます。その設定は、プロジェクトのルートディレクトリにある`tsconfig.json`ファイルに保存されます。実際、このファイルがなければ、コマンドフラグを直接渡さない限りコンパイラは実行されません。しかし、このファイルは具体的に何をするのでしょうか？では、例のファイルを見てみましょう。

```json
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

かなり多くの設定があるように見えますね。では分解して説明します。`compilerOptions`プロパティには設定の「本体」が含まれており、ここでTypeScriptコンパイラの動作を制御します。そのネストされたオブジェクトを見てみると…

`rootDir`と`outDir`は、TypeScriptにどのディレクトリがソースファイルを保持し、どのディレクトリにトランスパイルされたJavaScriptコードを置くかを伝えます。

`lib`プロパティは、コンパイラが使用する型定義を決定し、特定のESリリースやDOMなどのサポートを含めることを可能にします。

`module`と`moduleResolution`は、パッケージがモジュールをどのように使うか（CommonJSかECMAScriptか）を管理するために連携して動作します。

`esModuleInterop`は、CommonJSとESモジュール間の相互運用性をスムーズにし、インポートのために名前空間オブジェクトを自動的に作成することで、異なるシステムのモジュールをTypeScriptプロジェクトで一緒に使いやすくします。また、`skipLibCheck`オプションは、コード内でインポートされていない`.d.ts`ファイルの検証をスキップします。

そして最後に`strict`モードに到達します。このフラグが有効でなければ、TypeScriptは本当に役立つとは言えないかもしれません。なぜなら、nullable型の適切な処理を要求したり、型推論ができずanyにフォールバックした場合に警告を出したりと、いくつかのチェックを切り替えるからです。

最後に、トップレベルの`exclude`プロパティについての簡単な注意点です。ソースディレクトリを定義した場合、そのディレクトリ外にあるTypeScriptコードは、本番コードの一部としてコンパイルしたくないことがあります。例えばテストコードです。`exclude`配列は、これらのTypeScriptファイルをコンパイル時に無視するようコンパイラに指示しますが、Intellisenseのようなツールが潜在的な問題を公開することは可能にします。

他にも50以上のコンパイラオプションがあり、ドキュメントを調べて試しながら、プロジェクトのニーズに合った設定を見つけることをお勧めします。

# --questions--

## --text--

`tsconfig.json`ファイルのどのプロパティがコンパイラの動作に影響しますか？

## --answers--

`rootDir`

### --feedback--

このプロパティはコンパイラのオプションを含むオブジェクトです。

---

`compilerOptions`

---

`exclude`

### --feedback--

このプロパティはコンパイラのオプションを含むオブジェクトです。

---

`lib`

### --feedback--

このプロパティはコンパイラのオプションを含むオブジェクトです。

## --video-solution--

2

## --text--

`strict`ファイルの`tsconfig.json`オプションは何をしますか？

## --answers--

nullable型のみをチェックします。

### --feedback--

このオプションはnullable型の処理を含むさまざまなチェックを有効にします。

---

CommonJSモジュールの使用を強制します。

### --feedback--

このオプションはnullable型の処理を含むさまざまなチェックを有効にします。

---

いくつかの型チェックオプションを切り替えます。

---

テストファイルをコンパイルから除外します。

### --feedback--

このオプションはnullable型の処理を含むさまざまなチェックを有効にします。

## --video-solution--

3

## --text--

`exclude`ファイルの`tsconfig.json`配列の目的は何ですか？

## --answers--

どのファイルをコンパイルするかを指定するため。

### --feedback--

これを使ってテストコードをコンパイルから除外できます。

---

追加で含めるライブラリをリストアップするため。

### --feedback--

これを使ってテストコードをコンパイルから除外できます。

---

コンパイル時に特定のファイルを無視するため。

---

コンパイルされたファイルの出力ディレクトリを定義するため。

### --feedback--

これを使ってテストコードをコンパイルから除外できます。

## --video-solution--

3
