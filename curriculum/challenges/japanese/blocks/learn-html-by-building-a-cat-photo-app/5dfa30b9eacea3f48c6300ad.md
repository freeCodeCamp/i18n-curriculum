---
id: 5dfa30b9eacea3f48c6300ad
title: ステップ 17
challengeType: 0
dashedName: step-17
---

# --description--

前のステップでは、テキストをリンクにするためにアンカー要素を使いました。ほかの種類のコンテンツも、アンカータグで囲むことでリンクにできます。

ここでは画像をリンクにする例を示します。

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

画像を必要な要素タグで囲んでリンクにしてください。アンカーの`https://freecatphotoapp.com`属性の値には`href`を使います。

# --hints--

`img`要素があり、その`src`の値が`https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`である必要があります。誤って削除しているかもしれません。

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

アンカー（`a`）要素には開始タグが必要です。開始タグの構文は`<elementName>`です。

```js
assert(document.querySelectorAll('a').length >= 2);
```

画像の後に終了（`a`）タグがありません。

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

アンカー（`a`）要素には終了タグが必要です。終了タグは`/`文字の直後に`<`があります。

```js
assert(code.match(/<\/a>/g).length >= 2);
```

終了アンカー（`a`）タグは1つだけ追加してください。余分なものは削除してください。

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

アンカー（`a`）要素に`href`属性がありません。開始タグの名前の後にスペースがあるか、すべての属性名の前にスペースがあるか確認してください。

```js
assert(document.querySelector('a').hasAttribute('href'));
```

アンカー（`a`）要素は`https://freecatphotoapp.com`にリンクする必要があります。URLを省略しているか、タイプミスがあります。

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

アンカー（`a`）要素に`href`属性がありません。開始タグの名前の後にスペースがあるか、すべての属性名の前にスペースがあるか確認してください。

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

アンカー（`a`）要素は`https://freecatphotoapp.com`にリンクする必要があります。URLを省略しているか、タイプミスがあります。

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

`img`要素はアンカー（`a`）要素の中にネストされている必要があります。`img`要素全体がアンカー（`a`）要素の開始タグと終了タグの間にある必要があります。

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```
