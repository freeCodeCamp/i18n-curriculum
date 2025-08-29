---
id: bad87fed1348bd9aedf08833
title: HTML Elemente löschen
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/ckK73C9'
forumTopicId: 17559
dashedName: delete-html-elements
---

# --description--

Our phone doesn't have much vertical space.

Lass uns die unnötigen Elemente entfernen, damit wir unsere CatPhotoApp bauen können.

# --instructions--

Lösche dein `h1`-Element, damit wir unsere Ansicht vereinfachen können.

# --hints--

Dein `h1`-Element sollte gelöscht sein.

```js
assert.notMatch(code,/<h1>/gi);
assert.notMatch(code,/<\/h1>/gi);
```

Dein `h2`-Element sollte auf der Seite sein.

```js
assert.match(code,/<h2>[\w\W]*<\/h2>/gi);
```

Dein `p`-Element sollte auf der Seite sein.

```js
assert.match(code,/<p>[\w\W]*<\/p>/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
```

# --solutions--

```html
<h2>CatPhotoApp</h2><p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
```
