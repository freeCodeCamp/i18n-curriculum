---
id: 5dfa30b9eacea3f48c6300ad
title: Passaggio 17
challengeType: 0
dashedName: step-17
---

# --description--

Nei passaggi precedenti hai usato un elemento àncora per trasformare del testo in un collegamento. Anche altri tipi di contenuto possono essere trasformati in un collegamento racchiudendoli nei tag àncora.

Ecco un esempio di come trasformare un'immagine in un collegamento:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Trasforma l'immagine in un collegamento racchiudendola con i tag dell'elemento necessari. Usa `https://freecatphotoapp.com` come valore dell'attributo `href` dell'àncora.

# --hints--

Dovresti avere un elemento `img` con un valore `src` di `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Potresti averlo eliminato per errore.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Il tuo elemento àncora (`a`) dovrebbe avere un tag di apertura. I tag di apertura hanno questa sintassi: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

Manca un tag di chiusura (`a`) dopo l'immagine.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Il tuo elemento àncora (`a`) dovrebbe avere un tag di chiusura. I tag di chiusura hanno un `/` subito dopo il carattere `<`.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Dovresti aggiungere solo un tag di chiusura àncora (`a`). Rimuovi eventuali tag in eccesso.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Il tuo elemento àncora (`a`) non ha un attributo `href`. Controlla che ci sia uno spazio dopo il nome del tag di apertura e/o che ci siano spazi prima di tutti i nomi degli attributi.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

Il tuo elemento àncora (`a`) dovrebbe collegare a `https://freecatphotoapp.com`. Hai omesso l'URL o c'è un errore di battitura.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

Il tuo elemento àncora (`a`) non ha un attributo `href`. Controlla che ci sia uno spazio dopo il nome del tag di apertura e/o che ci siano spazi prima di tutti i nomi degli attributi.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Il tuo elemento àncora (`a`) dovrebbe collegare a `https://freecatphotoapp.com`. Hai omesso l'URL o c'è un errore di battitura.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Il tuo elemento `img` dovrebbe essere annidato all'interno dell'elemento àncora (`a`). L'intero elemento `img` dovrebbe essere dentro i tag di apertura e chiusura dell'elemento àncora (`a`).

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```
