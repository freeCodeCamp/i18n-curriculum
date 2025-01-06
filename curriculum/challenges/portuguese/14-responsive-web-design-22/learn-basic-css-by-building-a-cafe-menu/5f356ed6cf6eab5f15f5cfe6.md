---
id: 5f356ed6cf6eab5f15f5cfe6
title: Passo 20
challengeType: 0
dashedName: step-20
---

# --description--

The `div` element is used mainly for design layout purposes unlike the other content elements you have used so far. Add a `div` element inside the `body` element and then move all the other elements inside the new `div`.

Dentro da tag de abertura da `div`, adicione o atributo `id` com o valor de `menu`.

# --hints--

A tag de abertura da `<div>` deve ter o atributo `id` definido como `menu`.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

Você deve acrescentar uma tag de fechamento `</div>`.

```js
assert(code.match(/<\/div>/i));
```

Você não dever alterar o elemento `body` existente. Certifique-se de que você não excluiu a tag de fechamento.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

O elemento `div` deve estar dentro do elemento `body`.

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

