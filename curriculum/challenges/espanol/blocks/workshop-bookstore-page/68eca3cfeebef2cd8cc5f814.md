---
id: 68eca3cfeebef2cd8cc5f814
title: Paso 11
challengeType: 0
dashedName: step-11
---

# --description--

Agrega un atributo `id` a tu segundo elemento que tenga una clase `card` y establece su valor en `dave-cooking-book`. Recuerda que cada `id` debe ser único.

# --hints--

Tu segundo elemento que tenga una clase `card` debe tener un atributo `id`.

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

Tu segundo elemento que tenga una clase `card` debe tener un `id` con el valor `dave-cooking-book`.

```js
const cards = document.querySelectorAll('.card');
assert.equal(cards[1]?.id, 'dave-cooking-book');
```

# --seed--

## --seed-contents--

```html
<h1>XYZ Bookstore</h1>
<p>Browse our collection of amazing books!</p>
<div class="card-container">
  <div class="card" id="sally-adventure-book">
    <h2>Sally's SciFi Adventure</h2>
    <p>This is an epic story of Sally and her dog Rex as they navigate through other worlds.</p>
    <button class="btn">Buy Now</button>
  </div>
  --fcc-editable-region--
  <div class="card">

  </div>
  --fcc-editable-region--
</div>
```
