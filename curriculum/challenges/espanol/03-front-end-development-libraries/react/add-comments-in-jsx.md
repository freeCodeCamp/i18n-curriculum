---
id: 5a24bbe0dba28a8d3cbd4c5e
title: Agrega comentarios en JSX
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX is a syntax that gets compiled into valid JavaScript. Sometimes, for readability, you might need to add comments to your code. Like most programming languages, JSX has its own way to do this.

Para agregar comentarios dentro de JSX, se utiliza la sintaxis `{/* */}` para envolver el texto del comentario.

# --instructions--

El editor de código tiene un elemento JSX similar al que creaste en el último desafío. Agrega un comentario en algún lugar dentro del elemento `div`, sin modificar los elementos `h1` o `p`.

# --hints--

La constante `JSX` debe devolver un elemento `div`.

```js
assert(JSX.type === 'div');
```

El elemento `div` debe contener una etiqueta `h1` como primer elemento.

```js
assert(JSX.props.children[0].type === 'h1');
```

El elemento `div` debe contener una etiqueta `p` como segundo elemento.

```js
assert(JSX.props.children[1].type === 'p');
```

Los elementos `h1` y `p` existentes no deben ser modificados.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

El elemento`JSX` debe usar una sintaxis de comentario válida.

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
