---
id: cf1111c1c11feddfaeb9bdef
title: 使用 JavaScript 產生隨機分數
challengeType: 1
forumTopicId: 18185
dashedName: generate-random-fractions-with-javascript
---

# --description--

隨機數對於創造隨機行為非常有用。

JavaScript 有一個 `Math.random()` 函式（程式），它會產生介於 `0`（包含）和 `1`（不包含）之間的隨機小數。因此 `Math.random()` 可以傳回 `0`，但永遠不會傳回 `1`。

**注意：** 如同 <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">使用指定運算子儲存值</a>，所有函式呼叫都會在 `return` 執行前被決議，因此我們可以 `return` `Math.random()` 函式的值。

# --instructions--

將 `randomFraction` 更改為傳回隨機數，而不是傳回 `0`。

# --hints--

`randomFraction` 應該傳回一個隨機數。

```js
assert(typeof randomFraction() === 'number');
```

`randomFraction` 傳回的數字應該是小數。

```js
assert((randomFraction() + '').match(/\./g));
```

你應該使用 `Math.random` 來產生隨機小數。

```js
assert(__helpers.removeJSComments(code).match(/Math\.random/g).length >= 0);
```

# --seed--

## --after-user-code--

```js
(function(){return randomFraction();})();
```

## --seed-contents--

```js
function randomFraction() {

  // Only change code below this line

  return 0;

  // Only change code above this line
}
```

# --solutions--

```js
function randomFraction() {
  return Math.random();
}
```
