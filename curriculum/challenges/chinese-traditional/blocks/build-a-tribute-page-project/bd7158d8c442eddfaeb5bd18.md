---
id: bd7158d8c442eddfaeb5bd18
title: 建置一個致敬頁面
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301147
dashedName: build-a-tribute-page
---

# --description--

**目標：** 建置一個功能上類似於 <a href="https://tribute-page.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://tribute-page.freecodecamp.rocks</a> 的應用程式。**請勿複製此示範專案**。

**使用者故事：**

1. 你的致敬頁面應該有一個 `main` 元素，並且對應的 `id` 為 `main`，其中包含所有其他元素。
1. 你應該會看到一個 `id` 為 `title` 的元素，該元素包含一個字串（即文字），用來描述致敬頁面的主題（例如 "Dr. Norman Borlaug"）。
1. 你應該會看到一個 `figure` 或一個具有 `id` 為 `img-div` 的 `div` 元素。
1. 在 `#img-div` 元素中，你應該會看到一個具有對應 `id="image"` 的 `img` 元素。
1. 在 `#img-div` 元素內，你應該會看到一個具有對應 `id="img-caption"` 的元素，該元素包含描述在 `#img-div` 中顯示的影像的文字內容。
1. 你應該會看到一個具有對應 `id="tribute-info"` 的元素，其中包含描述致敬頁面主題的文字內容。
1. 你應該會看到一個帶有對應 `id="tribute-link"` 的 `a` 元素，該元素連結到一個外部網站，該網站包含關於致敬頁面主題的額外資訊。提示：你必須為你的元素添加一個 `target` 屬性並將其設為 `_blank`，以便你的連結在新分頁中開啟。
1. 你的 `#image` 應該使用 `max-width` 和 `height` 屬性來相對於其父元素的寬度進行響應式調整大小，且不超過其原始大小。
1. 你的 `img` 元素應該置中於其父元素內。

完成使用者故事並通過以下所有測試以完成此專案。展現你個人的風格。祝你程式設計愉快！

**注意：** 請務必在你的 HTML 中添加 `<link rel="stylesheet" href="styles.css">` 以聯結你的樣式表並套用你的 CSS。

# --hints--

你應該有一個 `main` 元素，其 `id` 為 `main`。

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

你的 `#img-div`、`#image`、`#img-caption`、`#tribute-info` 和 `#tribute-link` 都應該是 `#main` 的後代。

```js
const el1 = document.querySelector('#main #img-div');
const el2 = document.querySelector('#main #image');
const el3 = document.querySelector('#main #img-caption');
const el4 = document.querySelector('#main #tribute-info');
const el5 = document.querySelector('#main #tribute-link');
assert.isNotNull(el1);
assert.isNotNull(el2);
assert.isNotNull(el3);
assert.isNotNull(el4);
assert.isNotNull(el5);
```

你應該有一個 `id` 為 `title` 的元素。

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

你的 `#title` 不應該是空的。

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

你應該有一個 `figure` 或 `div` 元素，其 `id` 為 `img-div`。

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

你應該有一個 `img` 元素，其 `id` 為 `image`。

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

你的 `#image` 應該是 `#img-div` 的子孫元素。

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

你應該有一個 `figcaption` 或 `div` 元素，其 `id` 為 `img-caption`。

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

你的 `#img-caption` 應該是 `#img-div` 的後代。

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

你的 `#img-caption` 不應該是空的。

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

你應該有一個 `id` 為 `tribute-info` 的元素。

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

你的 `#tribute-info` 不應該是空的。

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

你應該有一個 `a` 元素，其 `id` 為 `tribute-link`。

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

你的 `#tribute-link` 應該有一個 `href` 屬性和值。

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

你的 `#tribute-link` 應該有一個設定為 `_blank` 的 `target` 屬性。

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

你的 `img` 元素的 `display` 應該是 `block`。

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

你的 `#image` 應該有 `max-width` 為 `100%`。

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

你的 `#image` 應該有 `height` 為 `auto`。

