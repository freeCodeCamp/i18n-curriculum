---
id: 587d781a367417b2b2512ab7
title: strong タグでテキストを太字にする
challengeType: 0
videoUrl: 'https://scrimba.com/c/ceJNBSb'
forumTopicId: 301080
dashedName: use-the-strong-tag-to-make-text-bold
---

# --description--

テキストを太字にするには `strong` タグを使用します。 これは、テキストに注目させ、重要であることを示すためによく使われます。 `strong` タグを使うと、ブラウザは CSS の `font-weight: bold;` を要素に適用します。

# --instructions--

`p` タグの中のテキスト `Stanford University` を、`strong` タグで囲みましょう (ピリオドは含まないようにしてください)。

# --hints--

コード内でマークアップに `strong` タグを 1 つ追加する必要があります。

```js
assert.lengthOf(document.querySelectorAll('strong'),1);
```

`strong` タグは `p` タグの内側にあるようにしてください。

```js
const paragraphElement = document.querySelector('p');
const paragraphChildren = paragraphElement?.querySelectorAll(`:scope ${'strong'}`);
assert.lengthOf(paragraphChildren, 1);
```

`strong` タグが `Stanford University` の語句を囲むようにしてください。

```js
assert.match(document.querySelector('strong')?.textContent, /^Stanford University\.?$/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  h4 {
    text-align: center;
    height: 25px;
  }
  p {
    text-align: justify;
  }
  .links {
    text-align: left;
    color: black;
  }
  .fullCard {
    width: 245px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 10px 5px;
    padding: 4px;
  }
  .cardContent {
    padding: 10px;
  }
  .cardText {
    margin-bottom: 30px;
  }
</style>
<div class="fullCard">
  <div class="cardContent">
    <div class="cardText">
      <h4>Google</h4>
      <p>Google was founded by Larry Page and Sergey Brin while they were Ph.D. students at Stanford University.</p>
    </div>
    <div class="cardLinks">
      <a href="https://en.wikipedia.org/wiki/Larry_Page" target="_blank" class="links">Larry Page</a><br><br>
      <a href="https://en.wikipedia.org/wiki/Sergey_Brin" target="_blank" class="links">Sergey Brin</a>
    </div>
  </div>
</div>
```

# --solutions--

```html
<style>
  h4 {
    text-align: center;
    height: 25px;
  }
  p {
    text-align: justify;
  }
  .links {
    text-align: left;
    color: black;
  }
  .fullCard {
    width: 245px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 10px 5px;
    padding: 4px;
  }
  .cardContent {
    padding: 10px;
  }
  .cardText {
    margin-bottom: 30px;
  }
</style>
<div class="fullCard">
  <div class="cardContent">
    <div class="cardText">
      <h4>Google</h4>
      <p>Google was founded by Larry Page and Sergey Brin while they were Ph.D. students at <strong>Stanford University</strong>.</p>
    </div>
    <div class="cardLinks">
      <a href="https://en.wikipedia.org/wiki/Larry_Page" target="_blank" class="links">Larry Page</a><br><br>
      <a href="https://en.wikipedia.org/wiki/Sergey_Brin" target="_blank" class="links">Sergey Brin</a>
    </div>
  </div>
</div>
```
