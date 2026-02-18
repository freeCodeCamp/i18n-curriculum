---
id: 68ec6e8d0caee3afaaf142ef
title: 第 8 步
challengeType: 0
dashedName: step-8
---

# --description--

你可以在一個 `div` 元素內添加多個元素來群組相關內容。在具有 `class` 為 `card-container` 的元素內，創建另一個 `div` 元素。這個 `div` 將表現第一本書的卡片。

為這個新的 `div` 元素添加一個 `class` 屬性，並將 `class` 屬性的值設為 `card`。

# --hints--

你應該在具有 `card-container` 類別的元素內巢狀一個 `div` 元素。

```js
assert.exists(document.querySelector('.card-container div'));
```

你的新 `div` 元素應該有一個 `class` 屬性。

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

你的新 `div` 元素應該有一個 `class`，其值為 `card`。

```js
assert.exists(document.querySelector('.card-container div.card'));
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
 --fcc-editable-region--
  <div class="card-container">

  </div>
--fcc-editable-region--
</body>

</html>
```
