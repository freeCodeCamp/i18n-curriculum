---
id: bad87fee1348bd9aedf08827
title: Erstelle eine ungeordnete Liste mit Punkten als Aufzählungszeichen
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cDKVPuv'
forumTopicId: 16814
dashedName: create-a-bulleted-unordered-list
---

# --description--

HTML has a special element for creating <dfn>unordered lists</dfn>, or bullet point style lists.

Ungeordnete Listen beginnen mit einem öffnenden `<ul>`-Element, gefolgt von einer beliebigen Anzahl von `<li>`-Elementen. Zuletzt werden ungeordnete Listen mit einem `</ul>` abgeschlossen.

Zum Beispiel:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

würde eine Liste im Aufzählungspunktstil mit `milk` und `cheese` erstellen.

# --instructions--

Entferne die letzten beiden `p`-Elemente und erstellen unten auf der Seite eine ungeordnete Liste mit drei Dingen, die Katzen lieben.

# --hints--

Erstelle ein `ul`-Element.

```js
assert.isNotEmpty(document.querySelectorAll('ul'));
```

Du solltest drei `li`-Elemente innerhalb deines `ul`-Elements verwenden.

```js
assert.lengthOf(document.querySelectorAll('ul li'),3);
```

Dein `ul`-Element sollte einen schließenden Tag besitzen.

```js
assert.match(code,/<\/ul>/gi);
assert.match(code,/<ul/gi);
assert.strictEqual(code.match(/<\/ul>/gi).length,code.match(/<ul/gi).length);
```

Deine `li`-Elemente sollten schließende Tags besitzen.

```js
assert.match(code,/<\/li>/gi);
assert.match(code,/<li[\s>]/gi);
assert.strictEqual(code.match(/<\/li>/gi).length,code.match(/<li[\s>]/gi).length);
```

Deine `li`-Elemente sollten weder einen leeren String noch reine Leerzeichen enthalten.

```js
assert.isEmpty([...document.querySelectorAll('ul li')].filter((item) => item.textContent.trim() === ""));
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <ul>
    <li>milk</li>
    <li>mice</li>
    <li>catnip</li>
  </ul>
</main>
```
