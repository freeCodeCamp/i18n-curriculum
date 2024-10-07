---
id: 587d781e367417b2b2512acb
title: 絶対位置指定で要素を親要素に固定する
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLJ7c3'
forumTopicId: 301060
dashedName: lock-an-element-to-its-parent-with-absolute-positioning
---

# --description--

The next option for the CSS `position` property is `absolute`, which locks the element in place relative to its parent container. Unlike the `relative` position, this removes the element from the normal flow of the document, so surrounding items ignore it. The CSS offset properties (top or bottom and left or right) are used to adjust the position.

絶対位置指定の注意点の一つは、最も近い *position 指定がされている* 祖先要素に対して固定されることです。 親となる項目に position ルールを追加する (一般的に `position: relative;` が使われます) ことをもし忘れると、ブラウザは一連の要素を辿って探し続け、最終的には `body` タグがデフォルトとして使われます。

# --instructions--

`#searchbar` 要素の `position` を `absolute` と宣言して、親の `section` の右上に固定してください。 `top` と `right` にそれぞれ 50 ピクセルのオフセットを設定してください。

# --hints--

`#searchbar` 要素の `position` を `absolute` に設定してください。

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.position, 'absolute');
```

50 ピクセルの `top` CSS オフセットを `#searchbar` 要素に使用する必要があります。

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.top, '50px');
```

50 ピクセルの `right` CSS オフセットを `#searchbar` 要素に使用する必要があります。

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.right, '50px');
```

# --seed--

## --seed-contents--

```html
<style>
  #searchbar {



  }
  section {
    position: relative;
  }
</style>
<body>
  <h1>Welcome!</h1>
  <section>
    <form id="searchbar">
      <label for="search">Search:</label>
      <input type="search" id="search" name="search">
      <input type="submit" name="submit" value="Go!">
    </form>
  </section>
</body>
```

# --solutions--

```html
<style>
  #searchbar {
    position: absolute;
    top: 50px;
    right: 50px;
  }
  section {
    position: relative;
  }
</style>
<body>
  <h1>Welcome!</h1>
  <section>
    <form id="searchbar">
      <label for="search">Search:</label>
      <input type="search" id="search" name="search">
      <input type="submit" name="submit" value="Go!">
    </form>
  </section>
</body>
```
