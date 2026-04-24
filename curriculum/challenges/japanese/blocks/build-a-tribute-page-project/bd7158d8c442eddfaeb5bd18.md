---
id: bd7158d8c442eddfaeb5bd18
title: トリビュートページを作成する
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301147
dashedName: build-a-tribute-page
---

# --description--

**目的:** <a href="https://tribute-page.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://tribute-page.freecodecamp.rocks</a> と機能的に似たアプリを作成してください。**このデモプロジェクトをコピーしないでください**。

**ユーザーストーリー:**

1. トリビュートページには、対応する `main` が `id` の `main` 要素があり、他のすべての要素を含んでいる必要があります
1. `id` が `title` の要素があり、その中にトリビュートページの対象を説明する文字列（例："Dr. Norman Borlaug"）が含まれている必要があります
1. `figure` または `div` の要素があり、`id` が `img-div` である必要があります
1. `#img-div` 要素の中に、対応する `img` を持つ `id="image"` 要素がある必要があります
1. `#img-div` 要素の中に、`id="img-caption"` に表示されている画像を説明するテキストコンテンツを含む対応する `#img-div` の要素がある必要があります
1. トリビュートページの対象を説明するテキストコンテンツを含む対応する `id="tribute-info"` の要素がある必要があります
1. トリビュートページの対象に関する追加情報を含む外部サイトにリンクする対応する `a` を持つ `id="tribute-link"` 要素がある必要があります。ヒント：リンクを新しいタブで開くには、`target` 属性を `_blank` に設定してください
1. `#image` は、親要素の幅に対してレスポンシブにサイズ変更できるように `max-width` と `height` プロパティを使い、元のサイズを超えないようにしてください
1. `img` 要素は親要素の中央に配置されている必要があります

ユーザーストーリーを満たし、以下のすべてのテストに合格してこのプロジェクトを完成させてください。自分のスタイルを加えてください。楽しいコーディングを！

**注意:** CSSを適用するために、HTMLに `<link rel="stylesheet" href="styles.css">` を追加してスタイルシートをリンクしてください

# --hints--

`main` 要素が `id` の `main` を持っている必要があります。

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

`#img-div`、`#image`、`#img-caption`、`#tribute-info`、`#tribute-link` はすべて `#main` の子孫要素である必要があります。

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

`id` が `title` の要素が必要です。

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

`#title` は空であってはいけません。

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

`figure` または `div` の要素が `id` の `img-div` を持っている必要があります。

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

`img` 要素が `id` の `image` を持っている必要があります。

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

`#image` は `#img-div` の子孫要素である必要があります。

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

`figcaption` または `div` の要素が `id` の `img-caption` を持っている必要があります。

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

`#img-caption` は `#img-div` の子孫要素である必要があります。

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

`#img-caption` は空であってはいけません。

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

`id` の `tribute-info` を持つ要素が必要です。

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

`#tribute-info` は空であってはいけません。

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

`a` 要素が `id` の `tribute-link` を持っている必要があります。

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

`#tribute-link` は `href` 属性と値を持っている必要があります。

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

`#tribute-link` は `target` 属性を `_blank` に設定している必要があります。

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

`img` 要素が `display` の `block` を持っている必要があります。

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

`#image` は `max-width` の `100%` を持っている必要があります。

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

`#image` は `height` の `auto` を持っている必要があります。

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

`#image` は親要素の中央に配置されている必要があります。

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
