---
id: 5a24bbe0dba28a8d3cbd4c5f
title: 將 HTML 元素呈現到 DOM
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

到目前為止，你已經了解 JSX 是一個方便的工具，可以在 JavaScript 中撰寫易讀的 HTML。使用 React，我們可以使用稱為 ReactDOM 的 React 呈現 API，將這個 JSX 直接呈現到 HTML DOM。

ReactDOM 提供一個簡單的方法來將 React 元素呈現到 DOM，如下所示：`ReactDOM.render(componentToRender, targetNode)`，其中第一個引數是你想要呈現的 React 元素或組件，第二個引數是你想要將組件呈現到的 DOM 節點。

如你所料，必須在 JSX 元素宣告之後呼叫 `ReactDOM.render()`，就像你必須在使用變數之前先宣告它們一樣。

# --instructions--

程式碼編輯器有一個簡單的 JSX 組件。使用 `ReactDOM.render()` 方法將此組件呈現到頁面上。你可以將定義好的 JSX 元素直接作為第一個引數傳入，並使用 `document.getElementById()` 選取要呈現到的 DOM 節點。有一個帶有 `id='challenge-node'` 的 `div` 可供你使用。請確保你不要更改 `JSX` 常數。

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

所提供的 JSX 元素應該呈現在 id 為 `challenge-node` 的 DOM 節點。

```js
assert(
  document.getElementById('challenge-node').childNodes[0].innerHTML ===
    '<h1>Hello World</h1><p>Lets render this to the DOM</p>'
);
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>Hello World</h1>
    <p>Lets render this to the DOM</p>
  </div>
);
// Add your code below this line
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello World</h1>
  <p>Lets render this to the DOM</p>
</div>
);
// Add your code below this line
ReactDOM.render(JSX, document.getElementById('challenge-node'));
```
