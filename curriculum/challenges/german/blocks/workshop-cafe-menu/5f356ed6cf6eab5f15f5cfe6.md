---
id: 5f356ed6cf6eab5f15f5cfe6
title: Step 16
challengeType: 0
dashedName: step-16
---

# --description--

Das `div`-Element wird hauptsächlich für das Design-Layout verwendet, im Gegensatz zu den anderen Inhaltselementen, die Sie bisher verwendet haben. Fügen Sie ein `div`-Element innerhalb des `body`-Elements hinzu und verschieben Sie dann alle anderen Elemente in das neue `div`.

Fügen Sie im öffnenden `div`-Tag das `id`-Attribut mit dem Wert `menu` hinzu.

# --hints--

Ihr öffnendes `<div>`-Tag sollte ein `id`-Attribut mit dem Wert `menu` haben.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

Sie sollten ein schließendes `</div>`-Tag haben.

```js
assert.match(code, /<\/div>/i);
```

Sie sollten Ihr bestehendes `body`-Element nicht ändern. Stellen Sie sicher, dass Sie das schließende Tag nicht gelöscht haben.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

Ihr `div`-Element sollte im `body` verschachtelt sein.

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

Sie sollten alle anderen Elemente in das neue `div` verschieben.

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
