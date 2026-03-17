---
id: bd7123c8c441eddfaeb5bdef
title: Saluta gli elementi HTML
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

Benvenuto alle sfide di codice HTML di freeCodeCamp. Ti guideranno passo dopo passo nello sviluppo web.

Per prima cosa, inizierai costruendo una semplice pagina web usando HTML. Puoi modificare il codice nel tuo editor di codice, che è incorporato in questa pagina web.

Vedi il codice nel tuo editor che dice `<h1>Hello</h1>`? Quello è un elemento HTML.

La maggior parte degli elementi HTML ha un tag di apertura e un tag di chiusura.

I tag di apertura sono così:

```html
<h1>
```

I tag di chiusura sono così:

```html
</h1>
```

L’unica differenza tra tag di apertura e tag di chiusura è la barra obliqua dopo la parentesi angolare di apertura di un tag di chiusura.

Ogni sfida ha dei test che puoi eseguire in qualsiasi momento cliccando il pulsante "Run tests". Quando superi tutti i test, ti verrà chiesto di inviare la tua soluzione e passare alla sfida di codice successiva.

# --instructions--

Per superare il test di questa sfida, cambia il testo del tuo elemento `h1` in modo che dica `Hello World`.

# --hints--

Il tuo elemento `h1` dovrebbe avere il testo `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
