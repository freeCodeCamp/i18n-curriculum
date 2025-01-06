---
id: bad87fee1348bd9aedf0887a
title: Creare un titolo con l'elemento h2
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

Over the next few lessons, we'll build an HTML5 cat photo web app piece-by-piece.

L'elemento `h2` che inserirai in questo passaggio aggiungerà un titolo di livello due alla pagina web.

Questo elemento fornisce al browser informazioni sulla struttura del tuo sito web. Gli elementi `h1` sono spesso utilizzati per i titoli principali, mentre gli elementi `h2` sono generalmente utilizzati per i sottotitoli. Ci sono anche elementi `h3`, `h4`, `h5` e `h6` per indicare diversi livelli di sottotitolo.

# --instructions--

Aggiungi un tag `h2` che dice "CatPhotoApp" per creare un secondo elemento HTML sotto il tuo elemento `h1` "Hello World".

# --hints--

Dovresti creare un elemento `h2`.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

Il tuo elemento `h2` dovrebbe avere un tag di chiusura.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

Il tuo elemento `h2` dovrebbe contenere il testo `CatPhotoApp`.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

Il tuo elemento `h1` dovrebbe contenere il testo `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

Il tuo elemento `h1` dovrebbe venire prima del tuo elemento `h2`.

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
