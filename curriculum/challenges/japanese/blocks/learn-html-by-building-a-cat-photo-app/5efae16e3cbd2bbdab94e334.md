---
id: 5efae16e3cbd2bbdab94e334
title: ステップ 33
challengeType: 0
dashedName: step-33
---

# --description--

最後の `img` 要素の後に、テキスト `figcaption` を持つ `Cats hate other cats.` 要素を追加してください。

# --hints--

`figcaption` 要素には開始タグが必要です。開始タグの構文は次の通りです：`<elementName>`。

```js
assert(document.querySelectorAll('figcaption').length === 2);
```

`figcaption` 要素には終了タグが必要です。終了タグは `/` 文字の直後に `<` があります。

```js
assert(code.match(/<\/figcaption\>/g).length === 2);
```

2番目の `figure` 要素の終了タグのすぐ上に `section` 要素があるはずです。

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

最後の `img` 要素は `figure` 要素の中にネストされている必要があります。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg &&
    catsImg.getAttribute('src').toLowerCase() === 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

`figure` 要素には開始タグが必要です。開始タグの構文は次の通りです：`<elementName>`。

```js
assert(document.querySelectorAll('figure').length === 2);
```

`figure` 要素には終了タグが必要です。終了タグは `/` 文字の直後に `<` があります。

```js
assert(code.match(/<\/figure\>/g).length === 2);
```

`figcaption` 要素は `figure` 要素の中にネストされている必要があります。

```js
assert(document.querySelectorAll('figure > figcaption').length === 2);
```

`figcaption` 要素にネストされた `figure` 要素は `img` 要素の下にあるべきです。`img` 要素と `figcaption` 要素の順序が間違っています。

```js
assert(
  document.querySelectorAll('figcaption')[1].previousElementSibling.nodeName ===
    'IMG'
);
```

`figcaption` 要素にはテキスト `Cats hate other cats.` が必要です。単語の省略かタイプミスがあります。

```js
assert(
  document
    .querySelectorAll('figcaption')[1]
    .innerText.toLowerCase()
    .match(/Cats hate other cats\.?$/i)
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
          <li>catnip</li>
          <li>laser pointers</li>
          <li>lasagna</li>
        </ul>
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
          <figcaption>Cats <em>love</em> lasagna.</figcaption>  
        </figure>
        <h3>Top 3 things cats hate:</h3>
        <ol>
          <li>flea treatment</li>
          <li>thunder</li>
          <li>other cats</li>
        </ol>
--fcc-editable-region--
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch.">

        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
