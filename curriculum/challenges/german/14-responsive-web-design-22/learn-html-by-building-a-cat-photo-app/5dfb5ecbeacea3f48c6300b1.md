---
id: 5dfb5ecbeacea3f48c6300b1
title: Schritt 23
challengeType: 0
dashedName: step-23
---

# --description--

Das `li`-Element wird verwendet, um ein Listenelement in einer geordneten oder ungeordneten Liste zu erstellen.

Hier ist ein Beispiel für Listen-Elemente in einer unsortierten Liste:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

Bette innerhalb des `ul`-Elements drei Listen-Elemente ein, um drei Dinge anzuzeigen, die Katzen lieben:

`catnip`

`laser pointers`

`lasagna`

# --hints--

Du solltest drei `li`-Elemente haben. Jedes `li`-Element sollte ein eigenes öffnendes und schließendes Tag besitzen.

```js
assert.lengthOf(document.querySelectorAll('li'),3)
assert.lengthOf(code.match(/<\/li\>/g),3);
```

You should have three `li` elements with the text `catnip`, `laser pointers` and `lasagna` in any order. Du hast entweder etwas Text weggelassen oder einen Tippfehler gemacht.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText.toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

Die drei `li`-Elemente sollten sich zwischen dem öffnenden und schließenden Tag des `ul`-Elements befinden.

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

