---
id: 5dfa371beacea3f48c6300af
title: Passaggio 21
challengeType: 0
dashedName: step-21
---

# --description--

Quando aggiungi un elemento intestazione di rango inferiore alla pagina, si intende che stai iniziando una nuova sottosezione.

Dopo l'ultimo elemento `h2` del secondo elemento `section`, aggiungi un elemento `h3` con questo testo:

`Things cats love:`

# --hints--

Il secondo elemento `section` sembra mancare o non ha sia il tag di apertura che quello di chiusura.

```js
assert.exists(document.querySelectorAll('main > section')[1]);
assert.lengthOf(code.match(/\<\/section>/g), 2);
```

Dovrebbe esserci un elemento `h3` subito sopra il tag di chiusura del secondo elemento `section`.

```js
assert.equal(
  document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName,
    'H3'
);
```

Il tuo elemento `h3` dovrebbe avere un tag di chiusura. I tag di chiusura hanno un `/` subito dopo il carattere `<`.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

L'elemento `h3` subito sopra il tag di chiusura del secondo elemento `section` dovrebbe contenere il testo `Things cats love:`. Assicurati di includere i due punti alla fine del testo.

```js
assert.equal(
  document
    .querySelectorAll('main > section')[1]
    ?.lastElementChild.innerText?.trim().toLowerCase()
    .replace(/\s+/g, ' '), 'things cats love:'
);
```

Dovrebbe esserci un elemento `h2` con il testo `Cat Lists` sopra l'ultimo elemento `h3` annidato nell'ultimo elemento `section`. Potresti aver eliminato accidentalmente l'elemento `h2`.

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  ?.lastElementChild;
assert.equal( secondSectionLastElemNode?.nodeName, 'H3');
assert.equal(
 secondSectionLastElemNode?.previousElementSibling.innerText?.trim()
      .toLowerCase()
      .replace(/\s+/g, ' '), 'cat lists'
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
      <section>
        <h2>Cat Lists</h2>
--fcc-editable-region--
        
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
