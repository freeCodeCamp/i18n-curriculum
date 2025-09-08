---
id: 5efae16e3cbd2bbdab94e334
title: Step 33
challengeType: 0
dashedName: step-33
---

# --description--

After the last `img` element, add a `figcaption` element with the text `Cats hate other cats.`

# --hints--

你的 `figcaption` 元素應該有一個開始標籤。 開始標籤的語法爲：`<elementName>`。

```js
assert(document.querySelectorAll('figcaption').length === 2);
```

你的 `figcaption` 元素應該有一個結束標籤。 結束標籤在 `<` 字符之後有一個 `/`。

```js
assert(code.match(/<\/figcaption\>/g).length === 2);
```

There should be a `figure` element right above the second `section` element's closing tag.

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

The last `img` element should be nested in the `figure` element.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert(
  catsImg &&
    catsImg.getAttribute('src').toLowerCase() === 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

你的 `figure` 元素應該有一個開始標籤。 開始標籤的語法爲：`<elementName>`。

```js
assert(document.querySelectorAll('figure').length === 2);
```

你的 `figure` 元素應該有一個結束標籤。 結束標籤在 `<` 字符之後有一個 `/`。

```js
assert(code.match(/<\/figure\>/g).length === 2);
```

`figcaption` 元素應該嵌套在 `figure` 元素中。

```js
assert(document.querySelectorAll('figure > figcaption').length === 2);
```

嵌套在 `figure` 元素中的 `figcaption` 元素應位於 `img` 元素下方。 You have the `img` element and the `figcaption` element in the wrong order.

```js
assert(
  document.querySelectorAll('figcaption')[1].previousElementSibling.nodeName ===
    'IMG'
);
```

The `figcaption` element should have the text `Cats hate other cats.` You have omitted a word or have a typo.

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

