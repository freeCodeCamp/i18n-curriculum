---
id: bad87fee1348bd9aedf0887a
title: "Intestazione con l'elemento h2"
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

Nelle prossime lezioni costruiremo passo dopo passo un'app web HTML5 per foto di gatti.

L'elemento `h2` che aggiungerai in questo passaggio inserirà un'intestazione di livello due nella pagina web.

Questo elemento comunica al browser la struttura del tuo sito. Gli elementi `h1` sono spesso usati per intestazioni principali, mentre gli elementi `h2` sono generalmente usati per sottotitoli. Ci sono anche gli elementi `h3`, `h4`, `h5` e `h6` per indicare diversi livelli di sottotitoli.

# --instructions--

Aggiungi un tag `h2` con scritto "CatPhotoApp" per creare un secondo elemento HTML sotto il tuo elemento `h1` con scritto "Hello World".

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

Il tuo elemento `h1` dovrebbe essere prima del tuo elemento `h2`.

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
