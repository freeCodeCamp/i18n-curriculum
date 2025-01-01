---
id: bad87fee1348bd9aedf08805
title: 使用元素选择器来设置元素的样式
challengeType: 0
videoUrl: 'https://scrimba.com/c/cJKMBT2'
forumTopicId: 18349
dashedName: use-css-selectors-to-style-elements
---

# --description--

With CSS, there are hundreds of CSS properties that you can use to change the way an element looks on your page.

当你输入 `<h2 style="color: red;">CatPhotoApp</h2>`，就可以用行内 CSS 设置 `h2` 元素的样式。

这是指定元素样式的一种方法，但有一个更好的方法来应用 CSS。

在代码的顶部，创建一个 `style` 声明区域，如下方所示：

```html
<style>
</style>
```

在样式声明区域内，可以为所有 `h2` 元素创建一个 <dfn>CSS selector</dfn>。 如果想让所有 `h2` 元素在变成红色，可以添加下方的样式规则：

```html
<style>
  h2 {
    color: red;
  }
</style>
```

请注意，每个元素的样式规则都应该有开始和结束大括号（`{` 和 `}`）。 还需要确保元素的样式定义在开始和结束样式标签之间。 你需要确保所有样式规则位于花括号之间，并且每条样式规则都以分号结束。

# --instructions--

请删除 `h2` 元素的行内样式，然后创建 `style` 样式声明区域， 最后添加 CSS 样式规则使所有 `h2` 元素变为蓝色。

# --hints--

应删除 `h2` 元素的 `style` 样式。

```js
assert.notExists(document.querySelector('h2').getAttribute('style'));
```

应创建一个 `style` 样式声明区域。

```js
assert.exists(document.querySelector('style:not(.fcc-hide-header)'));
assert.isAtLeast(document.querySelectorAll('style:not(.fcc-hide-header)').length, 1);
```

`h2` 元素颜色应为蓝色。

```js
const h2Element = document.querySelector('h2');
const color = window.getComputedStyle(h2Element)['color']; 
assert.strictEqual(color, 'rgb(0, 0, 255)');
```

确保 `h2` 选择器的内容被花括号所包围，样式规则应以分号结束。

```js
assert.match(__helpers.removeCssComments(code), /h2\s*\{\s*color\s*:.*;\s*\}/g);
```

`style` 标签应符合语法，且应有一个结束标签。

```js
assert.match(__helpers.removeHtmlComments(code), /<\/style>/g);

const closingElementLength = __helpers.removeHtmlComments(code).match(/<\/style>/g).length;
const openingElementsLength = __helpers.removeHtmlComments(code).match(/<style((\s)*((type|media|scoped|title|disabled)="[^"]*")?(\s)*)*>/g).length;
assert.strictEqual(closingElementLength, openingElementsLength);
```

# --seed--

## --seed-contents--

```html
<h2 style="color: red;">CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <div>
    <p>Things cats love:</p>
    <ul>
      <li>catnip</li>
      <li>laser pointers</li>
      <li>lasagna</li>
    </ul>
    <p>Top 3 things cats hate:</p>
    <ol>
      <li>flea treatment</li>
      <li>thunder</li>
      <li>other cats</li>
    </ol>
  </div>

  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor" checked> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <label><input type="checkbox" name="personality" checked> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```

# --solutions--

```html
<style>
  h2 {
    color: blue;
  }
</style>
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <div>
    <p>Things cats love:</p>
    <ul>
      <li>catnip</li>
      <li>laser pointers</li>
      <li>lasagna</li>
    </ul>
    <p>Top 3 things cats hate:</p>
    <ol>
      <li>flea treatment</li>
      <li>thunder</li>
      <li>other cats</li>
    </ol>
  </div>

  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor" checked> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <label><input type="checkbox" name="personality" checked> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```
