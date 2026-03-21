---
id: 5a24bbe0dba28a8d3cbd4c5d
title: Crear un elemento JSX complejo
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

El último desafío fue un ejemplo simple de JSX, pero JSX también puede representar HTML más complejo.

Una cosa importante que debes saber sobre JSX anidado es que debe devolver un solo elemento.

Este elemento padre envolvería todos los demás niveles de elementos anidados.

Por ejemplo, varios elementos JSX escritos como hermanos sin un elemento padre que los envuelva no se transpilarán.

Aquí tienes un ejemplo:

**JSX válido:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**JSX inválido:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

Define una nueva constante `JSX` que renderice un `div` que contenga los siguientes elementos en orden:

Un `h1`, un `p` y una lista desordenada que contenga tres elementos `li`. Puedes incluir cualquier texto que quieras dentro de cada elemento.

**Nota:** Al renderizar múltiples elementos así, puedes envolverlos todos entre paréntesis, pero no es estrictamente necesario. También observa que este desafío usa una etiqueta `div` para envolver todos los elementos hijos dentro de un solo elemento padre. Si quitas el `div`, el JSX ya no se transpilará. Ten esto en cuenta, ya que también se aplicará cuando devuelvas elementos JSX en componentes React.

# --hints--

La constante `JSX` debe devolver un elemento `div`.

```js
assert(JSX.type === 'div');
```

El `div` debe contener una etiqueta `h1` como primer elemento.

```js
assert(JSX.props.children[0].type === 'h1');
```

El `div` debe contener una etiqueta `p` como segundo elemento.

```js
assert(JSX.props.children[1].type === 'p');
```

El `div` debe contener una etiqueta `ul` como tercer elemento.

```js
assert(JSX.props.children[2].type === 'ul');
```

El `ul` debe contener tres elementos `li`.

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
