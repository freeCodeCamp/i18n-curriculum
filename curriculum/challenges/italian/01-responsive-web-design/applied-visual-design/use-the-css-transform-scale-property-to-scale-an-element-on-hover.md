---
id: 587d78a5367417b2b2512ada
title: Usare la proprietà di trasformazione scale per ridimensionare un elemento passandoci sopra
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLPJuM'
forumTopicId: 301077
dashedName: use-the-css-transform-scale-property-to-scale-an-element-on-hover
---

# --description--

The `transform` property has a variety of functions that let you scale, move, rotate, skew, etc., your elements. When used with pseudo-classes such as `:hover` that specify a certain state of an element, the `transform` property can easily add interactivity to your elements.

Ecco un esempio per scalare gli elementi del paragrafo a 2.1 volte la loro dimensione originale quando un utente passa sopra di essi:

```css
p:hover {
  transform: scale(2.1);
}
```

**Nota:** L'applicazione di una trasformazione a un elemento `div` influirà anche su tutti i sotto-elementi contenuti nel div.

# --instructions--

Aggiungi una regola CSS per lo stato `hover` del `div` e usa la proprietà `transform` per scalare l'elemento `div` in modo da rendere l'oggetto 1,1 volte la sua dimensione originale quando un utente ci passa sopra.

# --hints--

La dimensione dell'elemento `div` dovrebbe scalare di 1.1 volte quando l'utente passa sopra di esso.

```js
assert.match(code, /div:hover\s*?{\s*?transform:\s*?scale\(1\.1\);/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
    background: linear-gradient(
      53deg,
      #ccfffc,
      #ffcccf
    );
  }



</style>

<div></div>
```

# --solutions--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
    background: linear-gradient(
      53deg,
      #ccfffc,
      #ffcccf
    );
  }
  div:hover {
    transform: scale(1.1);
  }
</style>
<div></div>
```
