---
id: 5efae0543cbd2bbdab94e333
title: ステップ 32
challengeType: 0
dashedName: step-32
---

# --description--

追加した画像のアクセシビリティを向上させるために、次のテキストを持つ`alt`属性を追加してください：

`Two tabby kittens sleeping together on a couch.`

# --hints--

`figure`要素には開始タグが必要です。開始タグの構文は次の通りです：`<elementName>`。

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

`figure`要素には終了タグが必要です。終了タグは`/`文字の直後に`<`があります。

```js
assert.lengthOf(code.match(/<\/figure>/g), 2);
```

最後の`figure`要素の終了タグのすぐ上に`section`要素があるはずです。

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

Catsの`img`要素は`figure`要素にネストされている必要があります。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(catsImg);
```

3番目の画像には`src`属性が`https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`に設定されている必要があります。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Catsの`img`要素には値が`alt`の`Two tabby kittens sleeping together on a couch.`属性が必要です。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.match(
  catsImg
    ?.getAttribute('alt')
    ?.replace(/\s+/g, ' '),
    /^Two tabby kittens sleeping together on a couch..?$/i
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
        <figure>
--fcc-editable-region--
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg">
--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
