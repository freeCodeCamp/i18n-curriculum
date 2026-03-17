---
id: 68eca3cfeebef2cd8cc5f814
title: Крок 14
challengeType: 0
dashedName: step-14
---

# --description--

Додайте атрибут `id` до другого елемента з класом `card` і встановіть його значення на `dave-cooking-book`. Пам’ятайте, що кожен `id` має бути унікальним.

# --hints--

Ваш другий елемент з класом `card` повинен мати атрибут `id`.

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

Ваш другий елемент з класом `card` повинен мати `id` зі значенням `dave-cooking-book`.

```js
const cards = document.querySelectorAll('.card');
assert.equal(cards[1]?.id, 'dave-cooking-book');
```

# --seed--

## --seed-contents--

```html
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>XYZ Bookstore Page</title>
</head>

<body>
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
  --fcc-editable-region--
      
    </div>
  </div>
</body>

</html>
```
