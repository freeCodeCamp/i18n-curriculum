---
id: 68eca3cfeebef2cd8cc5f814
title: الخطوة 14
challengeType: 0
dashedName: step-14
---

# --description--

أضف خاصية `id` إلى العنصر الثاني الذي يحمل صنف `card` وضع قيمتها `dave-cooking-book`. تذكر أن كل `id` يجب أن يكون فريدًا.

# --hints--

يجب أن يحتوي العنصر الثاني الذي يحمل صنف `card` على خاصية `id`.

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

يجب أن يحتوي العنصر الثاني الذي يحمل صنف `card` على خاصية `id` بقيمة `dave-cooking-book`.

```js
const cards = document.querySelectorAll('.card');
assert.equal(cards[1]?.id, 'dave-cooking-book');
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
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
