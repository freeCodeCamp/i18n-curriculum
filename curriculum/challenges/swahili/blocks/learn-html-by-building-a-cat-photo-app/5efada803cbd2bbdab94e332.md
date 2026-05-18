---
id: 5efada803cbd2bbdab94e332
title: Hatua 31
challengeType: 0
dashedName: step-31
---

# --description--

Ndani ya kipengele cha `figure` ulichojiongeza, panga ndani kipengele cha `img` chenye sifa ya kipengele cha `src` iliyowekwa kuwa `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`.

# --hints--

Kipengele chako cha `figure` cha pili kinapaswa kuwa na lebo ya kufungua. Lebo za kufungua zina sintaksia hii: `<elementName>`.

```js
assert(document.querySelectorAll('figure').length >= 2);
```

Kipengele chako cha `figure` cha pili kinapaswa kuwa na lebo ya kufunga. Lebo za kufunga zina `/` mara tu baada ya herufi ya `<`.

```js
assert(code.match(/<\/figure>/g).length >= 2);
```

Kipengele cha `figure` cha pili kinapaswa kuwepo juu ya lebo ya kufunga ya kipengele cha `section` cha pili. Umeviweka kwa mpangilio usio sahihi.

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

Unapaswa kuwa na kipengele cha `img` cha tatu kilichopangwa ndani ya kipengele cha `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg
);
```

Picha ya tatu inapaswa kuwa na sifa ya kipengele cha `src` iliyowekwa kuwa `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Ingawa umeweka sifa ya kipengele cha `src` ya picha mpya kuwa URL sahihi, inashauriwa kila mara kuzunguka thamani ya sifa ya kipengele na alama za nukuu.

```js
assert.notMatch(code, /\<img\s+.+\s+src\s*=\s*https:\/\/cdn\.freecodecamp\.org\/curriculum\/cat-photo-app\/cats\.jpg/);
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
          
        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
