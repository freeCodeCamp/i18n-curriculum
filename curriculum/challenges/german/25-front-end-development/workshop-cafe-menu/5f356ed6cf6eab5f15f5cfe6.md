---
id: 5f356ed6cf6eab5f15f5cfe6
title: Schritt 20
challengeType: 0
dashedName: step-20
---

# --description--

The `div` element is used mainly for design layout purposes unlike the other content elements you have used so far. Add a `div` element inside the `body` element and then move all the other elements inside the new `div`.

Füge innerhalb des öffnenden `div`-Tags das `id`-Attribut mit dem Wert `menu` hinzu.

# --hints--

Dein öffnendes `<div>`-Tag sollte ein `id`-Attribut auf `menu` gesetzt haben.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

Du solltest ein abschließendes `</div>`-Tag haben.

```js
assert(code.match(/<\/div>/i));
```

Du solltest dein vorhandenes `body`-Element nicht verändern. Stelle sicher, dass du das abschließende Tag nicht gelöscht hast.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

Dein `div`-Tag sollte innerhalb deines `body`-Elements verschachtelt sein.

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

You should move all the other elements inside the new `div`.

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
--fcc-editable-region--
  <body>
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
  </body>
--fcc-editable-region--
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

