---
id: 5a24bbe0dba28a8d3cbd4c5d
title: 複雑なJSX要素を作成する
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

前回のチャレンジはシンプルなJSXの例でしたが、JSXはより複雑なHTMLも表現できます。

ネストされたJSXについて知っておくべき重要なことは、必ず単一の要素を返す必要があることです。

この1つの親要素が、他のすべてのネストされた要素のレベルを包みます。

例えば、親のラッパー要素なしで兄弟として書かれた複数のJSX要素はトランスパイルされません。

例を示します：

**有効なJSX:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**無効なJSX:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

新しい定数`JSX`を定義し、次の要素を順番に含む`div`をレンダリングしてください：

`h1`、`p`、および3つの`li`アイテムを含む番号なしリスト。各要素内には任意のテキストを含めてかまいません。

**注意:** このように複数の要素をレンダリングする場合、すべてを丸括弧で囲むことができますが、必須ではありません。また、このチャレンジではすべての子要素を単一の親要素で包むために`div`タグを使用していることに注意してください。`div`を削除するとJSXはトランスパイルされなくなります。これはReactコンポーネントでJSX要素を返す場合にも当てはまるので覚えておいてください。

# --hints--

定数`JSX`は`div`要素を返す必要があります。

```js
assert(JSX.type === 'div');
```

`div`は最初の要素として`h1`タグを含むべきです。

```js
assert(JSX.props.children[0].type === 'h1');
```

`div`は2番目の要素として`p`タグを含むべきです。

```js
assert(JSX.props.children[1].type === 'p');
```

`div`は3番目の要素として`ul`タグを含むべきです。

```js
assert(JSX.props.children[2].type === 'ul');
```

`ul`は3つの`li`要素を含むべきです。

```js
assert(
  JSX.props.children
    .filter((ele) => ele.type === 'ul')[0]
    .props.children.filter((ele) => ele.type === 'li').length === 3
);
```

# --seed--

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
