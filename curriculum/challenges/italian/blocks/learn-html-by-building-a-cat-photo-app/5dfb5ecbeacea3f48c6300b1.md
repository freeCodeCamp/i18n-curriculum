---
id: 5dfb5ecbeacea3f48c6300b1
title: Passaggio 23
challengeType: 0
dashedName: step-23
---

# --description--

L'elemento `li` serve a creare un elemento di lista in una lista ordinata o non ordinata.

Ecco un esempio di elementi di lista in una lista non ordinata:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

All'interno dell'elemento `ul` annida tre elementi di lista per mostrare tre cose che i gatti amano:

`catnip`

`laser pointers`

`lasagna` 

# --hints--

Dovresti avere tre elementi `li`. Ogni elemento `li` dovrebbe avere il proprio tag di apertura e tag di chiusura.

```js
assert.lengthOf(document.querySelectorAll('li'),3)
assert.lengthOf(code.match(/<\/li\>/g),3);
```

Dovresti avere tre elementi `li` con il testo `catnip`, `laser pointers` e `lasagna` in qualsiasi ordine. Hai omesso del testo o c'è un errore di battitura.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText.toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

I tre elementi `li` dovrebbero trovarsi tra i tag di apertura e chiusura dell'elemento `ul`.

```js
assert(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ).length === 3
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
        <h3>Things cats love:</h3>
--fcc-editable-region--
        <ul>
          
        </ul>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
