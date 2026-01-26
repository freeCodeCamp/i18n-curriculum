---
id: 5f356ed6cf6eab5f15f5cfe6
title: Step 16
challengeType: 0
dashedName: step-16
---

# --description--

Das `div`-Element wird im Gegensatz zu anderen Inhaltselementen, die du bisher verwendet hast, hauptsächlich für Layoutzwecke verwendet. Füge ein `div`-Element im `body`-Element hinzu und verschiebe dann alle anderen Elemente innerhalb des neuen `div`.

Füge innerhalb des öffnenden `div`-Tags das `id`-Attribut mit dem Wert `menu` hinzu.

# --hints--

Dein öffnendes `<div>`-Tag sollte ein `id`-Attribut auf `menu` gesetzt haben.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

Du solltest ein abschließendes `</div>`-Tag haben.

```js
assert.match(code, /<\/div>/i);
```

Du solltest dein vorhandenes `body`-Element nicht verändern. Stelle sicher, dass du das abschließende Tag nicht gelöscht hast.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

Dein `div`-Element sollte innerhalb des `body`-Elements eingebettet sein.

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

Du solltest alle anderen Elemente in das neue `Div` verschieben.

```js
assert.lengthOf(document.querySelector('body > div#menu > main')?.children, 3);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cafe Menu</title>
    <link href="styles.css" rel="stylesheet"/>
  </head>
  <body>
--fcc-editable-region--
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
--fcc-editable-region--
  </body>
</html>
```

```css
body {
  background-color: burlywood;
}

h1, h2, p {
  text-align: center;
}
```
