---
id: 587d78a6367417b2b2512ade
title: Creare forme più complesse utilizzando CSS e HTML
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPpz4fr'
forumTopicId: 301050
dashedName: create-a-more-complex-shape-using-css-and-html
---

# --description--

One of the most popular shapes in the world is the heart shape, and in this challenge you'll create one using pure CSS. But first, you need to understand the `::before` and `::after` pseudo-elements. `::before` creates a pseudo-element that is the first child of the selected element; `::after` creates a pseudo-element that is the last child of the selected element. In the following example, a `::before` pseudo-element is used to add a rectangle to an element with the class `heart`:

```css
.heart::before {
  content: "";
  background-color: yellow;
  border-radius: 25%;
  position: absolute;
  height: 50px;
  width: 70px;
  top: -50px;
  left: 5px;
}
```

Affinché gli pseudo-elementi `::before` e `::after` funzionino correttamente, devono avere una proprietà `content` (contenuto) definita. Questa proprietà viene solitamente utilizzata per aggiungere cose come una foto o un testo all'elemento selezionato. Quando gli pseudo-elementi `::before` e `::after` vengono utilizzati per creare forme, la proprietà `content` è ancora obbligatoria, ma viene impostata su una stringa vuota. Nell'esempio precedente, l'elemento con la classe `heart` ha uno pseudo-elemento `::before` che produce un rettangolo giallo con altezza e larghezza di `50px` e `70px` rispettivamente. Questo rettangolo ha angoli arrotondati a causa del `border-radius` al 25% ed è posizionato in modo assoluto a `5px` da sinistra e `50px` sopra la parte superiore dell'elemento.

# --instructions--

Trasforma l'elemento sullo schermo in un cuore. Nel selettore `.heart::after`, cambia il `background-color` a `pink` e il `border-radius` a 50%.

Poi, seleziona l'elemento di classe `heart` (solo `heart`) e riempi la proprietà `transform`. Usa la funzione `rotate()` con un argomento di -45 gradi.

Infine, nel selettore `.heart::before`, imposta la proprietà `content` su una stringa vuota.

# --hints--

La proprietà `background-color` del selettore `.heart::after` dovrebbe essere `pink`.

```js
const heartAfter = code.match(/\.heart::after\s*{[\s\S]+?[^\}]}/g)?.[0];
assert.match(heartAfter, /({|;)\s*background-color\s*:\s*pink\s*(;|})/g);
```

Il `border-radius` del selettore `.heart::after` dovrebbe essere del 50%.

```js
assert.lengthOf(code.match(/border-radius\s*?:\s*?50%/gi),2);
```

La proprietà `transform` per la classe `heart` dovrebbe utilizzare una funzione `rotate()` impostata a -45 gradi.

```js
assert.match(code,/transform\s*?:\s*?rotate\(\s*?-45deg\s*?\)/gi);
```

Il `content` del selettore `.heart::before` dovrebbe essere una stringa vuota.

```js
assert.match(code,/\.heart::before\s*?{\s*?content\s*?:\s*?("|')\1\s*?;/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .heart {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-color: pink;
    height: 50px;
    width: 50px;
    transform: ;
  }
  .heart::after {
    background-color: blue;
    content: "";
    border-radius: 25%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: 0px;
    left: 25px;
  }
  .heart::before {
    content: ;
    background-color: pink;
    border-radius: 50%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: -25px;
    left: 0px;
  }
</style>
<div class="heart"></div>
```

# --solutions--

```html
<style>
  .heart {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-color: pink;
    height: 50px;
    width: 50px;
    transform: rotate(-45deg);
  }
  .heart::after {
    background-color: pink;
    content: "";
    border-radius: 50%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: 0px;
    left: 25px;
  }
  .heart::before {
    content: "";
    background-color: pink;
    border-radius: 50%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: -25px;
    left: 0px;
  }
</style>
<div class="heart"></div>
```
