---
id: 618a0b2befb143baefab632b
title: 步骤 32
challengeType: 0
dashedName: step-32
---

# --description--

请注意，红色和青色放在一起彼此会显得非常明亮。 如果在网站上过度使用这种对比，就会分散注意力；如果将文字放在互补色背景上，就会使文字难以阅读。

较好的做法是选择一种颜色作为主色调，并使用其互补色作为点缀，以引起人们对页面上某些内容的注意。

首先，在 `h1` 规则中，使用 `rgb` 函数将其 `background-color` 设置为青色。

# --hints--

您不应删除或修改 `text-align` 属性或其值。

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign, 'center');
```

你的 `h1` CSS 规则应该有一个 `background-color` 属性，设置为 `rgb(0, 255, 255)`。

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.backgroundColor, 'rgb(0, 255, 255)');
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
      <div class="marker one">
      </div>
      <div class="marker two">
      </div>
      <div class="marker three">
      </div>
    </div>
  </body>
</html>
```

```css
h1 {
  text-align: center;
--fcc-editable-region--
  
--fcc-editable-region--
}

.container {
  background-color: rgb(255, 255, 255);
  padding: 10px 0;
}

.marker {
  width: 200px;
  height: 25px;
  margin: 10px auto;
}

.one {
  background-color: rgb(255, 0, 0);
}

.two {
  background-color: rgb(0, 255, 255);
}

.three {
  background-color: rgb(0, 0, 0);
}

```
