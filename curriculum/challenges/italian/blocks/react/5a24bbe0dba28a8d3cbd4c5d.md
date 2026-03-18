---
id: 5a24bbe0dba28a8d3cbd4c5d
title: Create a Complex JSX Element
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

L'ultima sfida era un esempio semplice di JSX, ma JSX può rappresentare anche HTML più complesso.

Una cosa importante da sapere sugli elementi JSX annidati è che devono restituire un solo elemento.

Questo elemento genitore avvolgerà tutti gli altri livelli di elementi annidati.

Per esempio, diversi elementi JSX scritti come fratelli senza un elemento genitore che li avvolga non verranno transpiletti.

Ecco un esempio:

**Valid JSX:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**Invalid JSX:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

Definisci una nuova costante `JSX` che renderizza un `div` che contiene i seguenti elementi in ordine:

Un `h1`, un `p` e una lista non ordinata che contiene tre elementi `li`. Puoi inserire qualsiasi testo desideri all'interno di ogni elemento.

**Nota:** Quando renderizzi più elementi come questi, puoi racchiuderli tutti tra parentesi, ma non è strettamente necessario. Nota anche che questa sfida usa un tag `div` per avvolgere tutti gli elementi figli all'interno di un singolo elemento genitore. Se rimuovi il `div`, il JSX non verrà più transpilettato. Tieni presente questo, perché si applicherà anche quando restituisci elementi JSX nei componenti React.

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

Il `div` dovrebbe contenere un tag `ul` come terzo elemento.

```js
assert(JSX.props.children[2].type === 'ul');
```

Il `ul` dovrebbe contenere tre elementi `li`.

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
