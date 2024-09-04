---
id: bad87fee1348bd9bec908846
title: 创建一个 Bootstrap Row
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

这次为内联元素创建一个 Bootstrap 栅格系统的 Row（行）。

在 `h3` 标签下方创建一个 class 属性为 `row` 的 `div` 元素。

# --hints--

`h3` 元素下应该增加一个 `div` 元素。

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

`div` 元素的 class 属性应为 `row`。

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

`row div` 应该内嵌于 `container-fluid div`。

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

确保所有 `div` 元素都有一个闭合标签。

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>

</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row"></div>
</div>
```
