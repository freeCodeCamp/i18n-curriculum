---
id: 616d47bc9eedc4bc7f621bec
title: 步骤5
challengeType: 0
dashedName: step-5
---

# --description--

接下来，在 `div` 中，添加另一个 `div` 元素，并为其添加一个 `marker` 类。

# --hints--

你的新的 `div` 元素应该有一个开始标签。

```js
assert.exists([...code.matchAll(/<div.*?>/gi)][1]);
```

你的新的 `div` 元素应该有一个结束标签。

```js
assert.exists([...code.matchAll(/<\/div\s*>/gi)][1]);
```

你应该将新的 `div` 元素嵌套在类为 `container` 的 `div` 中。

```js
assert.strictEqual(document.querySelector('.container')?.children[0]?.localName, 'div');
```

你应该给新的 `div` 元素添加一个 `marker` 类。

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
