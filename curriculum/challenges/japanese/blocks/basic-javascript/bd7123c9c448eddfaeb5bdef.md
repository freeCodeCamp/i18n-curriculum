---
id: bd7123c9c448eddfaeb5bdef
title: 文字列の長さを見つける
challengeType: 1
forumTopicId: 18182
dashedName: find-the-length-of-a-string
---

# --description--

`String` の値の長さは、文字列変数や文字列リテラルの後に `.length` を書くことで見つけられます。

```js
console.log("Alan Peter".length);
```

値 `10` がコンソールに表示されます。"Alan" と "Peter" の間のスペース文字もカウントされることに注意してください。

例えば、変数 `const firstName = "Ada"` を作成した場合、`Ada` プロパティを使って文字列 `firstName.length` の長さを調べることができます。

# --instructions--

`.length` プロパティを使って、`lastNameLength` に `lastName` の文字数を設定してください。

# --hints--

`// Setup` セクションの変数宣言は変更しないでください。

```js
assert(
  __helpers.removeJSComments(code).match(/let lastNameLength = 0;/) &&
    __helpers.removeJSComments(code).match(/const lastName = "Lovelace";/)
);
```

`lastNameLength` は 8 と等しくなるはずです。

```js
assert(typeof lastNameLength !== 'undefined' && lastNameLength === 8);
```

`lastName` の長さは、次のように `.length` を使って取得してください：`lastName.length`。

```js
assert(__helpers.removeJSComments(code).match(/=\s*lastName\.length/g) && !__helpers.removeJSComments(code).match(/lastName\s*=\s*8/));
```

# --seed--

## --seed-contents--

```js
// Setup
let lastNameLength = 0;
const lastName = "Lovelace";

// Only change code below this line
lastNameLength = lastName;
```

# --solutions--

```js
let lastNameLength = 0;
const lastName = "Lovelace";
lastNameLength = lastName.length;
```
