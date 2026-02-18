---
id: 5a24bbe0dba28a8d3cbd4c5e
title: 在 JSX 中添加註解
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX 是一種會被編譯成有效 JavaScript 的語法。有時候，為了可讀性，你可能需要為你的程式碼添加註解。像大多數程式設計語言一樣，JSX 有自己的方式來做到這一點。

要在 JSX 中放置註解，你使用語法 `{/* */}` 將註解文字包起來。

# --instructions--

程式碼編輯器中有一個類似你在上一個挑戰中創建的 JSX 元素。在提供的 `div` 元素內的某處添加註解，但不要修改現有的 `h1` 或 `p` 元素。

# --hints--

常數 `JSX` 應該傳回一個 `div` 元素。

```js
assert(JSX.type === 'div');
```

`div` 應該包含一個作為第一個元素的 `h1` 頁籤。

```js
assert(JSX.props.children[0].type === 'h1');
```

`div` 應該包含一個作為第二個元素的 `p` 頁籤。

```js
assert(JSX.props.children[1].type === 'p');
```

現有的 `h1` 和 `p` 元素不應被修改。

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

`JSX` 應該使用有效的註解語法。

```js
assert(/<div>[\s\S]*{\s*\/\*[\s\S]*\*\/\s*}[\s\S]*<\/div>/.test(code));
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(JSX, document.getElementById('root'))
```

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>This is a block of JSX</h1>
    <p>Here's a subtitle</p>
  </div>
);
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>This is a block of JSX</h1>
  { /* this is a JSX comment */ }
  <p>Here's a subtitle</p>
</div>);
```
