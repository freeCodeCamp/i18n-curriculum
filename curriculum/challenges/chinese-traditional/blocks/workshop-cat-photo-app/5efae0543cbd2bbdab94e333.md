---
id: 5efae0543cbd2bbdab94e333
title: 步驟 32
challengeType: 0
dashedName: step-32
---

# --description--

為了提升你添加的影像的存取性，為 `alt` 屬性添加文字：

`Two tabby kittens sleeping together on a couch.`

# --hints--

你的 `figure` 元素應該有一個開啟標籤。開啟標籤具有此語法：`<elementName>`。

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

你的 `figure` 元素應該有一個結束標籤。結束標籤在 `<` 字元後面緊接著有一個 `/`。

```js
assert.lengthOf(code.match(/<\/figure>/g), 2);
```

在最後一個 `section` 元素的結束標籤正上方應該有一個 `figure` 元素。

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

`img` 元素應該巢狀在 `figure` 元素中。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(catsImg);
```

第三張影像應該有一個 `src` 屬性設定為 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Cats 的 `img` 元素應該有一個 `alt` 屬性，值為 `Two tabby kittens sleeping together on a couch.`。

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
