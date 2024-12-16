---
id: bad87fee1348bd9aedf08801
title: Mit dem Absatzelement informieren
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/ceZ7DtN'
forumTopicId: 18202
dashedName: inform-with-the-paragraph-element
---

# --description--

The `p` element is the preferred element for paragraph text on websites. `p` is short for "paragraph".

Du kannst ein Absatzelement wie folgt erstellen:

```html
<p>I'm a p tag!</p>
```

# --instructions--

Erstelle ein `p`-Element unterhalb deines `h2`-Elements, und gib ihm den Text `Hello Paragraph`.

**Hinweis:** Als Konvention werden alle HTML-Tags in Kleinbuchstaben geschrieben, zum Beispiel `<p></p>` und nicht `<P></P>`.

# --hints--

Dein Code sollte ein gültiges `p`-Element haben.

```js
assert.lengthOf(document.querySelectorAll('p'),1);
```

Dein `p`-Element sollte den Text `Hello Paragraph` haben.

```js
assert.match(document.querySelector('p').textContent,/hello(\s)+paragraph/gi);
```

Dein `p`-Element sollte ein schließendes Tag haben.

```js
assert.match(code,/<\/p>/g);
assert.strictEqual(code.match(/<\/p>/g).length,code.match(/<p/g).length);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
<p>Hello Paragraph</p>
```
