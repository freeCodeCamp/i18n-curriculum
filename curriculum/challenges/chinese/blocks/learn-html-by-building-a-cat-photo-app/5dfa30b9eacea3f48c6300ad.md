---
id: 5dfa30b9eacea3f48c6300ad
title: Step 17
challengeType: 0
dashedName: step-25
---

# --description--

在之前的步骤中，你使用了锚元素将文本转换为链接。 其他类型的内容也可以通过将其包装在锚标签中来转换为链接。

这是一个将图像转换为链接的示例：

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

通过使用必要的元素标签将图像转换为链接。 使用 `https://freecatphotoapp.com` 作为锚元素的 `href` 属性的值。

# --hints--

你应该有一个 `img` 元素，其 `src` 值为 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`。 你可能不小心删除了它。

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

你的锚元素（`a`）应该有一个开始标签。 开始标签的语法为：`<elementName>`。

```js
assert(document.querySelectorAll('a').length >= 2);
```

你在图像之后缺少一个结束（`a`）标签。

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

你的锚元素（`a`）应该有一个结束标签。 结束标签在 `<` 字符之后有一个 `/`。

```js
assert(code.match(/<\/a>/g).length >= 2);
```

你应该只添加一个结束锚（`a`）标签。 请删除任何多余的。

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

你的锚元素（`a`）缺少一个 `href` 属性。 检查开始标记的名称后面是否有空格和/或所有属性名称之前是否有空格。

```js
assert(document.querySelector('a').hasAttribute('href'));
```

你的锚（`a`）元素应该链接到 `https://freecatphotoapp.com`。 你要么省略了 URL，要么有拼写错误。

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

你的锚元素（`a`）缺少 `href` 属性。 确保在开始标签的名称后面有一个空格，且所有的属性名称前面也要有空格。

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

你的锚元素（`a`）应该链接到 `https://freecatphotoapp.com`。 你可能忽略了 URL 或者有拼写错误。

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

你的 `img` 元素应该被嵌套在锚元素（`a`）之中。 整个 `img` 元素应该位于锚元素（`a`）的开始和结束标签内。

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```

