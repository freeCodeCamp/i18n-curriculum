---
id: 5efada803cbd2bbdab94e332
title: 步驟 31
challengeType: 0
dashedName: step-31
---

# --description--

在你剛剛添加的 `figure` 元素內，巢狀一個 `img` 元素，其 `src` 屬性設定為 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`。

# --hints--

你的第二個 `figure` 元素應該有一個開啟標籤。開啟標籤具有此語法：`<elementName>`。

```js
assert.isAtLeast(document.querySelectorAll('figure').length, 2);
```

你的第二個 `figure` 元素應該有一個結束標籤。結束標籤在 `<` 字元後面緊接著有一個 `/`。

```js
assert.isAtLeast(code.match(/<\/figure>/g)?.length, 2);
```

第二個 `section` 元素的結束標籤正上方應該有第二個 `figure` 元素。你將它們的順序弄錯了。

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

你應該在 `figure` 元素中巢狀第三個 `img` 元素。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(
  catsImg
);
```

第三張影像應該有一個 `src` 屬性設定為 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`。

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

雖然你已將新影像的 `src` 設定為正確的 URL，但建議始終用引號將屬性的值括起來。

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
        <figure>
--fcc-editable-region--
          
--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
