---
id: 5a24bbe0dba28a8d3cbd4c5e
title: JSX にコメントを追加する
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX is a syntax that gets compiled into valid JavaScript. Sometimes, for readability, you might need to add comments to your code. Like most programming languages, JSX has its own way to do this.

JSX の中にコメントを入れるには、構文 `{/* */}` を使用してコメントテキストを囲みます。

# --instructions--

コードエディターに、前回のチャレンジで作成したものと同様の JSX 要素があります。 既存の `h1` または `p` 要素を変更せずに、指定された `div` 要素内のどこかにコメントを追加してください。

# --hints--

定数 `JSX` は `div` 要素を返す必要があります。

```js
assert(JSX.type === 'div');
```

`div` には最初の要素として `h1` タグを含める必要があります。

```js
assert(JSX.props.children[0].type === 'h1');
```

`div` には 2 番目の要素として `p` タグを含める必要があります。

```js
assert(JSX.props.children[1].type === 'p');
```

既存の `h1` 要素と `p` 要素は変更しません。

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

`JSX` では有効なコメント構文を使用する必要があります。

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
