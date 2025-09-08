---
id: 5efae0543cbd2bbdab94e333
title: 步骤 32
challengeType: 0
dashedName: step-32
---

# --description--

为了提高你刚刚添加的图像的可访问性，添加具有以下文本的 `alt` 属性。

`Two tabby kittens sleeping together on a couch.`

# --hints--

你的 `figure` 元素应该有一个开始标签。 开始标签的语法为：`<elementName>`。

```js
assert(document.querySelectorAll('figure').length === 2);
```

你的 `figure` 元素应该有一个结束标签。 结束标签在 `<` 字符之后有一个 `/`。

```js
assert(code.match(/<\/figure>/g).length === 2);
```

最后一个 `section` 元素的结束标签的上方应该有一个 `figure` 元素。

```js
assert.strictEqual(document.querySelectorAll('main > section')?.[1]?.lastElementChild?.nodeName, 'FIGURE');
```

猫 `img` 元素应该嵌套在 `figure` 元素中。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(catsImg);
```

第三张图像应该有一个设置为 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg` 的 `src` 属性。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

猫 `img` 元素应该有一个 `alt` 属性，值为 `Five cats looking around a field.`

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.match(catsImg?.getAttribute('alt')?.replace(/\s+/g, ' '), /^Two tabby kittens sleeping together on a couch..?$/i);
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

