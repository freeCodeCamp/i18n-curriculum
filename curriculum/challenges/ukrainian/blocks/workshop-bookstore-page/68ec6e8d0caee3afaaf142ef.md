---
id: 68ec6e8d0caee3afaaf142ef
title: Крок 8
challengeType: 0
dashedName: step-8
---

# --description--

Ви можете додати кілька елементів всередину елемента `div`, щоб згрупувати пов’язаний вміст. Всередині елемента з `class` `card-container` створіть інший елемент `div`. Цей `div` представлятиме першу картку книги.

Додайте атрибут `class` до цього нового елемента `div` і встановіть значення атрибута `class` на `card`.

# --hints--

У вас має бути вкладений елемент `div` всередині елемента з класом `card-container`.

```js
assert.exists(document.querySelector('.card-container div'));
```

Ваш новий елемент `div` має мати атрибут `class`.

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

Ваш новий елемент `div` має мати атрибут `class` зі значенням `card`.

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
