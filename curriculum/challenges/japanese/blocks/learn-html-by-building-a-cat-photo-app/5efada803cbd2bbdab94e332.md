---
id: 5efada803cbd2bbdab94e332
title: ステップ 31
challengeType: 0
dashedName: step-31
---

# --description--

先ほど追加した`figure`要素の中に、`img`属性が`src`に設定された`https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`要素をネストしてください。

# --hints--

2つ目の`figure`要素には開始タグが必要です。開始タグの構文は次の通りです：`<elementName>`。

```js
assert(document.querySelectorAll('figure').length >= 2);
```

2つ目の`figure`要素には終了タグが必要です。終了タグは`/`文字の直後に`<`があります。

```js
assert(code.match(/<\/figure>/g).length >= 2);
```

2つ目の`figure`要素の終了タグのすぐ上に、2つ目の`section`要素があるはずです。順序が間違っています。

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

`img`要素の中に3つ目の`figure`要素がネストされている必要があります。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg
);
```

3つ目の画像には`src`属性が`https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`に設定されている必要があります。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

新しい画像の`src`が正しいURLに設定されていても、属性の値は常に引用符で囲むことをお勧めします。

```js
assert.notMatch(code, /\<img\s+.+\s+src\s*=\s*https:\/\/cdn\.freecodecamp\.org\/curriculum\/cat-photo-app\/cats\.jpg/);
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
          
        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
