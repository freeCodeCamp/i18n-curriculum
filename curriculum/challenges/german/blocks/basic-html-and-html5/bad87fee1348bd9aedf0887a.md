---
id: bad87fee1348bd9aedf0887a
title: Überschrift mit dem h2-Element
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

In den nächsten Lektionen bauen wir Schritt für Schritt eine HTML5-Web-App für Katzenfotos.

Das `h2`-Element, das Sie in diesem Schritt hinzufügen, fügt der Webseite eine Überschrift der Ebene zwei hinzu.

Dieses Element informiert den Browser über die Struktur Ihrer Webseite. `h1`-Elemente werden oft für Hauptüberschriften verwendet, während `h2`-Elemente in der Regel für Unterüberschriften genutzt werden. Es gibt außerdem `h3`-, `h4`-, `h5`- und `h6`-Elemente, um verschiedene Ebenen von Unterüberschriften anzuzeigen.

# --instructions--

Fügen Sie ein `h2`-Tag hinzu, das „CatPhotoApp“ sagt, um ein zweites HTML-Element unter Ihrem „Hello World“-`h1`-Element zu erstellen.

# --hints--

Sie sollten ein `h2`-Element erstellen.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

Ihr `h2`-Element sollte ein schließendes Tag haben.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

Ihr `h2`-Element sollte den Text `CatPhotoApp` enthalten.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

Ihr `h1`-Element sollte den Text `Hello World` enthalten.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

Ihr `h1`-Element sollte vor Ihrem `h2`-Element stehen.

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
