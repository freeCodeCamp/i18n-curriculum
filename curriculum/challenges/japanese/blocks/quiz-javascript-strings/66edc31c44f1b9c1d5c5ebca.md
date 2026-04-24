---
id: 66edc31c44f1b9c1d5c5ebca
title: JavaScriptの文字列クイズ
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

このクイズに合格するには、以下の20問中少なくとも18問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

`includes()` メソッドの戻り値は何ですか？

#### --distractors--

部分文字列が文字列内に見つかった場合、メソッドは文字列を返します。そうでなければ、`undefined` を返します。

---

部分文字列が文字列内に見つかった場合、メソッドは `true` を返します。そうでなければ、空の文字列を返します。

---

部分文字列が文字列内に見つかった場合、メソッドは文字列を返します。そうでなければ、`null` を返します。

#### --answer--

部分文字列が文字列内に見つかった場合、メソッドは `true` を返します。そうでなければ、`false` を返します。

### --question--

#### --text--

どの選択肢が文字列の補間を示していますか？

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

`` `Hello, {user}!` ``

#### --answer--

`` `Hello, ${user}!` ``

### --question--

#### --text--

次のうち改行文字はどれですか？

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

文字列について正しい説明はどれですか？

#### --distractors--

文字列は変更可能で、作成後に変更できます。

---

文字列は非プリミティブなデータ型です。

---

文字列はシングルクォートでしか作成できません。

#### --answer--

文字列は不変です。

### --question--

#### --text--

ASCIIは何の略ですか？

#### --distractors--

American Standard Code for Internet Information

---

Advanced Systematic Code for Internal Interchange

---

Automatic Standard Code for Internal Information

#### --answer--

American Standard Code for Information Interchange

### --question--

#### --text--

次のうち、文字列の一部を抽出して新しい文字列を返すメソッドはどれですか？

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

`prompt()` メソッドの目的は何ですか？

#### --distractors--

コンソールにメッセージを表示します。

---

メッセージ付きのアラートボックスを表示します。

---

メッセージ付きの確認ボックスを表示します。

#### --answer--

ユーザーの入力を待つダイアログボックスを表示します。

### --question--

#### --text--

文字列の3番目の文字にアクセスする正しい方法はどれですか？

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

文字列 `"hello"` の最初の文字のASCII値を取得するにはどうしますか？

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

ASCII値に対応する文字を取得するにはどのメソッドを使いますか？

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

次の `indexOf` の例のうち、`-1` をコンソールにログ出力するのはどれですか？

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

文字列 `"JavaScript"` が `"Script"` を含むかどうかを確認するにはどうしますか？

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

文字列 `"Script"` から部分文字列 `"JavaScript"` を抽出するのはどれですか？

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

文字列 `"JavaScript"` を大文字に変換するにはどうしますか？

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

文字列 `"JavaScript"` を小文字に変換するにはどうしますか？

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

文字列 `"dogs"` の中で `"cats"` を `"I love dogs"` に置き換えるのはどれですか？

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

文字列を指定した回数繰り返すメソッドはどれですか？

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

次のコードは何を返しますか：`"abc".repeat(3)`？

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

エラーをスローします。

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

文字列の先頭と末尾の空白を取り除くメソッドはどれですか？

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

引用符をエスケープする正しい構文はどれですか？

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```
