---
id: 68ec6e8d0caee3afaaf142ef
title: 步骤 8
challengeType: 0
dashedName: step-8
---

# --description--

你可以在一个 `div` 元素内添加多个元素以分组相关内容。在具有 `class` 为 `card-container` 的元素内，创建另一个 `div` 元素。这个 `div` 将表现第一个书籍卡片。

为这个新建的 `div` 元素添加一个 `class` 属性，并将 `class` 属性的值设置为 `card`。

# --hints--

你应该在具有 `card-container` 类的元素内嵌套一个 `div` 元素。

```js
assert.exists(document.querySelector('.card-container div'));
```

你的新建 `div` 元素应具有 `class` 属性。

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

你的新建 `div` 元素应具有值为 `card` 的 `class`。

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
