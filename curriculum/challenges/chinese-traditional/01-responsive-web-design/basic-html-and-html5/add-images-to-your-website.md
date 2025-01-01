---
id: bad87fee1348bd9aedf08812
title: 給網站添加圖片
challengeType: 0
forumTopicId: 16640
dashedName: add-images-to-your-website
---

# --description--

You can add images to your website by using the `img` element, and point to a specific image's URL using the `src` attribute.

例如：

```html
<img src="https://www.freecatphotoapp.com/your-image.jpg">
```

Note that `img` is a void element.

所有的 `img` 元素 **必須** 有 `alt` 屬性。 `alt` 的屬性值有兩個作用，第一個作用是讓屏幕閱讀器可以知曉圖片的內容，這會對網頁的可訪問性有很大提升；另一個作用是當圖片無法加載時，頁面需要顯示的替代文本。

**注意：** 如果圖片是純裝飾性的，把 `alt` 的屬性值設置爲空是最佳實踐。

理想情況下，`alt` 屬性不應該包含特殊字符，除非有特殊需要。

讓我們給上面例子的 `img` 添加 `alt` 屬性。

```html
<img src="https://www.freecatphotoapp.com/your-image.jpg" alt="freeCodeCamp logo">
```

# --instructions--

讓我們給網站添加圖片：

在 `main` 元素裏，給 `p` 元素前面插入一個 `img` 元素。

現在設置 `src` 屬性，使其指向 url `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`

最後，不要忘記給 `img` 加上 `alt` 屬性。

# --hints--

你的網頁上應該有一張圖片。

```js
assert.exists(document.querySelector('img'));
```

你的圖片應該有一個 `src` 屬性，其值爲貓咪圖片的 url。

```js
const url = document.querySelector('img').getAttribute('src');
assert.match(url,/^https:\/\/cdn\.freecodecamp\.org\/curriculum\/cat-photo-app\/relaxing-cat\.jpg$/i);
```

你的圖片元素的 `alt` 屬性值不應爲空。

```js
assert.exists(document.querySelector('img').getAttribute('alt'));
assert.isNotEmpty(document.querySelector('img').getAttribute('alt'));
assert.match(__helpers.removeWhiteSpace(code),/<(?:img|IMG)\S*alt=(['"])(?!\1|>)\S+\1\S*\/?>/)
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>


  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
