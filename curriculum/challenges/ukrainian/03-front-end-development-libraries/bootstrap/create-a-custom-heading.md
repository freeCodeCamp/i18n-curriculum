---
id: bad87fee1348bd9aede08845
title: Створіть власний заголовок
challengeType: 0
forumTopicId: 16816
dashedName: create-a-custom-heading
---

# --description--

Почнемо зі створення простого заголовка для застосунку з фотографіями котів, розмістивши заголовок та зображення кота в одному ряді.

Пам’ятайте, що Bootstrap використовує систему адаптивної сітки, яка полегшує розміщення елементів у рядах та визначення відносної ширини кожного елемента. Більшість класів Bootstrap можна застосувати до елемента `div`.

Вкладіть перше зображення та елемент `h2` в елемент `<div class="row">`. Вкладіть елемент `h2` в `<div class="col-xs-8">`, а зображення вкладіть в `<div class="col-xs-4">`, щоб вони знаходились в одному рядку.

Помітили, що зображення тепер відповідного розміру, щоб поміститися поруч із текстом?

# --hints--

Елемент `h2` та найвищий елемент `img` мають бути вкладеними в елементі `div` з класом `row`.

```js
const row = document.querySelector('div.row');
const h2 = row?.querySelectorAll(`:scope ${'h2'}`)
const image = row?.querySelectorAll(`:scope ${'img'}`)
assert.lengthOf(h2,1);
assert.lengthOf(image ,1);
```

Найвищий елемент `img` має бути вкладеним у `div` з класом `col-xs-4`.

```js
const column = document.querySelector('div.col-xs-4');
const div = column?.querySelectorAll(`:scope ${'div'}`);
const img = column?.querySelectorAll(`:scope ${'img'}`)
assert.isEmpty(div);
assert.lengthOf(img,1)
```

Елемент `h2` має бути вкладеним у `div` з класом `col-xs-8`.

```js
const column = document.querySelector('div.col-xs-8');
const div = column?.querySelectorAll(`:scope ${'div'}`);
const h2 = column?.querySelectorAll(`:scope ${'h2'}`)

assert.isEmpty(div);
assert.lengthOf(h2, 1);
```

Усі елементи `div` повинні мати кінцеві теги.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length,code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">

<style>
  h2 {
    font-family: Lobster, Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }
</style>

<div class="container-fluid">
  <h2 class="text-primary text-center">CatPhotoApp</h2>

  <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Three kittens running towards the camera.">
  <div class="row">
    <div class="col-xs-4">
      <button class="btn btn-block btn-primary">Like</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-info">Info</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-danger">Delete</button>
    </div>
  </div>
  <p>Things cats <span class="text-danger">love:</span></p>
  <ul>
    <li>cat nip</li>
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
  h2 {
    font-family: Lobster, Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }
</style>

<div class="container-fluid">
  <div class="row">
    <div class="col-xs-8">
      <h2 class="text-primary  text-center">CatPhotoApp</h2>
    </div>
    <div class="col-xs-4">
        <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
    </div>
  </div>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Three kittens running towards the camera.">
  <div class="row">
    <div class="col-xs-4">
      <button class="btn btn-block btn-primary">Like</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-info">Info</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-danger">Delete</button>
    </div>
  </div>
  <p>Things cats <span class="text-danger">love:</span></p>
  <ul>
    <li>cat nip</li>
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
