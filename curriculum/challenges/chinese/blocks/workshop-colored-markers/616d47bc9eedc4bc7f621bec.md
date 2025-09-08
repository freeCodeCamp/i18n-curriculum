---
id: 616d47bc9eedc4bc7f621bec
title: 步骤 5
challengeType: 0
dashedName: step-5
---

# --description--

Next, within the `div` element, add another `div` element and give it a class of `marker`.

# --hints--

你的新 `div` 元素应该有一个开始标签。

```js
assert.exists([...code.matchAll(/<div.*?>/gi)][1]);
```

你的新 `div` 元素应该有一个结束标签。

```js
assert.exists([...code.matchAll(/<\/div\s*>/gi)][1]);
```

You should nest your new `div` element within the `div` with the class `container`.

```js
assert.strictEqual(document.querySelector('.container')?.children[0]?.localName, 'div');
```

You should give your new `div` element a class of `marker`.

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
--fcc-editable-region--
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
    </div>
  </body>
--fcc-editable-region--
</html>
```

```css
h1 {
  text-align: center;
}
```
