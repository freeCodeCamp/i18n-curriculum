---
id: 5efae16e3cbd2bbdab94e334
title: Hatua 33
challengeType: 0
dashedName: step-33
---

# --description--

Baada ya kipengele cha mwisho cha `img`, ongeza kipengele cha `figcaption` chenye maandishi ya `Cats hate other cats.`

# --hints--

Kipengele chako cha `figcaption` kinapaswa kuwa na lebo ya kufungua. Lebo za kufungua zina sintaksia ifuatayo: `<elementName>`.

```js
assert(document.querySelectorAll('figcaption').length === 2);
```

Kipengele chako cha `figcaption` kinapaswa kuwa na lebo ya kufunga. Lebo za kufunga zina `/` mara tu baada ya herufi ya `<`.

```js
assert(code.match(/<\/figcaption\>/g).length === 2);
```

Kufuatia lebo ya kufunga ya kipengele cha pili cha `figure`, inapaswa kuwepo kipengele cha `section` juu yake.

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

Kipengele cha mwisho cha `img` kinapaswa kupangwa ndani ya kipengele cha `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg &&
    catsImg.getAttribute('src').toLowerCase() === 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Kipengele chako cha `figure` kinapaswa kuwa na lebo ya kufungua. Lebo za kufungua zina sintaksia ifuatayo: `<elementName>`.

```js
assert(document.querySelectorAll('figure').length === 2);
```

Kipengele chako cha `figure` kinapaswa kuwa na lebo ya kufunga. Lebo za kufunga zina `/` mara tu baada ya herufi ya `<`.

```js
assert(code.match(/<\/figure\>/g).length === 2);
```

Kipengele cha `figcaption` kinapaswa kupangwa ndani ya kipengele cha `figure`.

```js
assert(document.querySelectorAll('figure > figcaption').length === 2);
```

Kipengele cha `figcaption` kilichopangwa ndani ya kipengele cha `figure` kinapaswa kuwa chini ya kipengele cha `img`. Umeweka kipengele cha `img` na kipengele cha `figcaption` kwa mpangilio usio sahihi.

```js
assert(
  document.querySelectorAll('figcaption')[1].previousElementSibling.nodeName ===
    'IMG'
);
```

Kipengele cha `figcaption` kinapaswa kuwa na maandishi ya `Cats hate other cats.`. Umeacha neno au umefanya makosa ya tahajia.

```js
assert(
  document
    .querySelectorAll('figcaption')[1]
    .innerText.toLowerCase()
    .match(/Cats hate other cats\.?$/i)
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
        <ul>
          <li>catnip</li>
          <li>laser pointers</li>
          <li>lasagna</li>
        </ul>
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
          <figcaption>Cats <em>love</em> lasagna.</figcaption>  
        </figure>
        <h3>Top 3 things cats hate:</h3>
        <ol>
          <li>flea treatment</li>
          <li>thunder</li>
          <li>other cats</li>
        </ol>
--fcc-editable-region--
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch.">

        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
