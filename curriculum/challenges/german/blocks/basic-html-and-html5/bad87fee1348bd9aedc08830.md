---
id: bad87fee1348bd9aedc08830
title: Verwende HTML5, um eine Eingabe in einem Feld zu verlangen
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cMd4EcQ'
forumTopicId: 18360
dashedName: use-html5-to-require-a-field
---

# --description--

You can require specific form fields so that your user will not be able to submit your form until he or she has filled them out.

Wenn du zum Beispiel ein Texteingabefeld erforderlich machen willst, kannst du einfach das Attribut `required` innerhalb deines `input`-Elements hinzufügen, etwa so: `<input type="text" required>`

# --instructions--

Mache dein Text-`input` zu einem Pflichtfeld (`required`), so dass dein Benutzer das Formular nicht abschicken kann, ohne dieses Feld auszufüllen.

Versuche dann, das Formular abzusenden, ohne einen Text einzugeben. Siehst du, wie dein HTML5-Formular dich darauf hinweist, dass das Feld erforderlich ist?

# --hints--

Dein `input`-Element sollte das `required`-Attribut besitzen.

```js
assert.isTrue(document.querySelector('input').required);
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <form action="https://www.freecatphotoapp.com/submit-cat-photo">
    <input type="text" placeholder="cat photo URL">
    <button type="submit">Submit</button>
  </form>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <form action="https://www.freecatphotoapp.com/submit-cat-photo">
    <input type="text" required placeholder="cat photo URL">
    <button type="submit">Submit</button>
  </form>
</main>
```
