---
id: 587d8250367417b2b2512c5e
title: 瞭解堆棧的工作原理
challengeType: 1
forumTopicId: 301705
dashedName: learn-how-a-stack-works
---

# --description--

You are probably familiar with stack of books on your table. You have likely used the undo feature of a text editor. You are also probably used to hitting the back button on your phone to go back to the previous view in your app.

你知道他們有什麼共同點嗎？ 它們都以一種方式存儲數據，以便你可以向後追蹤。

這堆書中最上面的一本書是最後放在那裏的。 如果你把那本書從你的書堆的頂部移開，你會暴露出在最後一本書之前放在那裏的書，以此類推。

如果你仔細想想，在上述所有的例子中，你得到的是 <dfn>後進先出</dfn> 類型的服務。 我們將嘗試用我們的代碼來模擬這一點。

該數據存儲方案稱爲<dfn>堆棧</dfn> 。 特別是，我們必須實現將 JavaScript 對象推送到堆棧頂部的 `push()` 方法和刪除當前位於堆棧頂部的JavaScript對象的 `pop()` 方法。

# --instructions--

在這裏，我們有一堆表示爲數組的家庭作業：`"BIO12"` 位於底部，`"PSY44"` 位於堆棧頂部。

修改給定的數組，並使用上面提到的 JavaScript 方法把它當作一個 `stack`。 從堆棧中刪除頂部元素 `"PSY44"`。 然後添加 `"CS50"` 作爲堆棧頂部的新元素。

# --hints--

`homeworkStack` 應該只包含4個元素。

```js
assert(homeworkStack.length === 4);
```

`homeworkStack` 的最後一個元素應該是 `"CS50"`。

```js
assert(homeworkStack[3] === 'CS50');
```

`homeworkStack` 不應包含 `"PSY44"`。

```js
assert(homeworkStack.indexOf('PSY44') === -1);
```

`homeworkStack` 的初始聲明不應更改。

```js
assert(
  __helpers.removeJSComments(code).match(/=/g).length === 1 &&
    /homeworkStack\s*=\s*\["BIO12"\s*,\s*"HIS80"\s*,\s*"MAT122"\s*,\s*"PSY44"\]/.test(
      __helpers.removeJSComments(code)
    )
);
```

# --seed--

## --seed-contents--

```js
var homeworkStack = ["BIO12","HIS80","MAT122","PSY44"];
// Only change code below this line
```

# --solutions--

```js
// solution required
```
