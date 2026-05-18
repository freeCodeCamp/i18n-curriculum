---
id: 5dfb5ecbeacea3f48c6300b1
title: Step 23
challengeType: 0
dashedName: step-23
---

# --description--

Kipengele cha `li` kinatumika kuunda kipengee cha orodha katika orodha iliyopangwa au isiyopangwa.

Hapa kuna mfano wa vipengee vya orodha katika orodha isiyopangwa:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

Ndani ya kipengele cha `ul`, panga ndani vipengee vitatu vya orodha kuonyesha vitu vitatu vinavyopendwa na paka:

`catnip`

`laser pointers`

`lasagna` 

# --hints--

Unapaswa kuwa na vipengele vitatu vya `li`. Kila kipengele cha `li` kinapaswa kuwa na lebo yake ya kufungua na lebo ya kufunga.

```js
assert.lengthOf(document.querySelectorAll('li'), 3);
assert.lengthOf(code.match(/<\/li\>/g), 3);
```

Unapaswa kuwa na vipengele vitatu vya `li` vyenye maandishi `catnip`, `laser pointers` na `lasagna` kwa mpangilio wowote. Huenda umeacha baadhi ya maandishi au kuna makosa ya tahajia.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText?.trim().replace(/\s+/g, ' ').toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

Vipengele vitatu vya `li` vinapaswa kuwekwa kati ya lebo ya kufungua na lebo ya kufunga ya kipengele cha `ul`.

```js
assert.lengthOf(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ), 3
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
--fcc-editable-region--
          
--fcc-editable-region--
        </ul>
      </section>
    </main>
  </body>
</html>
```
