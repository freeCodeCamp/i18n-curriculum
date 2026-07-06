---
id: 5f3cade99dda4e6071a85dfd
title: خطوة 46
challengeType: 0
dashedName: step-46
---

# --description--

ستعود لتنسيق القائمة في عدة خطوات لاحقة، لكن الآن أضف عنصر `section` ثانيًا أسفل الأول لعرض الحلويات التي يقدمها المقهى.

# --hints--

يجب أن يكون لديك وسم `section` افتتاحي.

```js
assert.lengthOf(code.match(/<section>/ig) ,2);
```

يجب أن يكون لديك وسم `section` إغلاق.

```js
assert.lengthOf(code.match(/<\/section>/ig) ,2);
```

لا تغير عنصر `main` الموجود.

```js
assert.lengthOf (document.querySelectorAll('main'), 1);
```

يجب أن يكون عنصر `section` الجديد مسكنًا داخل عنصر `main`.

```js
const main = document.querySelector('main');
const sections = main?.querySelectorAll(`:scope ${'section'}`);
assert.lengthOf(sections,2);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cafe Menu</title>
    <link href="styles.css" rel="stylesheet"/>
  </head>
  <body>
    <div class="menu">
      <main>
        <h1>CAMPER CAFE</h1>
        <p>Est. 2020</p>
--fcc-editable-region--
        <section>
          <h2>Coffee</h2>
          <article class="item">
            <p class="flavor">French Vanilla</p><p class="price">3.00</p>
          </article>
          <article class="item">
            <p class="flavor">Caramel Macchiato</p><p class="price">3.75</p>
          </article>
          <article class="item">
            <p class="flavor">Pumpkin Spice</p><p class="price">3.50</p>
          </article>
          <article class="item">
            <p class="flavor">Hazelnut</p><p class="price">4.00</p>
          </article>
          <article class="item">
            <p class="flavor">Mocha</p><p class="price">4.50</p>
          </article>
        </section>
--fcc-editable-region--
      </main>
    </div>
  </body>
</html>
```

```css
body {
  background-image: url(https://cdn.freecodecamp.org/curriculum/css-cafe/beans.jpg);
}

h1, h2, p {
  text-align: center;
}

.menu {
  width: 80%;
  background-color: burlywood;
  margin-left: auto;
  margin-right: auto;
}

.item p {
  display: inline-block;
}

.flavor {
  text-align: left;
  width: 75%;
}

.price {
  text-align: right;
  width: 25%;
}
```

