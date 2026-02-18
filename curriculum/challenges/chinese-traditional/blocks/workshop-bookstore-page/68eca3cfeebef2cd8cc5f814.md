---
id: 68eca3cfeebef2cd8cc5f814
title: 第 14 步
challengeType: 0
dashedName: step-14
---

# --description--

為你的第二個具有 `card` 類別的元素添加一個 `id` 屬性，並將其值設為 `dave-cooking-book`。請記住，每個 `id` 必須是唯一的。

# --hints--

你的第二個元素擁有 `card` 類別，應該有一個 `id` 屬性。

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

你的第二個元素擁有 `card` 類別，應該有一個值為 `dave-cooking-book` 的 `id`。

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

    </div>
  --fcc-editable-region--
  </div>
</body>

</html>
```
