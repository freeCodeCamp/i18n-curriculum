---
id: 5dfb5ecbeacea3f48c6300b1
title: Step 23
challengeType: 0
dashedName: step-23
---

# --description--

`li` 요소는 순서 있는 목록이나 순서 없는 목록에서 목록 항목을 만드는 데 사용됩니다.

다음은 순서 없는 목록에서 목록 항목의 예입니다:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

`ul` 요소 안에 세 개의 목록 항목을 중첩하여 고양이가 좋아하는 세 가지를 표시하세요:

`catnip`

`laser pointers`

`lasagna` 

# --hints--

세 개의 `li` 요소가 있어야 합니다. 각 `li` 요소는 자체 여는 태그와 닫는 태그가 있어야 합니다.

```js
assert.lengthOf(document.querySelectorAll('li'), 3);
assert.lengthOf(code.match(/<\/li\>/g), 3);
```

세 개의 `li` 요소가 있어야 하며, 텍스트는 `catnip`, `laser pointers`, `lasagna` 중 어떤 순서로든 포함되어야 합니다. 텍스트를 누락했거나 오타가 있을 수 있습니다.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText?.trim().replace(/\s+/g, ' ').toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

세 개의 `li` 요소는 `ul` 요소의 여는 태그와 닫는 태그 사이에 위치해야 합니다.

```js
assert.lengthOf(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ), 3
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
      <section>
        <h2>Cat Lists</h2>
        <h3>Things cats love:</h3>
        <ul>
--fcc-editable-region--
          
--fcc-editable-region--
        </ul>
      </section>
    </main>
  </body>
</html>
```
