---
id: 5a24bbe0dba28a8d3cbd4c5e
title: Add Comments in JSX
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX è una sintassi che viene compilata in JavaScript valido. A volte, per rendere il codice più leggibile, potresti aver bisogno di aggiungere commenti. Come la maggior parte dei linguaggi di programmazione, JSX ha un suo modo per farlo.

Per inserire commenti dentro JSX, usa la sintassi `{/* */}` per racchiudere il testo del commento.

# --instructions--

L'editor del codice contiene un elemento JSX simile a quello che hai creato nella sfida precedente. Aggiungi un commento da qualche parte all'interno dell'elemento `div` fornito, senza modificare gli elementi `h1` o `p` esistenti.

# --hints--

La costante `JSX` dovrebbe restituire un elemento `div`.

```js
assert(JSX.type === 'div');
```

Il `div` dovrebbe contenere un tag `h1` come primo elemento.

```js
assert(JSX.props.children[0].type === 'h1');
```

Il `div` dovrebbe contenere un tag `p` come secondo elemento.

```js
assert(JSX.props.children[1].type === 'p');
```

Gli elementi `h1` e `p` esistenti non devono essere modificati.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

L'elemento `JSX` dovrebbe usare una sintassi di commento valida.

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
