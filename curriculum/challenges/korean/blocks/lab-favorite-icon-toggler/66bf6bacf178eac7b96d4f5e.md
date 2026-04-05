---
id: 66bf6bacf178eac7b96d4f5e
title: 즐겨찾기 아이콘 토글 만들기
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

이 실습에서는 JavaScript 클릭 이벤트를 사용해 즐겨찾기 아이콘의 모양을 토글합니다. 하트 아이콘을 클릭하면 하트 모양이 빈 하트에서 채워진 하트로, 또는 그 반대로 바뀝니다.

**목표:** 아래 사용자 스토리를 모두 충족하고 모든 테스트를 통과해 실습을 완료하세요.

**사용자 스토리:**

1. 순서 없는 목록에 항목 3개가 있어야 합니다.
2. 순서 없는 목록에는 `item-list` 클래스를 지정해야 합니다.
3. 세 개의 목록 항목에는 항목 이름과 함께 `button` 요소가 `favorite-icon` 클래스를 가져야 합니다.
4. `button` 요소는 처음에 빈 하트를 나타내기 위해 `&#9825;` 코드를 포함해야 합니다.
5. 하트를 포함한 `button` 요소를 클릭하면, 클릭된 `filled`에 `button`라는 클래스가 없으면 추가하고, 있으면 제거해야 합니다.
6. `filled` 클래스를 대상으로 하는 클래스 선택자가 있어 CSS 속성을 설정해야 합니다.
7. 하트를 포함한 `button` 요소를 클릭하면, 현재 상태에 따라 하트 기호가 `&#9825;` (빈 하트)와 `&#10084;` (채워진 하트) 사이에서 토글되어야 합니다.

**참고:** JavaScript 파일을 HTML에 반드시 연결하세요. (예: `<script src="script.js"></script>`)

# --hints--

순서 없는 목록이 있어야 합니다.

```js
assert.exists(document.querySelector('ul'));
```

순서 없는 목록에는 3개의 항목이 있어야 합니다.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

순서 없는 목록에는 `item-list` 클래스가 있어야 합니다.

```js
assert.exists(document.querySelector('ul.item-list'));
```

각 목록 항목에는 항목 이름이 포함되어야 합니다.

```js
assert.exists(document.querySelector('ul li').textContent);
```

각 목록 항목에는 `button` 요소가 `favorite-icon` 클래스를 가져야 합니다.

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

처음에는 `button` 요소가 빈 하트를 나타내기 위해 `&#9825;` 코드를 포함해야 합니다.

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

`.filled` 선택자가 있어 CSS 속성을 설정해야 합니다.

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

`button` 요소를 클릭했을 때 `filled` 클래스를 포함하면 `filled` 요소에서 `button` 클래스를 제거하고 `button` 요소의 innerHTML을 `&#9825;`로 바꿔야 합니다.

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

`button` 요소를 클릭했을 때 `filled` 클래스를 포함하지 않으면 `filled` 요소에 `button` 클래스를 추가하고 `innerHTML` 요소의 `button`를 `&#10084;`로 바꿔야 합니다.

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
