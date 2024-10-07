---
id: 587d778f367417b2b2512aae
title: Dare un significato ai link usando un testo descrittivo
challengeType: 0
videoUrl: 'https://scrimba.com/c/c437DcV'
forumTopicId: 301013
dashedName: give-links-meaning-by-using-descriptive-link-text
---

# --description--

Screen reader users have various options for what type of content their device reads. These options include skipping to (or over) landmark elements, jumping to the main content, or getting a page summary from the headings. Another option is to only hear the links available on a page.

Gli screen reader fanno questo leggendo il testo del link, o quello che c'è tra i tag anchor (`a`). Una lista di "clicca qui" o "continua a leggere" non aiuta. Al contrario, dovresti usare testi brevi ma descrittivi all'interno dei tag `a` per fornire più informazioni a questi utenti.

# --instructions--

Il testo del link che Camper Cat usa, privato del contesto, non è molto descrittivo. Sposta il tag anchor (`a`) in modo che racchiuda il testo `information about batteries` anziché `Click here`.

# --hints--

Il tuo codice dovrebbe spostare gli anchor tag `a` dalla loro posizione intorno alle parole `Click here` per racchiudere le parole `information about batteries`.

```js
assert.match(document.querySelector('a')?.textContent, /^(information about batteries)$/g);
```

L'elemento `a` dovrebbe avere un attributo `href` con un valore di una stringa vuota `""`.

```js
assert.isEmpty(document.querySelector('a')?.getAttribute('href'));
```

L'elemento `a` dovrebbe avere un tag di chiusura.

```js
assert.isTrue(code.match(/<\/a>/g)?.length === code.match(/<a href=(''|"")>/g)?.length);
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. <a href="">Click here</a> for information about batteries</p>
  </article>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. Click here for <a href="">information about batteries</a></p>
  </article>
</body>
```
