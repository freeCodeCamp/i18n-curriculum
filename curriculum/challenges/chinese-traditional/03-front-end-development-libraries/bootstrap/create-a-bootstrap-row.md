---
id: bad87fee1348bd9bec908846
title: 創建一個 Bootstrap Row
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

這次爲內聯元素創建一個 Bootstrap 柵格系統的 Row（行）。

在 `h3` 標籤下方創建一個 class 屬性爲 `row` 的 `div` 元素。

# --hints--

`h3` 元素下應該增加一個 `div` 元素。

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

`div` 元素的 class 屬性應爲 `row`。

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

`row div` 應該內嵌於 `container-fluid div`。

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

確保所有 `div` 元素都有一個閉合標籤。

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
