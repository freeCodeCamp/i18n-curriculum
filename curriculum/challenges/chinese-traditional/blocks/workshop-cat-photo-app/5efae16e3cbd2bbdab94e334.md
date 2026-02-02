---
id: 5efae16e3cbd2bbdab94e334
title: 步驟 33
challengeType: 0
dashedName: step-33
---

# --description--

在最後一個 `img` 元素之後，添加一個 `figcaption` 元素，文本爲 `Cats hate other cats.`

# --hints--

你的 `figcaption` 元素應該有一個開始標籤。 開始標籤的語法爲：`<elementName>`。

```js
assert.lengthOf(document.querySelectorAll('figcaption'), 2);
```

你的 `figcaption` 元素應該有一個結束標籤。 結束標籤在 `<` 字符之後有一個 `/`。

```js
assert.lengthOf(code.match(/<\/figcaption\>/g), 2);
```

在第二個 `section` 元素的結束標籤上方應該有一個 `figure` 元素。

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

最後一個 `img` 元素應該嵌套在 `figure` 元素中。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

你的 `figure` 元素應該有一個開始標籤。 開始標籤的語法爲：`<elementName>`。

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

你的 `figure` 元素應該有一個結束標籤。 結束標籤在 `<` 字符之後有一個 `/`。

```js
assert.lengthOf(code.match(/<\/figure\>/g), 2);
```

`figcaption` 元素應該嵌套在 `figure` 元素中。

```js
assert.lengthOf(document.querySelectorAll('figure > figcaption'), 2);
```

嵌套在 `figure` 元素中的 `figcaption` 元素應位於 `img` 元素下方。 你的 `img` 元素和 `figcaption` 元素的順序錯了。

```js
assert.equal(
  document.querySelectorAll('figcaption')[1]?.previousElementSibling.nodeName,
    'IMG'
);
```

`figcaption` 元素應包含文本 `Cats hate other cats.`。你要麼忽略了單詞，要麼拼寫有誤。

```js
assert.match(
  document
    .querySelectorAll('figcaption')[1]
    ?.innerText?.trim().replace(/\s+/g, ' ').toLowerCase(),
    /^Cats hate other cats\.?$/i
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
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch.">
--fcc-editable-region--

--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
