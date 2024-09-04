---
id: bad88fee1348ce8acef08815
title: Використайте сітку Bootstrap, щоб розмістити елементи поруч
challengeType: 0
forumTopicId: 18371
dashedName: use-the-bootstrap-grid-to-put-elements-side-by-side
---

# --description--

Пам’ятайте, що Bootstrap використовує систему адаптивної сітки з 12 стовпців, яка полегшує розміщення елементів у рядах та визначення відносної ширини кожного елемента. Більшість класів Bootstrap можна застосувати до елемента `div`.

Bootstrap має різні атрибути ширини стовпця, які використовує залежно від ширини екрана користувача. Наприклад, телефони мають вузькі екрани, а ноутбуки — широкі.

Розглянемо клас `col-md-*` як приклад. `md` означає «середній», а `*` є числом, яке вказує ширину елемента в стовпцях. У цьому випадку вказується ширина стовпця екрану середнього розміру (наприклад, ноутбука).

У застосунку з фотографіями котів ми використовуватимемо `col-xs-*`, де `xs` означає «дуже маленький» (дуже малий мобільний екран), а `*` є числом, яке вказує ширину елемента в стовпцях.

Розмістіть кнопки `Like`, `Info` та `Delete` поруч, вклавши їх в межах одного елемента `<div class="row">`, а потім кожну окремо в елементі `<div class="col-xs-4">`.

Клас `row` застосовують до `div`, а самі кнопки можна вкласти в нього.

# --hints--

Кнопки мають бути вкладеними в одному елементі `div` з класом `row`.

```js
const row = document.querySelector('div.row');
const rowChildren = row?.querySelectorAll(`:scope ${'button'}`); 
assert.lengthOf(rowChildren, 3);
```

Кожна кнопка має бути вкладена у власному елементі `div` з класом `col-xs-4`.

```js
const columns = document.querySelectorAll('div.col-xs-4');

const firstButton = columns?.[0]?.querySelectorAll(`:scope ${'button'}`)
assert.lengthOf(firstButton,1);

const secondButton = columns?.[1]?.querySelectorAll(`:scope ${'button'}`)
assert.lengthOf(secondButton,1);

const thirdButton = columns?.[2]?.querySelectorAll(`:scope ${'button'}`)
assert.lengthOf(thirdButton,1);

```

Кожен елемент `button` повинен мати кінцевий тег.

```js
assert.match(code,/<\/button>/g);
assert.match(code,/<button/g);
assert.equal(code.match(/<\/button>/g).length , code.match(/<button/g).length);
```

Кожен елемент `div` повинен мати кінцевий тег.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length , code.match(/<div/g).length);
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

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Three kittens running towards the camera.">
  <button class="btn btn-block btn-primary">Like</button>
  <button class="btn btn-block btn-info">Info</button>
  <button class="btn btn-block btn-danger">Delete</button>
  <p>Things cats love:</p>
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

  <p>Things cats love:</p>
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
