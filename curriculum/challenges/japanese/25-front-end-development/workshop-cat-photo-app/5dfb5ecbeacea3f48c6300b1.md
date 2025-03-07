---
id: 5dfb5ecbeacea3f48c6300b1
title: ステップ 23
challengeType: 0
dashedName: step-23
---

# --description--

順序付きリストまたは順序なしリストのリスト項目を作成するには、`li` 要素を使います。

こちらが順序なしリスト内のリスト項目の例です。

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

`ul` 要素内に 3 つのリスト項目をネストして、下記 3 つの猫が好きなものを表示してください:

`catnip`

`laser pointers`

`lasagna`

# --hints--

You should have three `li` elements. Each `li` element should have its own opening and closing tag.

```js
assert.lengthOf(document.querySelectorAll('li'), 3);
assert.lengthOf(code.match(/<\/li\>/g), 3);
```

You should have three `li` elements with the text `catnip`, `laser pointers` and `lasagna` in any order. You have either omitted some text or have a typo.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText.toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

The three `li` elements should be located between the `ul` element's opening and closing tags.

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
--fcc-editable-region--
        <ul>

        </ul>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
