---
id: 5f356ed6cf6eab5f15f5cfe6
title: Passaggio 16
challengeType: 0
dashedName: step-16
---

# --description--

L'elemento `div` viene usato principalmente per scopi di layout grafico, a differenza degli altri elementi di contenuto che hai usato finora. Aggiungi un elemento `div` all'interno dell'elemento `body` e poi sposta tutti gli altri elementi dentro il nuovo `div`.

All'interno del tag di apertura `div`, aggiungi l'attributo `id` con valore `menu`.

# --hints--

Il tuo tag di apertura `<div>` dovrebbe avere un attributo `id` impostato su `menu`.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

Dovresti avere un tag di chiusura `</div>`.

```js
assert.match(code, /<\/div>/i);
```

Non dovresti modificare il tuo elemento `body` esistente. Assicurati di non aver eliminato il tag di chiusura.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

Il tuo elemento `div` dovrebbe essere annidato nel `body`.

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

Dovresti spostare tutti gli altri elementi dentro il nuovo `div`.

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
