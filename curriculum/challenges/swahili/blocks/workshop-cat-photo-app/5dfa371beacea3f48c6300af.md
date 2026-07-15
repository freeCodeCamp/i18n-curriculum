---
id: 5dfa371beacea3f48c6300af
title: Hatua 21
challengeType: 0
dashedName: step-21
---

# --description--

Unapoongeza kipengele cha kichwa cha sehemu cha daraja la chini kwenye ukurasa, inamaanisha kuwa unaanza sehemu ndogo mpya.

Baada ya kipengele cha `h2` cha pili cha `section`, ongeza kipengele cha `h3` chenye maandishi haya:

`Things cats love:`

# --hints--

Kipengele cha `section` cha pili kinaonekana kukosekana au hakina lebo ya kufungua na lebo ya kufunga zote mbili.

```js
assert.exists(document.querySelectorAll('main > section')[1]);
assert.lengthOf(code.match(/\<\/section>/g), 2);
```

Inapaswa kuwepo kipengele cha `h3` juu kidogo ya lebo ya kufunga ya kipengele cha `section` cha pili.

```js
assert.equal(
  document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName,
    'H3'
);
```

Kipengele chako cha `h3` kinapaswa kuwa na lebo ya kufunga. Lebo za kufunga zina `/` mara tu baada ya herufi ya `<`.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

Kipengele cha `h3` kilicho juu kidogo ya lebo ya kufunga ya kipengele cha `section` cha pili kinapaswa kuwa na maandishi ya `Things cats love:`. Hakikisha unajumuisha nukta mwishoni mwa maandishi.

```js
assert.equal(
  document
    .querySelectorAll('main > section')[1]
    ?.lastElementChild.innerText?.trim().toLowerCase()
    .replace(/\s+/g, ' '), 'things cats love:'
);
```

Kufaa kuwepo na kipengele cha `h2` chenye maandishi `Cat Lists` juu ya kipengele cha mwisho cha `h3` kilichopangwa ndani ya sehemu ya mwisho ya `section`. Huenda umefuta kipengele cha `h2` kwa bahati mbaya.

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
