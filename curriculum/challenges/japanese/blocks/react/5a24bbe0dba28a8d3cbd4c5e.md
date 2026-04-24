---
id: 5a24bbe0dba28a8d3cbd4c5e
title: JSXにコメントを追加する
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSXは有効なJavaScriptにコンパイルされる構文です。読みやすさのために、コードにコメントを追加する必要がある場合があります。ほとんどのプログラミング言語と同様に、JSXにもコメントを記述する独自の方法があります。

JSX内にコメントを入れるには、コメントテキストを囲むために`{/* */}`の構文を使います。

# --instructions--

コードエディターには、前のチャレンジで作成したものに似たJSX要素があります。既存の`div`や`h1`要素を変更せずに、提供された`p`要素のどこかにコメントを追加してください。

# --hints--

定数`JSX`は`div`要素を返す必要があります。

```js
assert(JSX.type === 'div');
```

`div`は最初の要素として`h1`タグを含む必要があります。

```js
assert(JSX.props.children[0].type === 'h1');
```

`div`は2番目の要素として`p`タグを含む必要があります。

```js
assert(JSX.props.children[1].type === 'p');
```

既存の`h1`および`p`要素は変更しないでください。

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

`JSX`は有効なコメント構文を使う必要があります。

```js
assert(/<div>[\s\S]*{\s*\/\*[\s\S]*\*\/\s*}[\s\S]*<\/div>/.test(code));
```

# --seed--

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
