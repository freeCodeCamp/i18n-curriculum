---
id: 5efada803cbd2bbdab94e332
title: Passo 31
challengeType: 0
dashedName: step-31
---

# --description--

All'interno dell'elemento `figure` che hai appena aggiunto, annida un elemento `img` con l'attributo `src` impostato a `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`.

# --hints--

Il secondo elemento `figure` dovrebbe avere un tag di apertura. Opening tags have this syntax: `<elementName>`.

```js
assert(document.querySelectorAll('figure').length >= 2);
```

Il secondo elemento `figure` dovrebbe avere un tag di chiusura. Closing tags have a `/` just after the `<` character.

```js
assert(code.match(/<\/figure>/g).length >= 2);
```

Ci dovrebbe essere un secondo elemento `figure` proprio sopra il tag di chiusura del secondo elemento `section`. Sono nell'ordine sbagliato.

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

Dovresti avere un terzo elemento `img` annidato nell'elemento `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg
);
```

La terza immagine deve avere un attributo `src` impostato a `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Anche se hai inserito l'URL corretto nell'attributo `src` della nuova immagine, è raccomandato inserire sempre il valore di un attributo tra virgolette.

```js
assert.notMatch(code, /\<img\s+.+\s+src\s*=\s*https:\/\/cdn\.freecodecamp\.org\/curriculum\/cat-photo-app\/cats\.jpg/);
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

        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```

