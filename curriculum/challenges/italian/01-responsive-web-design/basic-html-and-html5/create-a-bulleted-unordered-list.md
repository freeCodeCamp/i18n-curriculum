---
id: bad87fee1348bd9aedf08827
title: Creare un elenco puntato non ordinato
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cDKVPuv'
forumTopicId: 16814
dashedName: create-a-bulleted-unordered-list
---

# --description--

HTML has a special element for creating <dfn>unordered lists</dfn>, or bullet point style lists.

Le liste non ordinate iniziano con un elemento di apertura `<ul>`, seguito da qualsiasi numero di elementi `<li>`. Infine, le liste non ordinate si chiudono con un `</ul>`.

Ad esempio:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

creerebbe un elenco puntato contenente `milk` e `cheese`.

# --instructions--

Rimuovi gli ultimi due elementi `p` e crea in fondo alla pagina una lista non ordinata di tre cose che i gatti amano.

# --hints--

Crea un elemento `ul`.

```js
assert.isNotEmpty(document.querySelectorAll('ul'));
```

Dovresti avere tre elementi `li` all'interno del tuo elemento `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul li'),3);
```

Il tuo elemento `ul` dovrebbe avere un tag di chiusura.

```js
assert.match(code,/<\/ul>/gi);
assert.match(code,/<ul/gi);
assert.strictEqual(code.match(/<\/ul>/gi).length,code.match(/<ul/gi).length);
```

Il tuo elemento `li` dovrebbe avere un tag di chiusura.

```js
assert.match(code,/<\/li>/gi);
assert.match(code,/<li[\s>]/gi);
assert.strictEqual(code.match(/<\/li>/gi).length,code.match(/<li[\s>]/gi).length);
```

I tuoi elementi `li` non dovrebbero contenere una stringa vuota o solo spazi bianchi.

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
