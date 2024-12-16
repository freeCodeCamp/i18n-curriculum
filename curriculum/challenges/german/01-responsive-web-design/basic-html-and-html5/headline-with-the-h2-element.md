---
id: bad87fee1348bd9aedf0887a
title: Überschrift mit dem h2-Element erstellen
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

Over the next few lessons, we'll build an HTML5 cat photo web app piece-by-piece.

Das `h2`-Element, das du in diesem Schritt hinzufügst, wird der Webseite eine Überschrift der zweiten Ebene hinzufügen.

Dieses Element teilt dem Browser die Struktur deiner Website mit. `h1`-Elemente werden häufig für Hauptüberschriften verwendet, während `h2`-Elemente allgemein für Zwischenüberschriften verwendet werden. Es gibt auch `h3`-, `h4`-, `h5`- und `h6`-Elemente, um verschiedene Ebenen von Zwischenüberschriften anzuzeigen.

# --instructions--

Füge ein `h2`-Tag mit der Beschriftung "CatPhotoApp" hinzu, um ein zweites HTML-Element unterhalb deines "Hello World" `h1`-Elements zu erstellen.

# --hints--

Du solltest ein `h2`-Element erstellen.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

Dein `h2`-Element sollte ein schließendes Tag besitzen.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

Dein `h2`-Element sollte den Text `CatPhotoApp` haben.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

Dein `h1`-Element sollte den Text `Hello World` haben.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

Dein `h1`-Element sollte vor deinem `h2`-Element stehen.

```js
assert.match(code,/<h1>\s*?.*?\s*?<\/h1>\s*<h2>\s*?.*?\s*?<\/h2>/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```
