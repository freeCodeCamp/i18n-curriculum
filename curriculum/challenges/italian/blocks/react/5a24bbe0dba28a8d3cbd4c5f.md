---
id: 5a24bbe0dba28a8d3cbd4c5f
title: Renderizzare elementi HTML nel DOM
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

Finora hai imparato che JSX è uno strumento comodo per scrivere HTML leggibile all’interno di JavaScript. Con React, possiamo renderizzare questo JSX direttamente nel DOM HTML usando l’API di rendering di React chiamata ReactDOM.

ReactDOM offre un metodo semplice per renderizzare elementi React nel DOM che si presenta così: `ReactDOM.render(componentToRender, targetNode)`, dove il primo argomento è l’elemento o componente React che vuoi renderizzare, e il secondo argomento è il nodo DOM su cui vuoi renderizzare il componente.

Come ti aspetteresti, `ReactDOM.render()` deve essere chiamato dopo le dichiarazioni degli elementi JSX, proprio come devi dichiarare le variabili prima di usarle.

# --instructions--

L’editor del codice contiene un semplice componente JSX. Usa il metodo `ReactDOM.render()` per renderizzare questo componente nella pagina. Puoi passare direttamente come primo argomento gli elementi JSX definiti e usare `document.getElementById()` per selezionare il nodo DOM su cui renderizzarli. Hai a disposizione un `div` con `id='challenge-node'`. Assicurati di non modificare la costante `JSX`.

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

L’elemento JSX fornito dovrebbe essere renderizzato nel nodo DOM con id `challenge-node`.

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
