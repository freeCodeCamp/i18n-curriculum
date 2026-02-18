---
id: 5a24bbe0dba28a8d3cbd4c5d
title: 創建複雜的 JSX 元素
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

最後一個挑戰是一個簡單的 `JSX` 範例，但 `JSX` 也可以表述更複雜的 `HTML`。

關於巢狀 JSX，有一件重要的事要知道，那就是它必須傳回單一元素。

這個單一父元素會包裹所有其他巢狀元素的層次。

例如，若多個 JSX 元素作為兄弟元素且沒有父層外覆元素，將無法轉譯。

這裡有一個範例：

**有效的 JSX：**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**無效的 JSX：**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

定義一個新的常數 `JSX`，該常數呈現一個包含以下元素且依序排列的 `div`：

一個 `h1`、一個 `p`，以及一個包含三個 `li` 項目的無序列表。你可以在每個元素中包含任何你想要的文字。

**注意：** 當像這樣呈現多個元素時，你可以將它們全部包在小括弧內，但這並非絕對必要。還要注意這個挑戰使用 `div` 頁籤將所有子元素包在單一父組件內。如果你移除 `div`，JSX 將無法再轉譯。請記住這點，因為當你在 React 組件中傳回 JSX 元素時，也會適用。

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

`div` 應該包含作為第三個元素的 `ul` 頁籤。

```js
assert(JSX.props.children[2].type === 'ul');
```

`ul` 應該包含三個 `li` 元素。

```js
assert(
  JSX.props.children
    .filter((ele) => ele.type === 'ul')[0]
    .props.children.filter((ele) => ele.type === 'li').length === 3
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(JSX, document.getElementById('root'))
```

## --seed-contents--

```jsx

```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello JSX!</h1>
  <p>Some info</p>
  <ul>
    <li>An item</li>
    <li>Another item</li>
    <li>A third item</li>
  </ul>
</div>);
```
