---
id: 66bf6bacf178eac7b96d4f5e
title: お気に入りアイコンのトグルを作成する
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

このラボでは、JavaScriptのクリックイベントを使ってお気に入りアイコンの見た目を切り替えます。ハートのアイコンをクリックすると、ハートの見た目が空の状態から塗りつぶされた状態に、またその逆に変わります。

**目的:** 以下のユーザーストーリーを満たし、すべてのテストに合格してラボを完了してください。

**ユーザーストーリー:**

1. 番号なしリストが3つの項目を持っている必要があります。
2. 番号なしリストにはクラス`item-list`が付いている必要があります。
3. 3つのリスト項目には、項目名の後にクラス`button`を持つ`favorite-icon`要素が含まれている必要があります。
4. `button`要素は最初に空のハートを表すコード`&#9825;`を含んでいる必要があります。
5. ハートを含む`button`要素がクリックされたとき、クリックされた`filled`にクラス名`button`がなければ追加し、あれば削除する必要があります。
6. `filled`クラスをターゲットにしてCSSプロパティを設定するクラスセレクターが必要です。
7. ハートを含む`button`要素がクリックされたとき、現在の状態に応じてハートの記号が`&#9825;`（空のハート）と`&#10084;`（塗りつぶされたハート）で切り替わる必要があります。

**注意:** JavaScriptファイルをHTMLにリンクするのを忘れないでください。（例：`<script src="script.js"></script>`）

# --hints--

番号なしリストを用意してください。

```js
assert.exists(document.querySelector('ul'));
```

番号なしリストには3つの項目が必要です。

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

番号なしリストにはクラス`item-list`を付けてください。

```js
assert.exists(document.querySelector('ul.item-list'));
```

各リスト項目には項目名を含めてください。

```js
assert.exists(document.querySelector('ul li').textContent);
```

各リスト項目にはクラス`button`を持つ`favorite-icon`要素を含めてください。

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

最初は`button`要素に空のハートを表すコード`&#9825;`を入れてください。

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

CSSプロパティを設定する`.filled`セレクターを用意してください。

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

`button`要素がクリックされ、クラス`filled`を持っている場合は、`filled`要素からクラス`button`を削除し、`button`要素のinnerHTMLを`&#9825;`に変更してください。

```js
const buttonElements = document.querySelectorAll('.favorite-icon');
assert.isNotEmpty(buttonElements);

buttonElements.forEach(button => button.classList.add('filled'));

buttonElements.forEach(button => {
  button.dispatchEvent(new Event('click', { bubbles: true }));
  assert.isFalse(button.classList.contains('filled'));
  assert.equal(button.innerHTML.charCodeAt(0), 9825);
});
```

`button`要素がクリックされ、クラス`filled`を持っていない場合は、`filled`要素にクラス`button`を追加し、`innerHTML`要素の`button`を`&#10084;`に変更してください。

```js
const buttonElements = document.querySelectorAll('.favorite-icon');
assert.isNotEmpty(buttonElements);

buttonElements.forEach(button => button.classList.remove('filled'));

buttonElements.forEach(button => {
  button.dispatchEvent(new Event('click', { bubbles: true }));
  assert.isTrue(button.classList.contains('filled'));
  assert.equal(button.innerHTML.charCodeAt(0), 10084);
});
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Favorite Icon Toggler</title>
    <link rel="stylesheet" href="styles.css" />
  </head>

  <body>
  
  </body>
</html>
```

```css

```

```js

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Favorite Icon Toggle</title>
    <link rel="stylesheet" href="styles.css" />
  </head>

  <body>
    <h1>Art Supplies</h1>
    <ul class="item-list">
      <li>
        120 gm paper
        <button class="favorite-icon" id="favoriteIcon1">&#9825;</button>
      </li>
      <li>
        Watercolor set
        <button class="favorite-icon" id="favoriteIcon2">&#9825;</button>
      </li>
      <li>
        Lead pencil 6B
        <button class="favorite-icon" id="favoriteIcon3">&#9825;</button>
      </li>
    </ul>

    <script src="script.js"></script>
  </body>
</html>
```

```css
body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  font-family: Arial, sans-serif;
}

h1 {
  margin-bottom: 20px;
}

.item-list {
  list-style-type: none;
  padding: 0;
}

.item-list li {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  border-bottom: 1px solid #ddd;
  width: 200px;
}

.favorite-icon {
  font-size: 1.25rem;
  background-color: transparent;
  border: none;
  cursor: pointer;
}

.filled {
  color: #d22b2b;
}
```

```js
document.addEventListener("DOMContentLoaded", () => {
  const favoriteIcons = document.querySelectorAll(".favorite-icon");

  favoriteIcons.forEach(icon => {
    icon.addEventListener("click", () => {
      if (icon.classList.contains("filled")) {
        icon.classList.remove("filled");
        icon.innerHTML = "&#9825;"; // Empty heart
      } else {
        icon.classList.add("filled");
        icon.innerHTML = "&#10084;"; // Filled black heart
      }
    });
  });
});
```
