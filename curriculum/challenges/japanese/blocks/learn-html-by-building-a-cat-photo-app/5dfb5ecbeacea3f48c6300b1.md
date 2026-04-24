---
id: 5dfb5ecbeacea3f48c6300b1
title: ステップ 23
challengeType: 0
dashedName: step-23
---

# --description--

`li` 要素は、番号付きリストまたは番号なしリストのリスト項目を作成するために使います。

以下は番号なしリストのリスト項目の例です：

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

`ul` 要素の中に3つのリスト項目をネストして、猫が好きなものを3つ表示してください：

`catnip`

`laser pointers`

`lasagna` 

# --hints--

`li` 要素が3つあるはずです。各 `li` 要素は独自の開始タグと終了タグを持つ必要があります。

```js
assert.lengthOf(document.querySelectorAll('li'),3)
assert.lengthOf(code.match(/<\/li\>/g),3);
```

テキストが `li`、`catnip`、`laser pointers` の3つの `lasagna` 要素があるはずです。テキストを省略しているか、タイプミスがあります。

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText.toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

3つの `li` 要素は `ul` 要素の開始タグと終了タグの間に配置してください。

```js
assert(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ).length === 3
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
