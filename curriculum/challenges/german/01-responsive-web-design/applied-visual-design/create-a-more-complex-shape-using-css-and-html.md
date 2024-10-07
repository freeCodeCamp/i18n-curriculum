---
id: 587d78a6367417b2b2512ade
title: Eine komplexere Form mit CSS und HTML erstellen
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

Die `::before` und `::after` Pseudoelemente funktionieren nur dann richtig, wenn sie eine definierte `content`-Eigenschaft haben. Diese Eigenschaft wird normalerweise verwendet, um dem ausgewählten Element Dinge wie ein Foto oder Text hinzuzufügen. Wenn die Pseudoelemente `::before` und `::after` benutzt werden, um Formen zu schaffen, ist die Eigenschaft `content` erforderlich, allerdings wird sie auf einen leeren String gesetzt. Im obigen Beispiel hat das Element mit der Klasse `heart` ein `::before`-Pseudoelement, das ein gelbes Rechteck mit einer Höhe von `50px` und einer Breite von `70px` erzeugt. Dieses Rechteck hat aufgrund seines 25% `border-radius` abgerundete Ecken und ist absolut `5px` links und `50px` oberhalb des Elements positioniert.

# --instructions--

Transformiere das Element auf dem Bildschirm in ein Herz. Ändere im `.heart::after` Selektor, die `background-color` zu `pink` und den `border-radius` auf 50%.

Verweise als Nächstes mit der `heart` Klasse auf das Element (nur `heart`) und definiere die `transform`-Eigenschaft. Verwende die `rotate()`-Funktion mit -45 Grad.

Ändere schließlich im `.heart::before` Selektor, dessen `content` Eigenschaft zu einem leeren String.

# --hints--

Die `background-color` Eigenschaft des `.heart::after` Selektors sollte `pink` sein.

```js
const heartAfter = code.match(/\.heart::after\s*{[\s\S]+?[^\}]}/g)?.[0];
assert.match(heartAfter, /({|;)\s*background-color\s*:\s*pink\s*(;|})/g);
```

Der `border-radius` des `.heart::after` Selektors sollte 50% betragen.

```js
assert.lengthOf(code.match(/border-radius\s*?:\s*?50%/gi),2);
```

Die `transform`-Eigenschaft für die Klasse `heart` sollte eine `rotate()`-Funktion mit -45 Grad enthalten.

```js
assert.match(code,/transform\s*?:\s*?rotate\(\s*?-45deg\s*?\)/gi);
```

Der `content` des `.heart::before` Selektors sollte ein leerer String sein.

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
