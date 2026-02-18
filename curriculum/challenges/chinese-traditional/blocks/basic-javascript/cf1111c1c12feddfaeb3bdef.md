---
id: cf1111c1c12feddfaeb3bdef
title: 使用 If 陳述式的條件邏輯
challengeType: 1
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

`if` 述語用於在程式碼中做出決策。關鍵字 `if` 告訴 JavaScript 在小括弧中定義的特定條件下執行大括弧內的程式碼。這些條件稱為 `Boolean` 條件，且它們只能是 `true` 或 `false`。

當條件計算為 `true` 時，程式會執行大括號內的述語。當布林值條件計算為 `false` 時，大括號內的述語將不會執行。

**偽程式碼**

<blockquote>if (<i>condition is true</i>) {<br>  <i>statement is executed</i><br>}</blockquote>

**範例**

```js
function test(myCondition) {
  if (myCondition) {
    return "It was true";
  }
  return "It was false";
}

test(true);
test(false);
```

`test(true)` 傳回字串 `It was true`，而 `test(false)` 傳回字串 `It was false`。

當以值為 `true` 呼叫 `test` 時，`if` 述語會評估 `myCondition` 是否為 `true`。因為它是 `true`，函式傳回 `It was true`。當我們以值為 `false` 呼叫 `test` 時，`myCondition` *不是* `true`，大括號內的述語不會執行，函式傳回 `It was false`。

# --instructions--

在函式（程式）內創建一個 `if` 述語，若參數 `wasThatTrue` 為 `true`，則傳回 `Yes, that was true`，否則傳回 `No, that was false`。

# --hints--

`trueOrFalse` 應該是一個函式（程式）。

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)` 應該傳回一個字串

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)` 應該傳回一個字串

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)` 應該傳回字串 `Yes, that was true`

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)` 應該傳回字串 `No, that was false`

```js
assert(trueOrFalse(false) === 'No, that was false');
```

# --seed--

## --seed-contents--

```js
function trueOrFalse(wasThatTrue) {
  // Only change code below this line



  // Only change code above this line

}
```

# --solutions--

```js
function trueOrFalse(wasThatTrue) {
  if (wasThatTrue) {
    return "Yes, that was true";
  }
  return "No, that was false";
}
```
