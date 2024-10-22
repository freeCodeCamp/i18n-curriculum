---
id: 5efae0543cbd2bbdab94e333
title: Step 32
challengeType: 0
dashedName: step-32
---

# --description--

Füg, um die Barrierefreiheit des Bildes, das du gerade hinzugefügt hast, zu verbessern, ein `alt`-Attribut mit dem folgenden Text hinzu:

`Five cats looking around a field.`

# --hints--

Dein `figure`-Element sollte ein öffnendes Tag haben. Öffnende Tags haben diese Syntax: `<elementName>`.

```js
assert(document.querySelectorAll('figure').length === 2);
```

Dein `figure` sollte ein schließendes Tag haben. Abschließende Tags enthalten ein `/` direkt nach dem `<`-Zeichen.

```js
assert(code.match(/<\/figure>/g).length === 2);
```

Genau über dem letzten schließenden Tag des `section`-Elements sollte ein `figure`-Element stehen.

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

Das `img`-Cats-Element sollte im `figure`-Element eingebettet sein.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg &&
    catsImg.getAttribute('src').toLowerCase() === 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Das `img`-Cats-Element sollte ein `alt`-Attribut mit dem Wert `Five cats looking around a field.` haben

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg
    .getAttribute('alt')
    .replace(/\s+/g, ' ')
    .match(/^Five cats looking around a field\.?$/i)
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
          <li>cat nip</li>
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

