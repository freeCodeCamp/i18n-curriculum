---
id: 66bf6bacf178eac7b96d4f5e
title: Побудувати перемикач улюбленої іконки
challengeType: 25
dashedName: build-a-favorite-icon-toggler
demoType: onClick
---

# --description--

У цій лабораторній роботі ви використаєте JavaScript події click, щоб перемикати вигляд іконки улюбленого. Коли натискають на іконку серця, її вигляд змінюється з порожнього на заповнений і навпаки.

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історії користувача:**

1. У вас має бути невпорядкований список із трьома елементами.
2. Невпорядкований список має мати клас `item-list`.
3. Три елементи списку повинні містити назву елемента, за якою йде елемент `button` з класом `favorite-icon`.
4. Елемент `button` спочатку має містити код `&#9825;` для представлення порожнього серця.
5. Коли натискають на елемент `button`, що містить серце, потрібно додати клас із назвою `filled` до натиснутого `button`, якщо його ще немає, і видалити, якщо він є.
6. У вас має бути селектор класу, який націлений на клас `filled` і встановлює деякі CSS-властивості.
7. Коли натискають на елемент `button`, що містить серце, символ серця має перемикатися між `&#9825;` (порожнє серце) і `&#10084;` (заповнене серце) залежно від поточного стану.

**Примітка:** Обов’язково підключіть свій JavaScript файл у HTML. (Наприклад, `<script src="script.js"></script>`)

# --hints--

У вас має бути невпорядкований список.

```js
assert.exists(document.querySelector('ul'));
```

Ваш невпорядкований список має містити 3 елементи.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

Ваш невпорядкований список має мати клас `item-list`.

```js
assert.exists(document.querySelector('ul.item-list'));
```

Кожен елемент списку має містити назву елемента.

```js
assert.exists(document.querySelector('ul li').textContent);
```

Кожен елемент списку має містити елемент `button` з класом `favorite-icon`.

```js
assert.exists(document.querySelector('ul li button.favorite-icon'));
```

Спочатку елементи `button` мають містити код `&#9825;` для представлення порожнього серця.

```js
const inputs = document.querySelectorAll('ul li button.favorite-icon');
assert.isNotEmpty(inputs);

for (let input of inputs) {
  assert.strictEqual(input.innerHTML.charCodeAt(0), 9825);
}
```

У вас має бути селектор `.filled`, який встановлює деякі CSS-властивості.

```js
const filled = new __helpers.CSSHelp(document).getStyle('.filled');
assert.exists(filled); 
assert.isNotEmpty([...filled]); 
```

Коли натискають на елемент `button`, і він містить клас `filled`, потрібно видалити клас `filled` з елемента `button` і змінити innerHTML елемента `button` на `&#9825;`.

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

Коли натискають на елемент `button`, і він не містить клас `filled`, потрібно додати клас `filled` до елемента `button` і змінити `innerHTML` елемента `button` на `&#10084;`.

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
