---
id: 68eca3cfeebef2cd8cc5f814
title: Hatua 14
challengeType: 0
dashedName: step-14
---

# --description--

Ongeza sifa ya kipengele ya `id` kwa kipengele chako cha pili chenye darasa la `card` na weka thamani yake kuwa `dave-cooking-book`. Kumbuka kwamba kila `id` lazima iwe ya kipekee.

# --hints--

Kipengele chako cha pili chenye darasa la `card` kinapaswa kuwa na sifa ya kipengele ya `id`.

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

Kipengele chako cha pili chenye darasa la `card` kinapaswa kuwa na `id` yenye thamani ya `dave-cooking-book`.

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
