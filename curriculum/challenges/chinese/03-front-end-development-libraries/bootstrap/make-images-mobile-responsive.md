---
id: bad87fee1348bd9acde08812
title: 使图片自适应移动端
challengeType: 0
forumTopicId: 18232
dashedName: make-images-mobile-responsive
---

# --description--

First, add a new image below the existing one. Set its `src` attribute to `https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg`.

如果图片的大小恰恰和我们手机屏幕尺寸大小一样自然是最好的。

幸运的是，现在通过 Bootstrap，我们仅仅只需要为 image 标签上设置 class 属性为 `img-responsive` ， 就可以让它完美地适应你的页面的宽度了。

# --hints--

该页面共有两张图片。

```js
assert.lengthOf(document.querySelectorAll('img'), 2);
```

新的图片应该在旧的图片下面并且有值包含 `img-responsive` 的 class 属性。

```js
assert.isTrue(document.querySelectorAll('img')?.[1]?.classList?.contains('img-responsive'));
```

新图片的 class 不应该包含 `smaller-image`。

```js
assert.isFalse(document.querySelectorAll('img')?.[1]?.classList?.contains('smaller-image'));
```

新图片应该有一个值为 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg` 的 `src` 属性。

```js
assert.equal(document.querySelectorAll('img')?.[1]?.getAttribute('src') , 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg');
```

确保新的 `img` 元素有一个闭合的尖括号。

```js
assert.match(code,/<img/g);
assert.lengthOf(code.match(/<img[^<]*>/g), 2);
assert.lengthOf(code.match(/<img/g), 2);
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
    font-family: Lobster, Monospace;
  }

  p {
    font-size: 16px;
    font-family: Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }

  .smaller-image {
    width: 100px;
  }
</style>

<div class="container-fluid">
  <h2 class="red-text">CatPhotoApp</h2>

  <p>Click here for <a href="#">cat photos</a>.</p>

  <a href="#"><img class="smaller-image thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

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
  .red-text {
    color: red;
  }

  h2 {
    font-family: Lobster, Monospace;
  }

  p {
    font-size: 16px;
    font-family: Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }

  .smaller-image {
    width: 100px;
  }
</style>

<div class="container-fluid">
  <h2 class="red-text">CatPhotoApp</h2>

  <p>Click here for <a href="#">cat photos</a>.</p>

  <a href="#"><img class="smaller-image thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive">

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
