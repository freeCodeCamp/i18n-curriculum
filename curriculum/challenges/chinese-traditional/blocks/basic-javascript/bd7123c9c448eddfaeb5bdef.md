---
id: bd7123c9c448eddfaeb5bdef
title: 尋找字串長度
challengeType: 1
forumTopicId: 18182
dashedName: find-the-length-of-a-string
---

# --description--

你可以透過在字串變數或字串字面值後面寫 `.length` 來取得 `String` 值的長度。

```js
console.log("Alan Peter".length);
```

數值 `10` 會顯示在主控台。請注意，「Alan」和「Peter」之間的空白字元也會被計算在內。

例如，如果我們創建了一個變數 `const firstName = "Ada"`，我們可以使用 `firstName.length` 屬性來找出字串 `Ada` 的長度。

# --instructions--

使用 `.length` 屬性將 `lastNameLength` 設定為 `lastName` 中的字元數。

# --hints--

你不應該更改 `// Setup` 區段中的變數宣告。

```js
assert(
  __helpers.removeJSComments(code).match(/let lastNameLength = 0;/) &&
    __helpers.removeJSComments(code).match(/const lastName = "Lovelace";/)
);
```

`lastNameLength` 應該相等於八。

```js
assert(typeof lastNameLength !== 'undefined' && lastNameLength === 8);
```

你應該使用 `.length` 來取得 `lastName` 的長度，像這樣：`lastName.length`。

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
