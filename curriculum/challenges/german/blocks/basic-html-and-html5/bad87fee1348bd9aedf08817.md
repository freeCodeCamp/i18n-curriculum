---
id: bad87fee1348bd9aedf08817
title: Tote Links mit Hilfe des Hash-Symbols erstellen
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cMdkytL'
forumTopicId: 18230
dashedName: make-dead-links-using-the-hash-symbol
---

# --description--

Sometimes you want to add `a` elements to your website before you know where they will link.

Dies ist auch praktisch, wenn du das Verhalten eines Links mit `JavaScript` änderst, worüber wir später noch etwas lernen werden.

# --instructions--

Der aktuelle Wert des Attributs `href` ist ein Link, der auf "`https://www.freecatphotoapp.com` " verweist. Ersetze den Wert des `href`-Attributs durch ein `#`, auch bekannt als Hash-Symbol, um einen toten Link zu erzeugen.

Zum Beispiel: `href="#"`

# --hints--

Dein `a`-Element sollte ein toter Link sein, bei dem der Wert des `href`-Attributs auf "#" gesetzt ist.

```js
assert.strictEqual(document.querySelector('a').getAttribute('href'),'#');
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="https://www.freecatphotoapp.com" target="_blank">cat photos</a>.</p>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">

  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#" target="_blank">cat photos</a>.</p>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">

  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
