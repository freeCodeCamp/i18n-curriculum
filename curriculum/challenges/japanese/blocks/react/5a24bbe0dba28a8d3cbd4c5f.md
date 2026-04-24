---
id: 5a24bbe0dba28a8d3cbd4c5f
title: DOMにHTML要素をレンダリングする
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

これまでに、JSXはJavaScript内で読みやすいHTMLを書くための便利なツールであることを学びました。Reactでは、ReactDOMと呼ばれるReactのレンダリングAPIを使って、このJSXを直接HTMLのDOMにレンダリングできます。

ReactDOMはReact要素やコンポーネントをDOMにレンダリングするためのシンプルなメソッドを提供しており、次のように使います：`ReactDOM.render(componentToRender, targetNode)`。ここで最初の引数はレンダリングしたいReact要素やコンポーネントで、2番目の引数はそのコンポーネントをレンダリングしたいDOMノードです。

予想通り、`ReactDOM.render()`はJSX要素の宣言の後に呼び出す必要があります。変数を使う前に宣言するのと同じです。

# --instructions--

コードエディターにはシンプルなJSXコンポーネントがあります。`ReactDOM.render()`メソッドを使ってこのコンポーネントをページにレンダリングしてください。定義済みのJSX要素を最初の引数として直接渡し、`document.getElementById()`を使ってレンダリング先のDOMノードを選択できます。`div`に`id='challenge-node'`が用意されています。`JSX`定数は変更しないでください。

# --hints--

定数`JSX`は`div`要素を返すはずです。

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

提供されたJSX要素はidが`challenge-node`のDOMノードにレンダリングされるべきです。

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
