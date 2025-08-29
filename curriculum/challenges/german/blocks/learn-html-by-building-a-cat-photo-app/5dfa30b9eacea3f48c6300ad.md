---
id: 5dfa30b9eacea3f48c6300ad
title: Schritt 17
challengeType: 0
dashedName: step-17
---

# --description--

In den vorherigen Schritten hast du ein Ankerelement verwendet, um Text in einen Link zu umwandeln. Auch andere Arten von Inhalten können in einen Link umgewandelt werden, indem sie mit Anker-Tags umschlossen werden.

Hier ist ein Beispiel für die Umwandlung eines Bildes in einen Link:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Verwandle das Bild in einen Link, indem du es mit den notwendigen Tags umschließt. Verwende `https://freecatphotoapp.com` als den `href`-Attributwert des Ankers.

# --hints--

Du solltest ein `img`-Element mit einem `src` von `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg` haben. Möglicherweise hast du es versehentlich gelöscht.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Dein (`a`)-Ankerelement sollte einen öffnenden Tag haben. Opening tags have this syntax: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

Dir fehlt ein schließender (`a`)-Tag nach dem Bild.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Dein (`a`)-Element sollte ein schließendes Tag haben. Closing tags have a `/` just after the `<` character.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Du solltest nur ein schließendes (`a`)-Ankertag hinzufügen. Entferne alle zusätzlichen.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Dein (`a`)-Element hat kein `href`-Attribut. Überprüfe, ob ein Leerzeichen nach dem Namen des öffnenden Tags und/oder Leerzeichen vor allen Attributnamen vorhanden sind.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

Dein (`a`)-Ankerelement sollte auf `https://freecatphotoapp.com` verlinken. Du hast die URL entweder vergessen oder einen Tippfehler gemacht.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

Dein Ankerelement (`a`) hat kein `href`-Attribut. Stelle sicher, dass ein Leerzeichen nach dem Namen des öffnendes Tags und/oder dass Leerzeichen vor allen Attributnamen vorhanden sind.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Dein Ankerelement (`a`) sollte auf `https://freecatphotoapp.com` verlinken. Du hast entweder die URL weggelassen oder einen Tippfehler gemacht.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Your `img` element should be nested within the anchor (`a`) element. The entire `img` element should be inside the opening and closing tags of the anchor (`a`) element.

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

