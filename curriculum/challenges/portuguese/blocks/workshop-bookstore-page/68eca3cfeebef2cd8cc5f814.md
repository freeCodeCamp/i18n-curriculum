---
id: 68eca3cfeebef2cd8cc5f814
title: Passo 11
challengeType: 0
dashedName: step-11
---

# --description--

Adicione um atributo `id` ao seu segundo elemento que tenha uma classe `card` e defina seu valor como `dave-cooking-book`. Lembre-se que cada `id` deve ser único.

# --hints--

Seu segundo elemento com uma classe `card` deve ter um atributo `id`.

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

Seu segundo elemento com uma classe `card` deve ter um `id` com valor `dave-cooking-book`.

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
