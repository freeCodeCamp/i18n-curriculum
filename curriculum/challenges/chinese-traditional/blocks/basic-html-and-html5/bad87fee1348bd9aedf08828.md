---
id: bad87fee1348bd9aedf08828
title: 創建一個有序列表
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cQ3B8TM'
forumTopicId: 16824
dashedName: create-an-ordered-list
---

# --description--

HTML has another special element for creating <dfn>ordered lists</dfn>, or numbered lists.

有序列表以 `<ol>` 開始，中間包含一個或多個 `<li>` 元素。 最後以 `</ol>` 結束。

例如：

```html
<ol>
  <li>Garfield</li>
  <li>Sylvester</li>
</ol>
```

將創建一個包含 `Garfield` 和 `Sylvester` 的編號列表。

# --instructions--

請創建一個有序列表，內容是貓咪最討厭的三樣東西。

# --hints--

應包含一個有序列表，內容是貓咪最討厭的三樣東西（`Top 3 things cats hate:`）。

```js
const previousElement = document.querySelector('ol').previousElementSibling; 
assert.match(previousElement.textContent,/Top 3 things cats hate:/i);
```

應包含有一個無序列表，內容是貓咪最喜歡的東西（`Things cats love:`）。

```js
const previousElement = document.querySelector('ul').previousElementSibling; 
assert.match(previousElement.textContent,/Things cats love:/i);
```

頁面應只包含一個 `ul` 元素。

```js
assert.lengthOf(document.querySelectorAll('ul'), 1);
```

頁面應只包含一個 `ol` 元素。

```js
assert.lengthOf(document.querySelectorAll('ol'), 1);
```

`ul` 無序列表中應包含 3 個 `li` 元素。

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

`ol` 有序列表應該包含 3 個 `li` 元素。

```js
assert.lengthOf(document.querySelectorAll('ol li'), 3);
```

`ul` 無序列表應有結束標籤。

```js
assert.match(code,/<\/ul>/g);
assert.strictEqual(code.match(/<\/ul>/g).length ,code.match(/<ul>/g).length);
```

`ol` 有序列表應有結束標籤。

```js
assert.match(code,/<\/ol>/g);
assert.strictEqual(code.match(/<\/ol>/g).length ,code.match(/<ol>/g).length);
```

`li` 元素應有結束標籤。

```js
assert.match(code,/<\/li>/g);
assert.match(code,/<li>/g);
assert.strictEqual(code.match(/<\/li>/g).length ,code.match(/<li>/g).length);
```

無序列表裏的 `li` 元素內容不應爲空。

```js
[...document.querySelectorAll('ul li')].forEach((val) =>
  assert.isNotEmpty(__helpers.removeWhiteSpace(val.textContent))
);
```

有序列表裏的 `li` 元素內容不應該爲空。

```js
[...document.querySelectorAll('ol li')].forEach((val) =>
  assert.isNotEmpty(__helpers.removeWhiteSpace(val.textContent))
);
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>

</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>hate 1</li>
    <li>hate 2</li>
    <li>hate 3</li>
  </ol>
</main>
```
