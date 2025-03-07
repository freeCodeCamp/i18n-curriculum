---
id: bad87fee1348bd9aedd08845
title: 在按鈕中添加字體圖標
challengeType: 0
forumTopicId: 16638
required:
  - 
    link: 'https://use.fontawesome.com/releases/v5.8.1/css/all.css'
    raw: true
dashedName: add-font-awesome-icons-to-our-buttons
---

# --description--

Font Awesome is a convenient library of icons. These icons can be webfonts or vector graphics. These icons are treated just like fonts. You can specify their size using pixels, and they will assume the font size of their parent HTML elements.

可以將 Font Awesome 圖標庫添加至任何一個 web app 中，方法很簡單，只需要在 HTML head 標籤中添加以下代碼即可：

```html
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
```

在這個挑戰中，我們已經爲你在頁面上添加好了 Font Awesome 圖標庫。

`i` 元素原本是用來表示斜體文字內容的；不過現在，用它來表示圖標也很常見。 只需要爲 `i` 元素添加相應的 class 就可以讓它展示圖標，比如：

```html
<i class="fas fa-info-circle"></i>
```

同時，我們也可以使用 `span` 元素來展示圖標。

# --instructions--

請使用 Font Awesome 來爲我們的點贊按鈕添加一個 `thumbs-up` 圖標，只需添加一個 class 包含 `fas` 和 `fa-thumbs-up` 的 `i` 元素即可。 同時，請記得保留圖標之後的文字內容 `Like`。

# --hints--

應添加一個 class 包含 `fas` 和 `fa-thumbs-up` 的 `i` 元素。

```js
assert.isTrue(document.querySelector('i')?.classList?.value === 'fas fa-thumbs-up' || document.querySelector('span')?.classList?.value === 'fas fa-thumbs-up');
```

Like 按鈕中應包含 `fa-thumbs-up` 圖標。

```js
const iconTextContent = document.querySelector('i.fa-thumbs-up')?.parentNode?.textContent;  
const spanTextContent = document.querySelector('span.fa-thumbs-up')?.parentNode?.textContent;  
assert.isTrue(
  (iconTextContent?.match(/Like/gi) &&
    document.querySelector('.btn-primary > i') === document.querySelector('.fas.fa-thumbs-up')) ||
    (spanTextContent?.match(/Like/gi) &&
      document.querySelector('.btn-primary > span') === document.querySelector('.fas.fa-thumbs-up')));
```

`i` 元素應出現在 `button` 元素內。

```js
const button = document.querySelector('button'); 
const i = button?.querySelectorAll("i");
const span =  button?.querySelectorAll("span");
assert(i.length > 0 ||span.length > 0);
```

表示圖標的元素應有閉合標籤。

```js
assert.match(code, /(<\/i>|<\/span>)\s*Like\s*<\/button>/g);
```

# --seed--

## --seed-contents--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  h2 {
    font-family: Lobster, Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }
</style>

<div class="container-fluid">
  <div class="row">
    <div class="col-xs-8">
      <h2 class="text-primary text-center">CatPhotoApp</h2>
    </div>
    <div class="col-xs-4">
      <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
    </div>
  </div>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Three kittens running towards the camera.">
  <div class="row">
    <div class="col-xs-4">
      <button class="btn btn-block btn-primary">Like</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-info">Info</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-danger">Delete</button>
    </div>
  </div>
  <p>Things cats <span class="text-danger">love:</span></p>
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
  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor"> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
    <label><input type="checkbox" name="personality"> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Crazy</label>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</div>
```

# --solutions--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  h2 {
    font-family: Lobster, Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }
</style>

<div class="container-fluid">
  <div class="row">
    <div class="col-xs-8">
      <h2 class="text-primary text-center">CatPhotoApp</h2>
    </div>
    <div class="col-xs-4">
      <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
    </div>
  </div>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Three kittens running towards the camera.">
  <div class="row">
    <div class="col-xs-4">
      <button class="btn btn-block btn-primary"><i class="fas fa-thumbs-up"></i> Like</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-info">Info</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-danger">Delete</button>
    </div>
  </div>
  <p>Things cats <span class="text-danger">love:</span></p>
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
  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor"> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
    <label><input type="checkbox" name="personality"> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Crazy</label>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</div>
```
