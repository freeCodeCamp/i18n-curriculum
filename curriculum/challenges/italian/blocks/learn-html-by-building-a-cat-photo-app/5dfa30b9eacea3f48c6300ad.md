---
id: 5dfa30b9eacea3f48c6300ad
title: Passaggio 17
challengeType: 0
dashedName: step-17
---

# --description--

Nei passaggi precedenti hai usato un elemento di ancoraggio per trasformare il testo in un link. Anche altri tipi di contenuto possono essere trasformati in un link racchiudendoli in tag di ancoraggio.

Ecco un esempio per trasformare un'immagine in un link:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Trasforma l'immagine in un link circondandola con i tag appropriati. Usa `https://freecatphotoapp.com` come valore dell'attributo dell'elemento di ancoraggio `href`.

# --hints--

Dovresti avere un elemento `img` con un valore per `src` di `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Potresti averlo eliminato accidentalmente.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

L'elemento di ancoraggio (`a`) dovrebbe avere un tag di apertura. Opening tags have this syntax: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

Ti manca un tag di chiusura (`a`) dopo l'immagine.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

L'elemento di ancoraggio (`a`) dovrebbe avere un tag di chiusura. Closing tags have a `/` just after the `<` character.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Dovresti aggiungere un solo tag di chiusura di ancoraggio (`a`). Per favore, rimuovi quelli di troppo.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Il tuo elemento di ancoraggio (`a`) non ha un attributo `href`. Verifica che ci sia uno spazio dopo il nome del tag di apertura e/o che ci siano spazi prima di tutti i nomi degli attributi.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

L'elemento di ancoraggio (`a`) dovrebbe contenere il link per `https://freecatphotoapp.com`. Hai omesso l'URL o hai un refuso.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

Your anchor (`a`) element does not have an `href` attribute. Check that there is a space after the opening tag's name and/or there are spaces before all attribute names.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Your anchor (`a`) element should link to `https://freecatphotoapp.com`. You have either omitted the URL or have a typo.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Your `img` element should be nested within the anchor (`a`) element. The entire `img` element should be inside the opening and closing tags of the anchor (`a`) element.

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

