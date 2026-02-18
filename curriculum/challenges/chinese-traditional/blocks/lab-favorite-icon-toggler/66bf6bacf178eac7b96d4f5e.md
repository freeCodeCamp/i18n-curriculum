---
id: 66bf6bacf178eac7b96d4f5e
title: 建置一個收藏圖示切換器
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

在本實驗中，你將使用 JavaScript 點擊事件來切換收藏圖示的外觀。當點擊心形圖示時，心形的外觀會從空心變為實心，反之亦然。

**目標：** 完成以下使用者故事並通過所有測試以完成實驗。

**使用者故事：**

1. 你應該有一個包含三個項目的無序列表。
2. 無序列表應該有類別 `item-list`。
3. 這三個列表項目應包含項目名稱，後面接一個帶有類別 `favorite-icon` 的 `button` 元素。
4. `button` 元素應該最初包含程式碼 `&#9825;` 以表述空心愛心。
5. 當包含愛心的 `button` 元素被點擊時，如果點擊的 `button` 尚未有名為 `filled` 的類別，你應該為你的 `button` 添加該類別；如果已有，則將其移除。
6. 你應該有一個類別選擇器，標的為 `filled` 類別並設定一些 CSS 屬性。
7. 當包含愛心的 `button` 元素被點擊時，愛心符號應根據其當前狀態在 `&#9825;`（空心愛心）和 `&#10084;`（實心愛心）之間切換。

**注意：** 請務必在你的 HTML 中連結你的 JavaScript 檔案。（例如 `<script src="script.js"></script>`）

# --hints--

你應該有一個無序列表。

```js
assert.exists(document.querySelector('ul'));
```

你的無序列表應該有 3 項目。

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

你的無序列表應該有 `item-list` 類別。

```js
assert.exists(document.querySelector('ul.item-list'));
```

你的個別列表項目應包含該項目的名稱。

```js
assert.exists(document.querySelector('ul li').textContent);
```

你的個別列表項目應包含一個帶有類別 `favorite-icon` 的 `button` 元素。

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

最初，`button` 元素應該包含程式碼 `&#9825;` 來表述空心愛心。

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

你應該有一個 `.filled` 選擇器來設定一些 CSS 屬性。

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

當 `button` 元素被點擊，且它包含類別 `filled` 時，你應該從 `button` 元素中移除類別 `filled`，並將 `button` 元素的 innerHTML 更改為 `&#9825;`。

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

當點擊 `button` 元素，且它不包含類別 `filled` 時，你應該為你的 `button` 元素添加類別 `filled`，並將 `button` 元素的 `innerHTML` 更改為 `&#10084;`。

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
