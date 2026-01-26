---
id: 5f3ef6e0e0c3feaebcf647ad
title: Step 43
challengeType: 0
dashedName: step-43
---

# --description--

Füge ein `h2`-Element in den neuen Abschnitt hinzu und gib ihm den Text `Desserts`.

# --hints--

Du solltest nicht das vorhandene `section`-Element ändern.

```js
assert.lengthOf(document.querySelectorAll('section'), 2);
```

Du solltest ein `h2`-Element innerhalb des zweiten `section`-Elements verschachteln.

```js
assert.strictEqual(document.querySelectorAll('section')?.[1]?.children?.[0]?.tagName, 'H2');
```

Dein neues `h2`-Element sollte den Text `Desserts` haben.

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
        <section>
--fcc-editable-region--

--fcc-editable-region--
        </section>
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
  width: 25%
}
```

