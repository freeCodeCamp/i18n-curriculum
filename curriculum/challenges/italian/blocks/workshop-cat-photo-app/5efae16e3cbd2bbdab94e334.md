---
id: 5efae16e3cbd2bbdab94e334
title: Step 33
challengeType: 0
dashedName: step-33
---

# --description--

Dopo l'ultimo elemento `img`, aggiungi un elemento `figcaption` con il testo `Cats hate other cats.`

# --hints--

L'elemento `figcaption` dovrebbe avere un tag di apertura. I tag di apertura hanno la seguente sintassi: `<nomeElemento>`.

```js
assert.lengthOf(document.querySelectorAll('figcaption'), 2);
```

L'elemento `figcaption` dovrebbe avere un tag di chiusura. Closing tags have a `/` just after the `<` character.

```js
assert.lengthOf(code.match(/<\/figcaption\>/g), 2);
```

Ci dovrebbe essere un elemento `figure` proprio sopra il tag di chiusura del secondo elemento `section`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

L'ultimo elemento `img` dovrebbe essere annidato nell'elemento `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

L'elemento `figure` dovrebbe avere un tag di apertura. I tag di apertura hanno la seguente sintassi: `<nomeElemento>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

L'elemento `figure` dovrebbe avere un tag di chiusura. Closing tags have a `/` just after the `<` character.

```js
assert.lengthOf(code.match(/<\/figure\>/g), 2);
```

L'elemento `figcaption` dovrebbe essere annidato nell'elemento `figure`.

```js
assert.lengthOf(document.querySelectorAll('figure > figcaption'), 2);
```

L'elemento `figcaption` annidato nell'elemento `figure` dovrebbe essere al di sotto dell'elemento `img`. L'elemento `img` e l'elemento `figcaption` sono nell'ordine sbagliato.

```js
assert.equal(
  document.querySelectorAll('figcaption')[1]?.previousElementSibling.nodeName,
    'IMG'
);
```

L'elemento `figcaption` dovrebbe avere il testo `Cats hate other cats.` Hai omesso una parola o hai refuso.

```js
assert.match(
  document
    .querySelectorAll('figcaption')[1]
    ?.innerText?.trim().replace(/\s+/g, ' ').toLowerCase(),
    /^Cats hate other cats\.?$/i
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
--fcc-editable-region--
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch.">

        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
