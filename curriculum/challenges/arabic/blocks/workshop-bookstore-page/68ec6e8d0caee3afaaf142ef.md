---
id: 68ec6e8d0caee3afaaf142ef
title: الخطوة 8
challengeType: 0
dashedName: step-8
---

# --description--

يمكنك إضافة عدة عناصر داخل عنصر `div` لتجميع المحتوى المرتبط. داخل العنصر الذي يحمل `class` بقيمة `card-container`، أنشئ عنصر `div` آخر. هذا العنصر `div` سيمثل بطاقة الكتاب الأولى.

أضف خاصية `class` إلى عنصر `div` الجديد هذا وضع قيمة الخاصية `class` إلى `card`.

# --hints--

يجب أن يكون لديك عنصر `div` مسكن داخل العنصر الذي يحمل صنفًا بقيمة `card-container`.

```js
assert.exists(document.querySelector('.card-container div'));
```

يجب أن يحتوي عنصر `div` الجديد على خاصية `class`.

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

يجب أن تحتوي خاصية `class` في عنصر `div` الجديد على القيمة `card`.

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
  
  <div class="card-container">
--fcc-editable-region--
    
--fcc-editable-region--
  </div>
</body>

</html>
```
