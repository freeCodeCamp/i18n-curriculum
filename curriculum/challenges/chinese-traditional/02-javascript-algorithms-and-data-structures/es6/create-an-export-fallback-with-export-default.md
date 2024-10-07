---
id: 587d7b8c367417b2b2512b58
title: 用 export default 創建一個默認導出
challengeType: 1
forumTopicId: 301199
dashedName: create-an-export-fallback-with-export-default
---

# --description--

In the `export` lesson, you learned about the syntax referred to as a <dfn>named export</dfn>. This allowed you to make multiple functions and variables available for use in other files.

還需要了解另外一種被稱爲<dfn>默認導出</dfn>的 `export` 的語法。 在文件中只有一個值需要導出的時候，通常會使用這種語法。 它也常常用於給文件或者模塊創建返回值。

下面是使用 `export default` 的例子：

```js
export default function add(x, y) {
  return x + y;
}

export default function(x, y) {
  return x + y;
}
```

第一個是命名函數，第二個是匿名函數。

`export default` 用於爲模塊或文件聲明一個返回值，在每個文件或者模塊中應當只默認導出一個值。 此外，你不能將 `export default` 與 `var`、`let` 或 `const` 同時使用。

# --instructions--

下面的函數應該在這個模塊中返回一個值。 請添加需要的代碼。

# --hints--

正確地使用 `export` 返回值。

```js
assert(
  __helpers.removeJSComments(code).match(
    /export\s+default\s+function(\s+subtract\s*|\s*)\(\s*x,\s*y\s*\)\s*{/g
  )
);
```

# --seed--

## --seed-contents--

```js
function subtract(x, y) {
  return x - y;
}
```

# --solutions--

```js
export default function subtract(x, y) {
  return x - y;
}
```
