---
id: bd7158d8c442eddfaeb5bd18
title: Побудувати пам’ятну сторінку
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301147
dashedName: build-a-tribute-page
---

# --description--

**Мета:** Побудувати застосунок, який функціонально схожий на <a href="https://tribute-page.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://tribute-page.freecodecamp.rocks</a>. **Не копіюйте цей демонстраційний проєкт**.

**Історія користувача:**

1. Ваша пам’ятна сторінка повинна мати `main` елемент із відповідним `id` типу `main`, який містить усі інші елементи
1. Ви повинні бачити елемент із `id` типу `title`, який містить рядок (текст), що описує тему пам’ятної сторінки (наприклад, "Dr. Norman Borlaug")
1. Ви повинні бачити або `figure`, або `div` елемент із `id` типу `img-div`
1. Всередині `#img-div` елемента ви повинні бачити `img` елемент із відповідним `id="image"`
1. Всередині `#img-div` елемента ви повинні бачити елемент із відповідним `id="img-caption"`, який містить текстовий вміст, що описує зображення, показане в `#img-div`
1. Ви повинні бачити елемент із відповідним `id="tribute-info"`, який містить текстовий вміст, що описує тему пам’ятної сторінки
1. Ви повинні бачити `a` елемент із відповідним `id="tribute-link"`, який посилається на зовнішній сайт і містить додаткову інформацію про тему пам’ятної сторінки. ПІДКАЗКА: Ви повинні додати атрибут `target` зі значенням `_blank`, щоб ваше посилання відкривалося в новій вкладці
1. Ваш `#image` повинен використовувати властивості `max-width` і `height` для адаптивного масштабування відносно ширини батьківського елемента, не перевищуючи свого початкового розміру
1. Ваш `img` елемент повинен бути центрований всередині свого батьківського елемента

Виконайте історії користувача та пройдіть усі тести нижче, щоб завершити цей проєкт. Додайте свій особистий стиль. Успішного кодування!

**Примітка:** Обов’язково додайте `<link rel="stylesheet" href="styles.css">` у ваш HTML, щоб направити на ваш файл стилів і застосувати CSS

# --hints--

Ви повинні мати `main` елемент із `id` типу `main`.

```js
const el = document.getElementById('main');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'MAIN');
```

Ваші `#img-div`, `#image`, `#img-caption`, `#tribute-info` і `#tribute-link` повинні бути нащадками `#main`.

```js
const el1 = document.querySelector('#main #img-div');
const el2 = document.querySelector('#main #image');
const el3 = document.querySelector('#main #img-caption');
const el4 = document.querySelector('#main #tribute-info');
const el5 = document.querySelector('#main #tribute-link');
assert.isNotNull(el1);
assert.isNotNull(el2);
assert.isNotNull(el3);
assert.isNotNull(el4);
assert.isNotNull(el5);
```

Ви повинні мати елемент із `id` типу `title`.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
```

Ваш `#title` не повинен бути порожнім.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText.trim());
```

Ви повинні мати `figure` або `div` елемент із `id` типу `img-div`.

```js
const el = document.getElementById('img-div');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGURE');
```

Ви повинні мати `img` елемент із `id` типу `image`.

```js
const el = document.getElementById('image');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'IMG');
```

Ваш `#image` повинен бути нащадком `#img-div`.

```js
const el = document.querySelector('#img-div #image');
assert.isNotNull(el);
```

Ви повинні мати `figcaption` або `div` елемент із `id` типу `img-caption`.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'DIV' || el.tagName === 'FIGCAPTION');
```

Ваш `#img-caption` повинен бути нащадком `#img-div`.

```js
const el = document.querySelector('#img-div #img-caption');
assert.isNotNull(el);
```

Ваш `#img-caption` не повинен бути порожнім.

```js
const el = document.getElementById('img-caption');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Ви повинні мати елемент із `id` типу `tribute-info`.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
```

Ваш `#tribute-info` не повинен бути порожнім.

```js
const el = document.getElementById('tribute-info');
assert.isNotNull(el);
assert.isNotEmpty(el.innerText);
```

Ви повинні мати `a` елемент із `id` типу `tribute-link`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

Ваш `#tribute-link` повинен мати атрибут `href` зі значенням.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.isNotNull(el.href);
assert.isNotEmpty(el.href);
```

Ваш `#tribute-link` повинен мати атрибут `target`, встановлений у `_blank`.

```js
const el = document.getElementById('tribute-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

Ваш `img` елемент повинен мати `display` типу `block`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('display');
assert.strictEqual(style, 'block');
```

