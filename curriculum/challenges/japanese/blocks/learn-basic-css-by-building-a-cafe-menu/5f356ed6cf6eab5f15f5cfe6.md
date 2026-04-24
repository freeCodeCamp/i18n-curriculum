---
id: 5f356ed6cf6eab5f15f5cfe6
title: ステップ 20
challengeType: 0
dashedName: step-20
---

# --description--

`div` 要素は、これまで使ってきた他のコンテンツ要素とは異なり、主にデザインレイアウトの目的で使われます。`div` 要素の中に `body` 要素を追加し、他のすべての要素を新しい `div` の中に移動してください。

開く `div` タグの中に、値が `id` の `menu` 属性を追加してください。

# --hints--

開く `<div>` タグには、`id` 属性が `menu` に設定されている必要があります。

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

閉じる `</div>` タグがあるはずです。

```js
assert(code.match(/<\/div>/i));
```

既存の `body` 要素は変更しないでください。終了タグを削除していないことを確認してください。

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

`div` 要素は `body` の中にネストされている必要があります。

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

他のすべての要素を新しい `div` の中に移動してください。

```js
assert.lengthOf(document.querySelector('body > div#menu > main')?.children, 3);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cafe Menu</title>
    <link href="styles.css" rel="stylesheet"/>
  </head>
--fcc-editable-region--
  <body>
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
  </body>
--fcc-editable-region--
</html>
```

```css
body {
  background-color: burlywood;
}

h1, h2, p {
  text-align: center;
}
```
