---
id: 68eca3cfeebef2cd8cc5f814
title: ステップ 14
challengeType: 0
dashedName: step-14
---

# --description--

クラスが `id` の2番目の要素に `card` 属性を追加し、その値を `dave-cooking-book` に設定してください。各 `id` は一意である必要があることを覚えておいてください。

# --hints--

クラスが `card` の2番目の要素には `id` 属性が必要です。

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

クラスが `card` の2番目の要素には、値が `id` の `dave-cooking-book` が必要です。

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
