---
id: 695cc8f280fef0cc3bed02ca
title: Path モジュールとは何か、そしてどのように動作するのか？
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

Node.js の `path` モジュールは、ファイルやディレクトリのパスを扱うためのものです。異なるプラットフォームやオペレーティングシステム間でディレクトリを結合、正規化、解決するなど、ディレクトリを操作・変換するための便利なメソッドをいくつか提供しています。

`path` モジュールを使うには、次のようにインポートしてください。

```js
const path = require("path");
```

`path` モジュールが提供するいくつかのメソッドとその動作を見てみましょう。

まず、Node.js のグローバル変数 `__filename` と `__dirname`、別名「common JS」変数について知っておく必要があります。これらは `path` モジュールを使わなくてもアクセスできるため、グローバル変数と呼ばれています。

`__filename` は現在のファイルの絶対パスで、`__dirname` は現在のファイルを含むディレクトリの絶対パスです。

例えば、現在作業中の `script.js` ファイルがあります。これら2つのメソッドが返す値は次の通りです。

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

相対パスと絶対パスについても知っておくべきです。

相対パスは、現在の作業ディレクトリを基準にファイルやフォルダーを指します。例えば、`./assets/src/text-files` です。

一方、絶対パスはシステムのルートからファイルやフォルダーの完全なアドレスを示します。例えば、`/Users/johndoe/projects/app/assets/src/text-files.` です。

`basename()` メソッドはファイルの最後の部分、つまりファイル名を表示します。

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` はパスのディレクトリ名を返します。

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` は現在のファイルの拡張子を返します。

```js
console.log(path.extname(__filename)); // .js
```

別のファイルの拡張子を返すこともできます。

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

`join()` メソッドは渡されたすべてのパスセグメントを結合し、きれいで正規化されたパスにします。

これは、異なるフォルダーにある関連ファイルをマージして一緒に扱いたい場合に便利です。

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows はディレクトリの区切りにバックスラッシュを使うため、結果は `src\assets\text-files` になります。

さらに、`join()` メソッドは間違ったスラッシュを自動で修正し、余分なスラッシュを取り除きます。

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

`resolve()` メソッドはパスセグメントのシーケンスを絶対パスに変換します。現在の作業ディレクトリから始まり、デバイス上の正確な場所を指す完全なパスを返します。

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

`join()` と `resolve()` の違いは、`join()` が相対パスを作成し、`resolve()` が絶対パスを返すことです。

最後に、`parse()` と `format()` メソッドがあります。

`parse()` はディレクトリやファイルを受け取り、その構成要素（システムのルート、ディレクトリ、拡張子、ファイル名など）を含むオブジェクトを返します。

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

一方、`format()` はディレクトリ、名前、拡張子を含むオブジェクトからパスを構築します。

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

Node.js における `path.dirname()` と `path.extname()` の違いは何ですか？

## --answers--

`dirname()` はファイルの拡張子を取り除き、`extname()` はディレクトリ名を取り除きます。

### --feedback--

どちらがディレクトリを扱い、どちらがファイルの拡張子を扱うかに注目してください。

---

`dirname()` はファイルの完全なパスを返し、`extname()` はディレクトリ名を返します。

### --feedback--

どちらがディレクトリを扱い、どちらがファイルの拡張子を扱うかに注目してください。

---

`dirname()` はパスのディレクトリ名を返し、`extname()` はファイルの拡張子を返します。

---

`dirname()` と `extname()` はどちらも同じ値を返しますが、異なる形式です。

### --feedback--

どちらがディレクトリを扱い、どちらがファイルの拡張子を扱うかに注目してください。

## --video-solution--

3

## --text--

ディレクトリ、名前、拡張子のプロパティを含むオブジェクトから完全なファイルパスを構築する `path` メソッドはどれですか？

## --answers--

`path.parse()`

### --feedback--

`parse()` の逆の動作を考えてみてください。

---

`path.format()`

---

`path.resolve()`

### --feedback--

`parse()` の逆の動作を考えてみてください。

---

`path.join()`

### --feedback--

`parse()` の逆の動作を考えてみてください。

## --video-solution--

2

## --text--

Node.js のグローバル変数 `__filename` と `__dirname` は何にアクセスできますか？

## --answers--

現在のファイルの絶対パスとそれを含むディレクトリの絶対パスです。

---

現在のモジュール名とその依存関係です。

### --feedback--

path モジュールを使わずにファイルやフォルダーの完全なパスを自動で取得できる変数はどれか考えてみてください。

---

Node.js インストールディレクトリへの相対パスです。

### --feedback--

path モジュールを使わずにファイルやフォルダーの完全なパスを自動で取得できる変数はどれか考えてみてください。

---

実行中のウェブサーバーの URL とホスト名です。

### --feedback--

path モジュールを使わずにファイルやフォルダーの完全なパスを自動で取得できる変数はどれか考えてみてください。

## --video-solution--

1
