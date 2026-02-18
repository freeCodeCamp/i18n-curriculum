---
id: 68eca3cfeebef2cd8cc5f814
title: 步骤14
challengeType: 0
dashedName: step-14
---

# --description--

为你的第二个具有 `card` 类的元素添加一个 `id` 属性，并将其值设置为 `dave-cooking-book`。请记住，每个 `id` 必须是唯一的。

# --hints--

你的第二个具有 `card` 类的元素应具有一个 `id` 属性。

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

你的第二个类为`card`的元素应有一个值为`dave-cooking-book`的`id`。

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
