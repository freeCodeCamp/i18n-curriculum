---
id: bad87fee1348bd8aedf06756
title: ID 选择器优先级高于 Class 选择器
challengeType: 0
videoUrl: 'https://scrimba.com/c/cRkpDhB'
forumTopicId: 18251
dashedName: override-class-declarations-by-styling-id-attributes
---

# --description--

We just proved that browsers read CSS from top to bottom in order of their declaration. That means that, in the event of a conflict, the browser will use whichever CSS declaration came last. Notice that if we even had put `blue-text` before `pink-text` in our `h1` element's classes, it would still look at the declaration order and not the order of their use!

但我们还没有完成。 其实还有其他方法可以覆盖 CSS 样式。 你还记得 id 属性吗？

我们来通过给 `h1` 元素添加 id 属性，覆盖 `pink-text` 和 `blue-text` 类，使 `h1` 元素变成橘色。

# --instructions--

给 `h1` 元素添加 `id` 属性，属性值为 `orange-text`。 设置方式如下：

```html
<h1 id="orange-text">
```

`h1` 元素需继续保留 `blue-text` 和 `pink-text` 这两个 class。

在 `style` 元素中创建名为 `orange-text` 的 id 选择器。 例子如下：

```css
#brown-text {
  color: brown;
}
```

**注意：** 无论在 `pink-text` class 之前或者之后声明，`id` 选择器的优先级总是高于 class 选择器。

# --hints--

`h1` 元素应包含 `pink-text` class。

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

`h1` 元素应包含 `blue-text` class。

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

`h1` 元素的 id 应为 `orange-text`。

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'),'orange-text');
```

应只有一个 `h1` 元素。

```js
assert.lengthOf(document.querySelectorAll('h1'), 1);
```

应存在名为 `orange-text` 的 id 选择器。

```js
assert.match(__helpers.removeCssComments(code), /#orange-text\s*{/gi);
```

不要在 `h1` 元素里面使用 `style` 属性。

```js
assert.notMatch(__helpers.removeHtmlComments(code), /<h1.*style.*>/gi);
```

`h1` 元素的字体颜色应为橘色。

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color']; 
assert.strictEqual(color, 'rgb(255, 165, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
</style>
<h1 class="pink-text blue-text">Hello World!</h1>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
  #orange-text {
    color: orange;
  }  
</style>
<h1 id="orange-text"  class="pink-text blue-text">Hello World!</h1>
```
