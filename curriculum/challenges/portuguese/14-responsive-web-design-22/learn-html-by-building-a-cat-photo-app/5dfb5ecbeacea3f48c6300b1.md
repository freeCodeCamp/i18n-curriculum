---
id: 5dfb5ecbeacea3f48c6300b1
title: Step 23
challengeType: 0
dashedName: step-23
---

# --description--

O elemento `li` é usado para criar um item em uma lista ordenada ou não ordenada.

Aqui está um exemplo de itens em uma lista não ordenada:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

Aninhe no elemento `ul` uma lista de três coisas que gatos adoram:

`catnip`

`laser pointers`

`lasagna`

# --hints--

Você deve usar três elementos `li`. Cada elemento `li` deve ter sua própria tag de abertura e de fechamento.

```js
assert.lengthOf(document.querySelectorAll('li'),3)
assert.lengthOf(code.match(/<\/li\>/g),3);
```

You should have three `li` elements with the text `catnip`, `laser pointers` and `lasagna` in any order. Você esqueceu algum dos textos ou cometeu um erro de digitação.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText.toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

Os três elementos `li` devem estar entre as tags de abertura e fechamento do elemento `ul`.

```js
assert(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ).length === 3
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
      <section>
        <h2>Cat Lists</h2>
        <h3>Things cats love:</h3>
--fcc-editable-region--
        <ul>

        </ul>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```

