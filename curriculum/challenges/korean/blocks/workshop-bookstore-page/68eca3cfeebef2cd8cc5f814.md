---
id: 68eca3cfeebef2cd8cc5f814
title: 14단계
challengeType: 0
dashedName: step-14
---

# --description--

클래스가 `id`인 두 번째 요소에 `card` 속성을 추가하고 그 값을 `dave-cooking-book`로 설정하세요. 각 `id`는 고유해야 한다는 점을 기억하세요.

# --hints--

클래스가 `card`인 두 번째 요소에는 `id` 속성이 있어야 합니다.

```js
const cards = document.querySelectorAll('.card');
assert.isTrue(cards[1]?.hasAttribute('id'));
```

클래스가 `card`인 두 번째 요소에는 값이 `id`인 `dave-cooking-book`가 있어야 합니다.

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
