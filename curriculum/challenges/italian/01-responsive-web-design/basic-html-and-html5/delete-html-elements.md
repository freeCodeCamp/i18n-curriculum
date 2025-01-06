---
id: bad87fed1348bd9aedf08833
title: Eliminare elementi HTML
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/ckK73C9'
forumTopicId: 17559
dashedName: delete-html-elements
---

# --description--

Our phone doesn't have much vertical space.

Rimuoviamo gli elementi inutili in modo da poter iniziare a costruire la nostra CatPhotoApp.

# --instructions--

Elimina il tuo elemento `h1` in modo da semplificare la vista.

# --hints--

Il tuo elemento `h1` dovrebbe essere cancellato.

```js
assert.notMatch(code,/<h1>/gi);
assert.notMatch(code,/<\/h1>/gi);
```

Il tuo elemento `h2` dovrebbe essere presente nella pagina.

```js
assert.match(code,/<h2>[\w\W]*<\/h2>/gi);
```

L'elemento `p` dovrebbe essere presente nella pagina.

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
