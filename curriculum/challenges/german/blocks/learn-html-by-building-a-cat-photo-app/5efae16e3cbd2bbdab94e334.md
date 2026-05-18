---
id: 5efae16e3cbd2bbdab94e334
title: Schritt 33
challengeType: 0
dashedName: step-33
---

# --description--

Fügen Sie nach dem letzten `img`-Element ein `figcaption`-Element mit dem Text `Cats hate other cats.` hinzu.

# --hints--

Ihr `figcaption`-Element sollte ein öffnendes Tag haben. Öffnende Tags haben folgende Syntax: `<elementName>`.

```js
assert(document.querySelectorAll('figcaption').length === 2);
```

Ihr `figcaption`-Element sollte ein schließendes Tag haben. Schließende Tags haben ein `/` direkt nach dem `<`-Zeichen.

```js
assert(code.match(/<\/figcaption\>/g).length === 2);
```

Es sollte ein `figure`-Element direkt über dem schließenden Tag des zweiten `section`-Elements stehen.

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

Das letzte `img`-Element sollte im `figure`-Element verschachtelt sein.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg &&
    catsImg.getAttribute('src').toLowerCase() === 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Ihr `figure`-Element sollte ein öffnendes Tag haben. Öffnende Tags haben folgende Syntax: `<elementName>`.

```js
assert(document.querySelectorAll('figure').length === 2);
```

Ihr `figure`-Element sollte ein schließendes Tag haben. Schließende Tags haben ein `/` direkt nach dem `<`-Zeichen.

```js
assert(code.match(/<\/figure\>/g).length === 2);
```

Das `figcaption`-Element sollte im `figure`-Element verschachtelt sein.

```js
assert(document.querySelectorAll('figure > figcaption').length === 2);
```

Das `figcaption`-Element, verschachtelt im `figure`-Element, sollte unter dem `img`-Element stehen. Sie haben das `img`-Element und das `figcaption`-Element in der falschen Reihenfolge.

```js
assert(
  document.querySelectorAll('figcaption')[1].previousElementSibling.nodeName ===
    'IMG'
);
```

Das `figcaption`-Element sollte den Text `Cats hate other cats.` haben. Sie haben ein Wort ausgelassen oder einen Tippfehler gemacht.

```js
assert(
  document
    .querySelectorAll('figcaption')[1]
    .innerText.toLowerCase()
    .match(/Cats hate other cats\.?$/i)
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

