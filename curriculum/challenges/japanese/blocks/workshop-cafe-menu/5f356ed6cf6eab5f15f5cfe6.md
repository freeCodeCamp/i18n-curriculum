---
id: 5f356ed6cf6eab5f15f5cfe6
title: Step 16
challengeType: 0
dashedName: step-16
---

# --description--

`div` 要素はこれまで使用してきた他のコンテンツ要素とは異なり、主にレイアウトデザイン目的で使用されます。 `body` 要素内に `div` 要素を追加し、他のすべての要素を新しい `div` の中に移動させてください。

そして `div` の開始タグには、`id` 属性と `menu` という値を追加してください。

# --hints--

`<div>` の開始タグは、`id` 属性が `menu` に設定されている必要があります。

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

終了タグ `</div>` が必要です。

```js
assert.match(code, /<\/div>/i);
```

既存の `body` 要素を変更しないでください。 終了タグを削除していないか確認してください。

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

`div` 要素は `body` 要素の中に入れる必要があります。

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

他のすべての要素を新しい `div` の中に移動させてください。

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
  <body>
--fcc-editable-region--
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
--fcc-editable-region--
  </body>
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
