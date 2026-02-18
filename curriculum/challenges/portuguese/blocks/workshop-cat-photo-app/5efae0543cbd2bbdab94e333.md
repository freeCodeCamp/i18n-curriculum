---
id: 5efae0543cbd2bbdab94e333
title: Passo 32
challengeType: 0
dashedName: step-32
---

# --description--

Para melhorar a acessibilidade da imagem que você adicionou, adicione um atributo `alt` com o texto:

`Two tabby kittens sleeping together on a couch.`

# --hints--

O elemento `figure` deve ter uma tag de abertura. As tags de abertura têm essa sintaxe: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

O elemento `figure` deve ter uma tag de fechamento. As tags de fechamento têm um caractere `/` logo após o caractere `<`.

```js
assert.lengthOf(code.match(/<\/figure>/g), 2);
```

O elemento `figure` deve estar logo acima da tag de fechamento de fechamento do último elemento `section`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

O elemento `img` dos gatos deve estar dentro do elemento `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(catsImg);
```

A terceira imagem deve ter um atributo `src` com o valor de `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

O elemento Cats `img` deve ter um atributo `alt` com o valor `Two tabby kittens sleeping together on a couch.`

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.match(
  catsImg
    ?.getAttribute('alt')
    ?.replace(/\s+/g, ' '),
    /^Two tabby kittens sleeping together on a couch..?$/i
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
        <ul>
          <li>catnip</li>
          <li>laser pointers</li>
          <li>lasagna</li>
        </ul>
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
          <figcaption>Cats <em>love</em> lasagna.</figcaption>  
        </figure>
        <h3>Top 3 things cats hate:</h3>
        <ol>
          <li>flea treatment</li>
          <li>thunder</li>
          <li>other cats</li>
        </ol>
        <figure>
--fcc-editable-region--
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg">
--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
