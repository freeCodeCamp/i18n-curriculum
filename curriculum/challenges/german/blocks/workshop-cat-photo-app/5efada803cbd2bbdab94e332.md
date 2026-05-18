---
id: 5efada803cbd2bbdab94e332
title: Step 31
challengeType: 0
dashedName: step-31
---

# --description--

Verschachteln Sie innerhalb des gerade hinzugefügten `figure`-Elements ein `img`-Element mit einem `src`-Attribut, das auf `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg` gesetzt ist.

# --hints--

Ihr zweites `figure`-Element sollte ein öffnendes Tag haben. Öffnende Tags haben diese Syntax: `<elementName>`.

```js
assert.isAtLeast(document.querySelectorAll('figure').length, 2);
```

Ihr zweites `figure`-Element sollte ein schließendes Tag haben. Schließende Tags haben direkt nach dem `/`-Zeichen ein `<`.

```js
assert.isAtLeast(code.match(/<\/figure>/g)?.length, 2);
```

Es sollte ein zweites `figure`-Element direkt über dem schließenden Tag des zweiten `section`-Elements stehen. Sie haben sie in der falschen Reihenfolge.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

Sie sollten ein drittes `img`-Element im `figure`-Element verschachteln.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(
  catsImg
);
```

Das dritte Bild sollte ein `src`-Attribut mit dem Wert `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg` haben.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Obwohl Sie das `src`-Attribut des neuen Bildes auf die korrekte URL gesetzt haben, wird empfohlen, den Wert eines Attributs immer in Anführungszeichen zu setzen.

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