```js
// taken from the testable-projects repo
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const oldDisplayValue = imgStyle.getPropertyValue('display');
const oldDisplayPriority = imgStyle.getPropertyPriority('display');
img?.style.setProperty('display', 'none', 'important');
const heightValue = imgStyle?.getPropertyValue('height');
img?.style.setProperty('display', oldDisplayValue, oldDisplayPriority);
assert.strictEqual(heightValue, 'auto');
```

你的 `#image` 應該置中於其父元素內。

```js
// taken from the testable-projects repo
const img = document.getElementById('image'),
  imgParent = img?.parentElement,
  imgLeft = img?.getBoundingClientRect().left,
  imgRight = img?.getBoundingClientRect().right,
  parentLeft = imgParent?.getBoundingClientRect().left,
  parentRight = imgParent?.getBoundingClientRect().right,
  leftMargin = imgLeft - parentLeft,
  rightMargin = parentRight - imgRight;
assert.isBelow(leftMargin - rightMargin, 6);
assert.isBelow(rightMargin - leftMargin, 6);
```

# --seed--

## --seed-contents--

```html

```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://fonts.googleapis.com/css?family=Pacifico"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Lobster"
      rel="stylesheet"
    />
    <link href="styles.css" rel="stylesheet" />
    <title>Tribute Page</title>
  </head>
  <body>
    <h1>Tribute Page</h1>
    <p>The below card was designed as a tribute page for freeCodeCamp.</p>
    <main id="main">
      <div id="img-div">
        <img
          id="image"
          class="border"
          src="https://upload.wikimedia.org/wikipedia/en/5/53/Pok%C3%A9mon_Togepi_art.png"
          alt="An image of Togepi"
        />
        <figcaption id="img-caption">Togepi, happy as always.</figcaption>
      </div>
      <h2 id="title">Togepi</h2>
      <hr />
      <div id="tribute-info">
        <p>
          Togepi was first discovered in the Johto region, when Ash Ketchum
          discovered a mysterious egg. However, when the egg hatched, Togepi saw
          Ash's friend Misty first and imprinted on her. Like many other
          creatures, this imprinting process created a bond and Togepi views
          Misty as his mother.
        </p>
        <p>
          Togepi is a very childlike Pokemon, and is very emotionally
          expressive. He demonstrates extreme levels of joy and sadness.
        </p>
        <hr />
        <p><u>Battle Information</u></p>
        <ul style="list-style-type: none">
          <li>Type: Fairy</li>
          <li>Evolutions: Togepi -> Togetic -> Togekiss</li>
          <li>Moves: Growl, Pound, Sweet Kiss, Charm</li>
          <li>Weaknesses: Poison, Steel</li>
          <li>Resistances: Dragon</li>
        </ul>
        <p>
          Check out this
          <a
            id="tribute-link"
            href="https://bulbapedia.bulbagarden.net/wiki/Togepi_(Pok%C3%A9mon)"
            target="_blank"
            rel="noopener noreferrer"
            >Bulbapedia article on Togepi</a
          >
          for more information on this great Pokemon.
        </p>
      </div>
    </main>
  </body>
  <footer>
    <a href="../">Return to Project List</a> |
    <a href="https://www.nhcarrigan.com">Return to HomePage</a>
  </footer>
</html>
```

```css
body {
  background-color: #3a3240;
  color: white;
}
main {
  background-color: #92869c;
  font-family: Lobster;
  max-width: 500px;
  margin: 20px auto;
  color: black;
  border-radius: 50px;
  box-shadow: 10px 10px rgba(0, 0, 0, 0.5);
}
h2 {
  text-align: center;
  font-size: 20pt;
  font-family: Pacifico;
}
body {
  text-align: center;
  font-size: 12pt;
}
footer {
  text-align: center;
  font-size: 10pt;
}
.border {
  border-color: black;
  border-width: 5px;
  border-style: solid;
}
#image {
  height: auto;
  display: block;
  margin: auto;
  max-width: 100%;
  border-radius: 50%;
}
#img-caption {
  font-size: 10pt;
}
a:not(#tribute-link) {
  color: white;
}
hr {
  border-color: black;
}
```
