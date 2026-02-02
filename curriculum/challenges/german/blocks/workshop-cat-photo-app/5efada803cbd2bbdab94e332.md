---
id: 5efada803cbd2bbdab94e332
title: Schritt 31
challengeType: 0
dashedName: step-31
---

# --description--

Bette innerhalb des `figure`-Elements, das du eben hinzugefügt hast, ein `img`-Element mit einem `src`-Attribut ein, das auf `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg` gesetzt ist.

# --hints--

Dein zweites `figure`-Element sollte ein öffnendes Tag haben. Opening tags have this syntax: `<elementName>`.

```js
assert.isAtLeast(document.querySelectorAll('figure').length, 2);
```

Dein zweites `figure`-Element sollte ein schließendes Tag haben. Closing tags have a `/` just after the `<` character.

```js
assert.isAtLeast(code.match(/<\/figure>/g)?.length, 2);
```

Es sollte ein zweites `figure`-Element genau über dem zweiten schließenden Tag des `section`-Elements geben. Sie sind in falscher Reihenfolge.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

Du solltest ein drittes `img`-Element in dem `figure`-Element einbetten.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(
  catsImg
);
```

Beim dritten Bild sollte das `src` Attribut auf `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg` gesetzt sein.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Obwohl du den `src` des neuen Bilds auf die richtige URL gesetzt hast, wird empfohlen, den Wert immer zwischen Anführungszeichen anzugeben.

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
        <figure>
--fcc-editable-region--

--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
