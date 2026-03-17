---
id: 616d47bc9eedc4bc7f621bec
title: Крок 5
challengeType: 0
dashedName: step-5
---

# --description--

Далі, всередині елемента `div` додайте ще один елемент `div` і надайте йому клас `marker`.

# --hints--

Ваш новий елемент `div` повинен мати початковий тег.

```js
assert.exists([...code.matchAll(/<div.*?>/gi)][1]);
```

Ваш новий елемент `div` повинен мати кінцевий тег.

```js
assert.exists([...code.matchAll(/<\/div\s*>/gi)][1]);
```

Ви повинні вкласти свій новий елемент `div` всередину `div` з класом `container`.

```js
assert.strictEqual(document.querySelector('.container')?.children[0]?.localName, 'div');
```

Ви повинні надати своєму новому елементу `div` клас `marker`.

```js
const containerChildren = [...document.querySelector('.container')?.children];
assert.isNotEmpty(containerChildren)
containerChildren.forEach(child => assert.isTrue(child.classList?.contains('marker')));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Markers</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
--fcc-editable-region--
      
--fcc-editable-region--
    </div>
  </body>
</html>
```

```css
h1 {
  text-align: center;
}
```
