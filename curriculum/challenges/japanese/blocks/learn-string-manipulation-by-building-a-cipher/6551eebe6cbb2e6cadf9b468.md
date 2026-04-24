---
id: 6551eebe6cbb2e6cadf9b468
title: ステップ 2
challengeType: 20
dashedName: step-2
---

# --description--

変数はさまざまなデータ型の値をストアできます。今は整数値を代入しましたが、テキストを表したい場合は文字列を代入する必要があります。文字列はシングルクォートか二重引用符で囲まれた文字のシーケンスですが、シングルクォートで始めて二重引用符で終わる、またはその逆はできません。

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

`number` 変数とその値を削除してください。それから、`text` という名前の別の変数を宣言し、この変数に文字列 `'Hello World'` を代入してください。

# --hints--

コードに `number = 5` があってはいけません。

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

`text` という名前の変数を宣言してください。変数名は行の先頭に置くよう注意してください。

```js
assert.match(code, /^text\s*=/m)
```

`'Hello World'` 変数に文字列 `text` を代入してください。文字列を囲むのにシングルクォートか二重引用符のどちらかを使い、文字の大文字・小文字にも注意してください。

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

コードに無効な構文や無効なインデントがあります。

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
