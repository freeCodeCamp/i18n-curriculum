---
id: bd7993c9ca9feddfaeb7bdef
title: 用 JavaScript 將一個小數除以另一個小數
challengeType: 1
forumTopicId: 18255
dashedName: divide-one-decimal-by-another-with-javascript
---

# --description--

現在讓我們將一個小數除以另一個小數。

# --instructions--

將 `0.0` 更改為使 `quotient` 相等於 `2.2`。

# --hints--

變數 `quotient` 應該相等於 `2.2`

```js
assert(quotient === 2.2);
```

你應該使用 `/` 運算子將 4.4 除以 2。

```js
assert(/4\.40*\s*\/\s*2\.*0*/.test(__helpers.removeJSComments(code)));
```

商數變數應該只被指定一次。

```js
assert(__helpers.removeJSComments(code).match(/quotient\s*=/g).length === 1);
```

# --seed--

## --seed-contents--

```js
const quotient = 0.0 / 2.0; // Change this line
```

# --solutions--

```js
const quotient = 4.4 / 2.0;
```
