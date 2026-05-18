---
id: 5dfa30b9eacea3f48c6300ad
title: Schritt 17
challengeType: 0
dashedName: step-17
---

# --description--

In den vorherigen Schritten haben Sie ein Ankerelement verwendet, um Text in einen Link zu verwandeln. Andere Arten von Inhalten können ebenfalls in einen Link verwandelt werden, indem man sie mit Anker-Tags umschließt.

Hier ist ein Beispiel, wie man ein Bild in einen Link verwandelt:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Verwandeln Sie das Bild in einen Link, indem Sie es mit den notwendigen Element-Tags umgeben. Verwenden Sie `https://freecatphotoapp.com` als Wert des `href`-Attributs des Ankers.

# --hints--

Sie sollten ein `img`-Element mit einem `src`-Wert von `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg` haben. Möglicherweise haben Sie es versehentlich gelöscht.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Ihr Anker (`a`)-Element sollte ein öffnendes Tag haben. Öffnende Tags haben diese Syntax: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

Ihnen fehlt ein schließendes (`a`) Tag nach dem Bild.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Ihr Anker (`a`)-Element sollte ein schließendes Tag haben. Schließende Tags haben ein `/` direkt nach dem `<`-Zeichen.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Sie sollten nur ein schließendes Anker-Tag (`a`) hinzufügen. Bitte entfernen Sie alle zusätzlichen.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Ihr Anker (`a`)-Element hat kein `href`-Attribut. Prüfen Sie, ob nach dem Namen des öffnenden Tags ein Leerzeichen steht und/oder ob vor allen Attributnamen Leerzeichen sind.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

Ihr Anker (`a`)-Element sollte auf `https://freecatphotoapp.com` verlinken. Sie haben entweder die URL weggelassen oder einen Tippfehler.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

Ihr Anker (`a`)-Element hat kein `href`-Attribut. Prüfen Sie, ob nach dem Namen des öffnenden Tags ein Leerzeichen steht und/oder ob vor allen Attributnamen Leerzeichen sind.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Ihr Anker (`a`)-Element sollte auf `https://freecatphotoapp.com` verlinken. Sie haben entweder die URL weggelassen oder einen Tippfehler.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Ihr `img`-Element sollte innerhalb des Ankers (`a`) verschachtelt sein. Das gesamte `img`-Element sollte sich innerhalb der öffnenden und schließenden Tags des Ankers (`a`) befinden.

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```

