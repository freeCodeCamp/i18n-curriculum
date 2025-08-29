---
id: bad87fee1348cd8acef08812
title: Erstelle einen Block-Element-Bootstrap-Button
challengeType: 0
forumTopicId: 16810
dashedName: create-a-block-element-bootstrap-button
---

# --description--

Normally, your `button` elements with the `btn` and `btn-default` classes are only as wide as the text that they contain. Hier ein Beispiel:

```html
<button class="btn btn-default">Submit</button>
```

Dieser Button wäre nur so breit wie das Wort `Submit`.

<button class='btn btn-default'>Submit</button>

Indem du einem Block-Element die zusätzliche Klasse `btn-block` zuweist, dehnt sich dein Button auf den gesamten horizontel Raum deiner Seite aus. Alle nachfolgenden Elemente werden in eine "neue Zeile" unter den Block geschoben.

```html
<button class="btn btn-default btn-block">Submit</button>
```

Dieser Button nimmt 100% der verfügbaren Breite in Anspruch.

<button class='btn btn-default btn-block'>Submit</button>

Beachte, dass diese Buttons immer noch die Klasse `btn` benötigen.

Füge die Klasse `btn-block` zu deinem Bootstrap Button hinzu.

# --hints--

Dein Button soll immer noch die Klassen `btn` und `btn-default` haben.

```js
assert.isTrue(document.querySelector('button')?.classList?.contains('btn'));
assert.isTrue(document.querySelector('button')?.classList?.contains('btn-default'));
```

Dein Button soll die Klasse `btn-block` haben.

```js
assert.isTrue(document.querySelector('button')?.classList?.contains('btn-block'));
```

All deine `button` Elemente sollten abschließende Tags haben.

```js
assert.match(code,/<\/button>/g);
assert.match(code,/<button/g);
assert.equal(code.match(/<\/button>/g).length, code.match(/<button/g).length);
```

# --seed--

## --seed-contents--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .red-text {
    color: red;
  }

  h2 {
    font-family: Lobster, Monospace;
  }

  p {
    font-size: 16px;
    font-family: Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }

  .smaller-image {
    width: 100px;
  }
</style>

<div class="container-fluid">
  <h2 class="red-text text-center">CatPhotoApp</h2>

  <p>Click here for <a href="#">cat photos</a>.</p>

  <a href="#"><img class="smaller-image thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Tuxedo cats running on dirt ground.">
  <button class="btn btn-default">Like</button>
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
  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor"> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
    <label><input type="checkbox" name="personality"> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Crazy</label>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</div>
```

# --solutions--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .red-text {
    color: red;
  }

  h2 {
    font-family: Lobster, Monospace;
  }

  p {
    font-size: 16px;
    font-family: Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }

  .smaller-image {
    width: 100px;
  }
</style>

<div class="container-fluid">
  <h2 class="red-text text-center">CatPhotoApp</h2>

  <p>Click here for <a href="#">cat photos</a>.</p>

  <a href="#"><img class="smaller-image thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Tuxedo cats running on dirt ground.">
  <button class="btn btn-block btn-default">Like</button>
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
  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor"> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
    <label><input type="checkbox" name="personality"> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Crazy</label>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</div>
```
