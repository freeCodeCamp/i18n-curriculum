---
id: bad87fee1348bd9aec908746
title: 将页面放在 container-fluid div 中
challengeType: 0
forumTopicId: 18198
dashedName: house-our-page-within-a-bootstrap-container-fluid-div
---

# --description--

Now let's make sure all the content on your page is mobile-responsive.

将的 `h3` 元素内嵌进一个具有 `container-fluid` class 的`div` 元素中。

# --hints--

`div` 元素 class 属性应该为 `container-fluid`。

```js
assert.isTrue(document.querySelector('div')?.classList?.contains('container-fluid'));
```

确保每一个 `div` 元素都有一个闭合标签。

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);

assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

`h3` 元素应该内嵌于 `div` 元素。

```js
const divElement = document.querySelector('div');
const divChildren = divElement?.querySelectorAll(`:scope ${'h3'}`)
assert.lengthOf(divChildren,1);
```

# --seed--

## --seed-contents--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```

# --solutions--

```html
<div class="container-fluid">
    <h3 class="text-primary text-center">jQuery Playground</h3>
</div>
```
