---
id: bad88fee1348ce8acef08815
title: استخدام Bootstrap Grid لوضع العناصر جانب بعضها البعض
challengeType: 0
forumTopicId: 18371
dashedName: use-the-bootstrap-grid-to-put-elements-side-by-side
---

# --description--

Bootstrap uses a responsive 12-column grid system, which makes it easy to put elements into rows and specify each element's relative width. Most of Bootstrap's classes can be applied to a `div` element.

Bootstrap له خصائص عرض عمود مختلفة يستخدمها اعتمادا على مدى اتساع شاشة المستخدم. على سبيل المثال، الهواتف لديها شاشات ضيقة، وأجهزة الحاسوب المحمولة لديها شاشات أوسع.

خذ على سبيل المثال فئة `col-md-*` الخاص بـ Bootstrap. هنا، `md` يعني المتوسط، و `*` هو رَقْم يحدد عدد الأعمدة التي يجب أن تكون على نطاق العنصر. وفي هذه الحالة، يجري تحديد عرض العمود لعنصر على شاشة متوسطة الحجم، مثل حاسوب محمول.

في Cat Photo App الذي بناءته، سوف نستخدم `col-xs-*`، حيث `xs` يعني صغيرا إضافيا (مثل شاشة الهاتف المحمول الصغيرة للغاية)، و `*` هو عدد الأعمدة التي تحدد عدد الأعمدة التي ينبغي أن تكون واسعة في العنصر.

ضع أزرار `Like`، و `Info` و `Delete` جنبا إلى جنب من طريق تداخل كل الأزرار الثلاثة في `<div class="row">` عنصر، ثم كل واحد منهم ضمن عنصر `<div class="col-xs-4">`.

يتم تطبيق فئة `row` على `div`، ويمكن أن تكون الأزرار نفسها داخله.

# --hints--

يجب أن تكون جميع الأزرار متداخلة داخل نفس عنصر `div` مع الفئة `row`.

```js
const row = document.querySelector('div.row');
const rowChildren = row?.querySelectorAll(`:scope ${'button'}`); 
assert.lengthOf(rowChildren, 3);
```

كل من أزرار Bootstrap الخاصة بك يجب أن تكون متداخلة داخل عنصر `div` الخاص بها مع فئة `col-xs-4`.

```js
const columns = document.querySelectorAll('div.col-xs-4');

const firstButton = columns?.[0]?.querySelectorAll(`:scope ${'button'}`)
assert.lengthOf(firstButton,1);

const secondButton = columns?.[1]?.querySelectorAll(`:scope ${'button'}`)
assert.lengthOf(secondButton,1);

const thirdButton = columns?.[2]?.querySelectorAll(`:scope ${'button'}`)
assert.lengthOf(thirdButton,1);

```

كل عنصر من عناصر `button` الخاص بك يجب أن يحتوي على وسم إغلاق (closing tag).

```js
assert.match(code,/<\/button>/g);
assert.match(code,/<button/g);
assert.equal(code.match(/<\/button>/g).length , code.match(/<button/g).length);
```

كل عنصر من عناصر `div` الخاص بك يجب أن يحتوي على وسم إغلاق (closing tag).

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