Ваш `#image` повинен мати `max-width` типу `100%`.

```js
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const style = imgStyle?.getPropertyValue('max-width');
assert.strictEqual(style, '100%');
```

Ваш `#image` повинен мати `height` типу `auto`.

```js
// taken from the testable-projects repo
const img = document.getElementById('image');
const imgStyle = window.getComputedStyle(img);
const oldDisplayValue = imgStyle.getPropertyValue('display');
const oldDisplayPriority = imgStyle.getPropertyPriority('display');
img?.style.setProperty('display', 'none', 'important');
const heightValue = imgStyle?.getPropertyValue('height');
img?.style.setProperty('display', oldDisplayValue, oldDisplayPriority);
assert.strictEqual(heightValue, 'auto');
```

Ваш `#image` повинен бути центрований всередині свого батьківського елемента.

```js
// taken from the testable-projects repo
const img = document.getElementById('image'),
  imgParent = img?.parentElement,
  imgLeft = img?.getBoundingClientRect().left,
  imgRight = img?.getBoundingClientRect().right,
  parentLeft = imgParent?.getBoundingClientRect().left,
  parentRight = imgParent?.getBoundingClientRect().right,
  leftMargin = imgLeft - parentLeft,
  rightMargin = parentRight - imgRight;
assert.isBelow(leftMargin - rightMargin, 6);
assert.isBelow(rightMargin - leftMargin, 6);
```

# --seed--

## --seed-contents--

```html

```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://fonts.googleapis.com/css?family=Pacifico"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Lobster"
      rel="stylesheet"
    />
    <link href="styles.css" rel="stylesheet" />
    <title>Tribute Page</title>
  </head>
  <body>
    <h1>Tribute Page</h1>
    <p>The below card was designed as a tribute page for freeCodeCamp.</p>
    <main id="main">
      <div id="img-div">
        <img
          id="image"
          class="border"
          src="https://upload.wikimedia.org/wikipedia/en/5/53/Pok%C3%A9mon_Togepi_art.png"
          alt="An image of Togepi"
        />
        <figcaption id="img-caption">Togepi, happy as always.</figcaption>
      </div>
      <h2 id="title">Togepi</h2>
      <hr />
      <div id="tribute-info">
        <p>
          Togepi was first discovered in the Johto region, when Ash Ketchum
          discovered a mysterious egg. However, when the egg hatched, Togepi saw
          Ash's friend Misty first and imprinted on her. Like many other
          creatures, this imprinting process created a bond and Togepi views
          Misty as his mother.
        </p>
        <p>
          Togepi is a very childlike Pokemon, and is very emotionally
          expressive. He demonstrates extreme levels of joy and sadness.
        </p>
        <hr />
        <p><u>Battle Information</u></p>
        <ul style="list-style-type: none">
          <li>Type: Fairy</li>
          <li>Evolutions: Togepi -> Togetic -> Togekiss</li>
          <li>Moves: Growl, Pound, Sweet Kiss, Charm</li>
          <li>Weaknesses: Poison, Steel</li>
          <li>Resistances: Dragon</li>
        </ul>
        <p>
          Check out this
          <a
            id="tribute-link"
            href="https://bulbapedia.bulbagarden.net/wiki/Togepi_(Pok%C3%A9mon)"
            target="_blank"
            rel="noopener noreferrer"
            >Bulbapedia article on Togepi</a
          >
          for more information on this great Pokemon.
        </p>
      </div>
    </main>
  </body>
  <footer>
    <a href="../">Return to Project List</a> |
    <a href="https://www.nhcarrigan.com">Return to HomePage</a>
  </footer>
</html>
```

```css
body {
  background-color: #3a3240;
  color: white;
}
main {
  background-color: #92869c;
  font-family: Lobster;
  max-width: 500px;
  margin: 20px auto;
  color: black;
  border-radius: 50px;
  box-shadow: 10px 10px rgba(0, 0, 0, 0.5);
}
h2 {
  text-align: center;
  font-size: 20pt;
  font-family: Pacifico;
}
body {
  text-align: center;
  font-size: 12pt;
}
footer {
  text-align: center;
  font-size: 10pt;
}
.border {
  border-color: black;
  border-width: 5px;
  border-style: solid;
}
#image {
  height: auto;
  display: block;
  margin: auto;
  max-width: 100%;
  border-radius: 50%;
}
#img-caption {
  font-size: 10pt;
}
a:not(#tribute-link) {
  color: white;
}
hr {
  border-color: black;
}
```
