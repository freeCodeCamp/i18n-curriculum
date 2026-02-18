---
id: 66edc31c44f1b9c1d5c5ebca
title: JavaScript 字串小測驗
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

要通過測驗，你必須在以下 20 題中正確回答至少 18 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

`includes()` 方法的返回值是什麼？

#### --distractors--

如果在字串中找到子字串，該方法會傳回字串。否則，它會傳回 `undefined`。

---

如果在字串中找到子字串，該方法會傳回 `true`。否則，會傳回空字串。

---

如果在字串中找到子字串，該方法會傳回該字串。否則，會傳回 `null`。

#### --answer--

如果在字串中找到子字串，該方法會傳回 `true`。否則，會傳回 `false`。

### --question--

#### --text--

哪個選項示範了字串插值？

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

``Hello, {user}!``

#### --answer--

``Hello, ${user}!``

### --question--

#### --text--

以下哪個選項是換行字元？

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

以下哪一個述語關於字串是正確的？

#### --distractors--

字串是可變的，並且在創建後可以被更改。

---

字串是非原始資料型別。

---

字串只能使用單引號創建。

#### --answer--

字串是不可變的。

### --question--

#### --text--

ASCII 是什麼縮寫？

#### --distractors--

美國標準網際網路資訊交換碼

---

進階系統化程式碼用於內部交換

---

內部資訊自動標準程式碼

#### --answer--

美國資訊交換標準碼

### --question--

#### --text--

以下哪一個方法會擷取字串的一部分並傳回新的字串？

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

`prompt()` 方法的目的為何？

#### --distractors--

它會在主控台顯示一則訊息。

---

它會顯示一個帶有訊息的警示框。

---

它會顯示一個帶有訊息的確認框。

#### --answer--

它會顯示一個等待使用者輸入的對話盒。

### --question--

#### --text--

以下哪一種方式是正確的用來存取字串的第三個字元？

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

你如何取得字串 `"hello"` 中第一個字元的 ASCII 值？

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

你可以使用哪種方法來取得對應於 ASCII 值的字元？

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

以下哪個 `indexOf` 範例會在主控台記錄 `-1`？

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

你如何檢查字串 `"JavaScript"` 是否包含 `"Script"`？

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

以下哪一項從字串 `"JavaScript"` 中擷取出子字串 `"Script"`？

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

你如何將字串 `"JavaScript"` 轉換成大寫？

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

你如何將字串 `"JavaScript"` 轉換為小寫？

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

以下哪一項會在字串 `"I love dogs"` 中將 `"dogs"` 取代為 `"cats"`。

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

哪一個方法用於重複字串指定的次數？

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

以下程式碼會傳回什麼：`"abc".repeat(3)`？

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

它會發出錯誤。

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

哪一個方法會移除字串開頭和結尾的空白？

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

以下哪一項是正確的跳脫引號 `syntax`？

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

