---
id: 5efae0543cbd2bbdab94e333
title: Passaggio 32
challengeType: 0
dashedName: step-32
---

# --description--

Per migliorare l'accessibilità dell'immagine che hai aggiunto, aggiungi un attributo `alt` con il testo:

`Two tabby kittens sleeping together on a couch.`

# --hints--

Il tuo elemento `figure` dovrebbe avere un tag di apertura. I tag di apertura hanno questa sintassi: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

Il tuo elemento `figure` dovrebbe avere un tag di chiusura. I tag di chiusura hanno un `/` subito dopo il carattere `<`.

```js
assert.lengthOf(code.match(/<\/figure>/g), 2);
```

Dovrebbe esserci un elemento `figure` subito sopra il tag di chiusura dell'ultimo elemento `section`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

L'elemento `img` Cats dovrebbe essere annidato nell'elemento `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(catsImg);
```

La terza immagine dovrebbe avere un attributo `src` impostato su `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

L'elemento `img` Cats dovrebbe avere un attributo `alt` con il valore `Two tabby kittens sleeping together on a couch.`

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
