---
id: 5f3ef6e0e0c3feaebcf647ad
title: 47단계
challengeType: 0
dashedName: step-47
---

# --description--

새 섹션에 `h2` 요소를 추가하고 텍스트를 `Desserts`로 지정하세요.

# --hints--

기존 `section` 요소는 변경하지 마세요.

```js
assert.lengthOf(document.querySelectorAll('section'), 2);
```

두 번째 `h2` 요소 안에 `section` 요소를 추가해야 합니다.

```js
assert.strictEqual(document.querySelectorAll('section')?.[1]?.children?.[0]?.tagName, 'H2');
```

새 `h2` 요소의 텍스트는 `Desserts`이어야 합니다.

```js
assert.match(document.querySelectorAll('h2')?.[1]?.innerText, /Desserts/i);
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
        <section>
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
