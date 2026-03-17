---
id: 686daa7ed79ceacd0b264e7e
title: Крок 3
challengeType: 0
dashedName: step-3
---

# --description--

Елемент `path` потребує визначення своєї форми. Саме тут і використовується атрибут `d`. Він застосовується для створення послідовності командних літер і чисел, які малюють форму.

Ці літери представляють команди, такі як перейти до, провести лінію та закрити, а числа — координати.

Встановіть атрибут `d` для форми серця в `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`.

# --hints--

У вашого елемента `d` має бути атрибут `path`.

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.exists(d);
```

Ви маєте встановити атрибут `d` у `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`.

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.strictEqual(
  d,
  'M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z'
);
```

# --seed--

## --seed-contents--

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Heart Icon</title>
  </head>
  <body>
    <svg>
      <path
      --fcc-editable-region--
        
      --fcc-editable-region--
      ></path>
    </svg>
  </body>
</html>
```
