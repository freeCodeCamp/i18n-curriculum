---
id: 68ec6e8d0caee3afaaf142ef
title: ステップ 8
challengeType: 0
dashedName: step-8
---

# --description--

関連するコンテンツをグループ化するために、`div` 要素の中に複数の要素を追加できます。`class` の `card-container` を持つ要素の中に、別の `div` 要素を作成してください。この `div` は最初の本のカードを表します。

この新しい `class` 要素に `div` 属性を追加し、`class` 属性の値を `card` に設定してください。

# --hints--

`div` クラスを持つ要素の中に `card-container` 要素がネストされているはずです。

```js
assert.exists(document.querySelector('.card-container div'));
```

新しい `div` 要素には `class` 属性が必要です。

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

新しい `div` 要素には、値が `class` の `card` が必要です。

```js
assert.exists(document.querySelector('.card-container div.card'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>XYZ Bookstore Page</title>
</head>

<body>
  <h1>XYZ Bookstore</h1>
  <p>Browse our collection of amazing books!</p>
  
  <div class="card-container">
--fcc-editable-region--
    
--fcc-editable-region--
  </div>
</body>

</html>
```
