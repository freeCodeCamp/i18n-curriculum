---
id: 66bf6bacf178eac7b96d4f5e
title: 构建一个收藏图标切换器
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

在本实验中，你将使用 JavaScript 点击事件来切换收藏图标的外观。当点击心形图标时，心形的外观会从空心变为实心，反之亦然。

**目标：**实现以下用户需求并通过所有测试以完成实验。

**用户故事：**

1. 你应该有一个包含三项的无序列表。
2. 无序列表应具有类 `item-list`。
3. 这三个列表项应包含项名称，后跟带有类 `favorite-icon` 的 `button` 元素。
4. `button` 元素应最初包含代码 `&#9825;` 以表现一个空心爱心。
5. 当点击包含心形的 `button` 元素时，如果被点击的 `button` 上尚未存在名为 `filled` 的类，则你应该为它添加该类；如果已存在，则应将其移除。
6. 你应该有一个类选择器，目标为 `filled` 类并设置一些 CSS 属性。
7. 当包含心形的 `button` 元素被点击时，心形符号应根据其当前状态在 `&#9825;`（空心）和 `&#10084;`（实心）之间切换。

**注意：** 请确保在你的超文本标记语言中链接你的 JavaScript 文件。（例如 `<script src="script.js"></script>`）

# --hints--

你应该有一个无序列表。

```js
assert.exists(document.querySelector('ul'));
```

你的无序列表应有 3 项。

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

你的无序列表应具有 `item-list` 类。

```js
assert.exists(document.querySelector('ul.item-list'));
```

你的各个列表项应包含该项名称。

```js
assert.exists(document.querySelector('ul li').textContent);
```

你的单个列表项应包含一个带有类 `favorite-icon` 的 `button` 元素。

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

最初，`button` 元素应包含代码 `&#9825;` 来表现一个空心爱心。

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

你应该有一个 `.filled` 选择器来设置一些 CSS 属性。

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

当点击 `button` 元素且它包含 `filled` 类时，你应该从 `button` 元素中移除 `filled` 类，并将 `button` 元素的 innerHTML 更改为 `&#9825;`。

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

当点击 `button` 元素且它不包含 `filled` 类时，你应该为 `button` 元素添加 `filled` 类并将 `button` 元素的 `innerHTML` 更改为 `&#10084;`。

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
