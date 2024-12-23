---
id: bad87fee1348bd9bedf08813
title: 要素の周りに境界線を追加する
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MvnHZ'
forumTopicId: 16630
dashedName: add-borders-around-your-elements
---

# --description--

CSSの border には `style`、`color` および `width` のようなプロパティがあります。

例えば、ある HTML 要素の周りに赤色の5ピクセルの境界線を作成したい場合、次のようなクラスを使えます:

```html
<style>
  .thin-red-border {
    border-color: red;
    border-width: 5px;
    border-style: solid;
  }
</style>
```

# --instructions--

`thick-green-border` というクラスを作成しましょう。 このクラスは HTML 要素の周りに 10px、実線 (solid)、緑色の境界線を追加するようにしてください。 猫の写真にこのクラスを適用してください。

1 つの要素に複数のクラスを適用するには、`class` 属性に各クラス名を半角スペースで区切って指定することを覚えておいてください。 例えば、次のようになります。

```html
<img class="class1 class2">
```

# --hints--

`img` 要素にはクラス `smaller-image` が必要です。

```js
assert.isTrue(document.querySelector('img').classList.contains('smaller-image'));
```

`img` 要素にはクラス `thick-green-border` が必要です。

```js
assert.isTrue(document.querySelector('img').classList.contains('thick-green-border'));
```

画像の境界線の幅は `10px` である必要があります。

```js
// Note: to any future maintainers, the read width of the border is dependent on 
// the zoom. For example we cannot match 10px exactly because if a campers set the zoom to 110% 
// it will be read as 9~px. 
const image = document.querySelector('img'); 
const imageBorderTopWidth = window.getComputedStyle(image)["border-top-width"]; 
const widthNumber = parseInt(imageBorderTopWidth);
assert.isAtLeast(widthNumber, 8);
assert.isAtMost(widthNumber, 12);
```

画像の境界線のスタイルは `solid` である必要があります。

```js
const image = document.querySelector('img'); 
const borderRightStyle = window.getComputedStyle(image)["border-right-style"]; 
assert.strictEqual(borderRightStyle, 'solid');
```

`img` 要素の周りの境界線は緑色でなければなりません。

```js
const image = document.querySelector('img'); 
const borderLeftColor = window.getComputedStyle(image)["border-left-color"]; 
assert.strictEqual(borderLeftColor, 'rgb(0, 128, 0)');
```

# --seed--

## --seed-contents--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .red-text {
    color: red;
  }

  h2 {
    font-family: Lobster, monospace;
  }

  p {
    font-size: 16px;
    font-family: monospace;
  }

  .smaller-image {
    width: 100px;
  }
</style>

<h2 class="red-text">CatPhotoApp</h2>
<main>
  <p class="red-text">Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img class="smaller-image" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <div>
    <p>Things cats love:</p>
    <ul>
      <li>catnip</li>
      <li>laser pointers</li>
      <li>lasagna</li>
    </ul>
    <p>Top 3 things cats hate:</p>
    <ol>
      <li>flea treatment</li>
      <li>thunder</li>
      <li>other cats</li>
    </ol>
  </div>

  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor" checked> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <label><input type="checkbox" name="personality" checked> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```

# --solutions--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .red-text {
    color: red;
  }

  h2 {
    font-family: Lobster, monospace;
  }

  p {
    font-size: 16px;
    font-family: monospace;
  }

  .smaller-image {
    width: 100px;
  }

  .thick-green-border {
    border-width: 10px;
    border-color: green;
    border-style: solid;
  }
</style>

<h2 class="red-text">CatPhotoApp</h2>
<main>
  <p class="red-text">Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img class="smaller-image thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <div>
    <p>Things cats love:</p>
    <ul>
      <li>catnip</li>
      <li>laser pointers</li>
      <li>lasagna</li>
    </ul>
    <p>Top 3 things cats hate:</p>
    <ol>
      <li>flea treatment</li>
      <li>thunder</li>
      <li>other cats</li>
    </ol>
  </div>

  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor" checked> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <label><input type="checkbox" name="personality" checked> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```
