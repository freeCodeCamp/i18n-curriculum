---
id: 5f3cade99dda4e6071a85dfd
title: 46단계
challengeType: 0
dashedName: step-46
---

# --description--

메뉴 스타일링은 몇 단계 후에 다시 다루겠지만, 지금은 카페에서 제공하는 디저트를 표시하기 위해 첫 번째 `section` 요소 아래에 두 번째 `section` 요소를 추가하세요.

# --hints--

열린 `section` 태그가 있어야 합니다.

```js
assert.lengthOf(code.match(/<section>/ig) ,2);
```

닫힌 `section` 태그가 있어야 합니다.

```js
assert.lengthOf(code.match(/<\/section>/ig) ,2);
```

기존 `main` 요소는 변경하지 마세요.

```js
assert.lengthOf (document.querySelectorAll('main'), 1);
```

새로운 `section` 요소는 `main` 요소 안에 중첩되어야 합니다.

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
