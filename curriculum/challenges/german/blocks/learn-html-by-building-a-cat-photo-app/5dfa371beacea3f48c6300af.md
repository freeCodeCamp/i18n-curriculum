---
id: 5dfa371beacea3f48c6300af
title: Schritt 21
challengeType: 0
dashedName: step-21
---

# --description--

Wenn Sie ein Überschriftenelement niedrigerer Rangstufe zur Seite hinzufügen, wird impliziert, dass Sie einen neuen Unterabschnitt beginnen.

Fügen Sie nach dem letzten `h2`-Element des zweiten `section`-Elements ein `h3`-Element mit diesem Text hinzu:

`Things cats love:`

# --hints--

Das zweite `section`-Element scheint zu fehlen oder hat nicht sowohl ein öffnendes als auch ein schließendes Tag.

```js
assert(
  document.querySelectorAll('main > section')[1] &&
    code.match(/\<\/section>/g).length == 2
);
```

Es sollte ein `h3`-Element direkt über dem schließenden Tag des zweiten `section`-Elements stehen.

```js
assert(
  document.querySelectorAll('main > section')[1].lastElementChild.nodeName ===
    'H3'
);
```

Ihr `h3`-Element sollte ein schließendes Tag haben. Schließende Tags haben ein `/` direkt nach dem `<`-Zeichen.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

Das `h3`-Element direkt über dem schließenden Tag des zweiten `section`-Elements sollte den Text `Things cats love:` enthalten. Achten Sie darauf, den Doppelpunkt am Ende des Texts einzuschließen.

```js
assert(
  document
    .querySelectorAll('main > section')[1]
    .lastElementChild.innerText.toLowerCase()
    .replace(/\s+/g, ' ') === 'things cats love:'
);
```

Es sollte ein `h2`-Element mit dem Text `Cat Lists` über dem letzten `h3`-Element stehen, das im letzten `section`-Element verschachtelt ist. Möglicherweise haben Sie versehentlich das `h2`-Element gelöscht.

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  .lastElementChild;
assert(
  secondSectionLastElemNode.nodeName === 'H3' &&
    secondSectionLastElemNode.previousElementSibling.innerText
      .toLowerCase()
      .replace(/\s+/g, ' ') === 'cat lists'
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
--fcc-editable-region--
      <section>
        <h2>Cat Lists</h2>
        
      </section>
--fcc-editable-region--
    </main>
  </body>
</html>
```

