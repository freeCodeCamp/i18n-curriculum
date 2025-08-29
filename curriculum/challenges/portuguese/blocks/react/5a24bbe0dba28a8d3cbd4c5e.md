---
id: 5a24bbe0dba28a8d3cbd4c5e
title: Adicionar comentários em JSX
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX is a syntax that gets compiled into valid JavaScript. Sometimes, for readability, you might need to add comments to your code. Like most programming languages, JSX has its own way to do this.

Para colocar comentários dentro de JSX, você usa a sintaxe `{/* */}` para envolver o texto do comentário.

# --instructions--

O editor de código possui um elemento JSX semelhante ao que você criou no último desafio. Adicione um comentário em algum lugar dentro do elemento `div` fornecido, sem modificar os elementos existentes `h1` ou `p`.

# --hints--

A constante `JSX` deve retornar um elemento `div`.

```js
assert(JSX.type === 'div');
```

O `div` deve conter uma tag `h1` como o primeiro elemento.

```js
assert(JSX.props.children[0].type === 'h1');
```

A `div` deve conter uma tag `p` como o segundo elemento.

```js
assert(JSX.props.children[1].type === 'p');
```

Os elementos existentes `h1` e `p` não devem ser modificados.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

O `JSX` deve usar sintaxe de comentário válido.

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
