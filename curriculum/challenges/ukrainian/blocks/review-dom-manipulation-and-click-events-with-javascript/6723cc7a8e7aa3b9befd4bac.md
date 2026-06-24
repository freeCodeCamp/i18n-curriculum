---
id: 6723cc7a8e7aa3b9befd4bac
title: Огляд маніпуляцій DOM і подій кліку з JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## Робота з DOM і веб-API

- **API**: API (інтерфейс програмування застосунків) — це набір правил і протоколів, які дозволяють програмним застосункам ефективно взаємодіяти між собою та обмінюватися даними.
- **Веб-API**: веб-API спеціально розроблені для вебзастосунків. Ці типи API часто поділяють на дві основні категорії: API браузера та сторонні API.
- **API браузера**: ці API відкривають доступ до даних браузера. Як веброзробник, ви можете отримувати доступ до цих даних і маніпулювати ними за допомогою JavaScript.
- **Сторонні API**: вони не вбудовані в браузер за замовчуванням. Вам потрібно отримати їхній код якимось чином. Зазвичай вони мають детальну документацію, яка пояснює, як користуватися їхніми сервісами. Прикладом є Google Maps API, який можна використати для відображення інтерактивних карт на сайті.
- **DOM**: DOM означає Document Object Model (укр. модель об’єктів документа). Це інтерфейс програмування, який дозволяє взаємодіяти з HTML-документами. За допомогою DOM ви можете додавати, змінювати або видаляти елементи на вебсторінці. Коренем дерева DOM є елемент `html`. Це контейнер найвищого рівня для всього вмісту HTML-документа. Всі інші вузли є нащадками цього кореневого вузла. Далі, під кореневим вузлом, знаходяться інші вузли в ієрархії. Батьківський вузол — це елемент, який містить інші елементи. Дочірній вузол — це елемент, який міститься в іншому елементі.
- **Інтерфейс `navigator`**: він надає інформацію про середовище браузера, таку як рядок user agent, платформу та версію браузера. Рядок user agent — це текстовий рядок, який ідентифікує браузер і операційну систему, які використовуються.
- **Інтерфейс `window`**: він представляє вікно браузера, яке містить документ DOM. Він надає методи та властивості для взаємодії з вікном браузера (наприклад, зміни розміру вікна, відкриття нових вікон і навігації за різними посиланнями).

## Робота з методами `querySelector()`, `querySelectorAll()` та `getElementById()`

- **Метод `getElementById()`**: цей метод використовується, щоб отримати об’єкт, який представляє HTML-елемент із заданим `id`. Пам’ятайте, що ідентифікатори мають бути унікальними в кожному HTML-документі, тому цей метод поверне лише один об’єкт Element.

:::interactive_editor

```html
<div id="container"></div>
<script src="./index.js"></script>
```

```js
const container = document.getElementById("container");
console.log(container)
```

:::

- **Метод `querySelector()`**: цей метод використовується, щоб отримати перший елемент у HTML-документі, який відповідає CSS-селектору, переданому як аргумент.

:::interactive_editor

```html
<section class="section"></section>
<script src="./index.js"></script>
```

```js
const section = document.querySelector(".section");
console.log(section)
```

:::

- **Метод `querySelectorAll()`**: ви можете використати цей метод, щоб отримати список усіх DOM-елементів, які відповідають певному CSS-селектору.

:::interactive_editor

```html
<ul class="ingredients">
  <li>Sugar</li>
  <li>Milk</li>
  <li>Eggs</li>
</ul>
<script src="./index.js"></script>
```

```js
const ingredients = document.querySelectorAll('ul.ingredients li');
console.log(ingredients)
```

:::

## Робота з методами `innerText()`, `innerHTML()`, `createElement()` та `textContent()`

- **Властивість `innerHTML`**: це властивість `Element`, яка використовується для встановлення або оновлення частин HTML-розмітки.

:::interactive_editor

```html
<div id="container">
  <!-- Add new elements here -->
</div>
<script src="./index.js"></script>
```

```js
const container = document.getElementById("container");
container.innerHTML = '<ul><li>Cheese</li><li>Tomato</li></ul>';
```

:::

- **Метод `createElement`**: використовується для створення HTML-елемента.

```js
const img = document.createElement("img");
```

- **`innerText`**: це представляє видимий текстовий вміст HTML-елемента та його нащадків.

:::interactive_editor

```html
<div id="container">
  <p>Hello, World!</p>
  <p>I'm learning JavaScript</p>
</div>
<script src="./index.js"></script>
```

```js
const container = document.getElementById("container");
console.log(container.innerText);
```

:::

- **`textContent`**: повертає простий текстовий вміст елемента, включно з усім текстом у його нащадках.

:::interactive_editor

```html
<div id="container">
  <p>Hello, World!</p>
  <p>I'm learning JavaScript</p>
</div>
<script src="./index.js"></script>
```

```js
const container = document.getElementById("container");
console.log(container.textContent);
```

:::

## Робота з методами `appendChild()` та `removeChild()`

- **Метод `appendChild()`**: цей метод використовується, щоб додати вузол у кінець списку дочірніх елементів вказаного батьківського вузла.

:::interactive_editor

```html
<ul id="desserts">
  <li>Cake</li>
  <li>Pie</li>
</ul>
<script src="./index.js"></script>
```

```js
const dessertsList = document.getElementById("desserts");
const listItem = document.createElement("li");

listItem.textContent = "Cookies";
dessertsList.appendChild(listItem);
```

:::

- **Метод `removeChild()`**: цей метод використовується, щоб видалити вузол з DOM.

:::interactive_editor

```html
<section id="example-section">
  <h2>Example sub heading</h2>
  <p>first paragraph</p>
  <p>second paragraph</p>
</section>
<script src="./index.js"></script>
```

```js
const sectionEl = document.getElementById("example-section");
const lastParagraph = document.querySelector("#example-section p:last-of-type");

sectionEl.removeChild(lastParagraph);
```

:::

## Робота з методом `setAttribute()`

- **Визначення**: цей метод використовується, щоб встановити атрибут для заданого елемента. Якщо атрибут уже існує, тоді його значення оновлюється. Інакше додається новий атрибут зі значенням.

:::interactive_editor

```html
<p id="para">I am a paragraph</p>
<script src="./index.js"></script>
```

```js
const para = document.getElementById("para");
para.setAttribute("class", "my-class");
```

:::

## Об’єкт події

- **Визначення**: об’єкт `Event` — це корисне навантаження, яке спрацьовує, коли користувач взаємодіє з вебсторінкою певним чином. Ці взаємодії можуть бути будь-якими: від натискання на кнопку або фокусу на вхідних даних до трясіння мобільного пристрою. Усі об’єкти `Event` матимуть властивість `type`. Ця властивість показує тип події, яка спричинила корисне навантаження (наприклад, keydown або click). Ці значення відповідатимуть тим самим значенням, які ви можете передати до `addEventListener()`, де можна захопити й використати об’єкт `Event`.

## Методи `addEventListener()` і `removeEventListener()`

- **Метод `addEventListener`**: цей метод використовується для прослуховування подій. Він приймає два аргументи: подію, яку ви хочете відстежувати, і функцію, яка буде викликана, коли ця подія станеться. Поширеними прикладами подій є події натискання, введення та зміни.

:::interactive_editor

```html
<button id="btn">Click Me</button>
<script src="./index.js"></script>
```

```js
const btn = document.getElementById("btn");

btn.addEventListener("click", () => alert("You clicked the button"));
```

:::

- **Метод `removeEventListener()`**: цей метод використовується для видалення обробника події, який раніше було додано до елемента за допомогою методу `addEventListener()`. Це корисно, коли ви хочете припинити прослуховування певної події на елементі.

:::interactive_editor

```html
<body>
  <p id="para">Hover over me to disable the button's click event</p>
  <button id="btn">Toggle Background Color</button>
</body>
<script src="./index.js"></script>
```

```js
const bodyEl = document.querySelector("body");
const para = document.getElementById("para");
const btn = document.getElementById("btn");

let isBgColorGrey = true;

function toggleBgColor() {
  bodyEl.style.backgroundColor = isBgColorGrey ? "blue" : "grey";
  isBgColorGrey = !isBgColorGrey;
}

btn.addEventListener("click", toggleBgColor);

para.addEventListener("mouseover", () => {
  btn.removeEventListener("click", toggleBgColor);
});
```

:::

- **Рядкові обробники подій**: рядкові обробники подій — це спеціальні атрибути HTML-елемента, які використовуються для виконання JavaScript-коду при виникненні події. У сучасному JavaScript рядкові обробники подій не вважаються найкращою практикою. Натомість рекомендується використовувати метод `addEventListener`.


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## Подія change

- **Визначення**: подія change — це спеціальна подія, яка спрацьовує, коли користувач змінює значення певних вхідних елементів. Прикладами можуть бути випадки, коли прапорець або радіокнопка позначаються. Або коли користувач робить вибір у такому елементі, як вибір дати чи випадаюче меню.

:::interactive_editor

```html
<label>
  Choose a programming language:
  <select class="language" name="language">
    <option value="">---Select One---</option>
    <option value="JavaScript">JavaScript</option>
    <option value="Python">Python</option>
    <option value="C++">C++</option>
  </select>
</label>

<p class="result"></p>
<script src="./index.js"></script>
```

```js 
const selectEl = document.querySelector(".language");
const result = document.querySelector(".result");

selectEl.addEventListener("change", (e) => {
  result.textContent = `You enjoy programming in ${e.target.value}.`;
});
```

:::

## Поширення подій (event bubbling)

- **Визначення**: Поширення подій, або пропагування, означає, як подія «піднімається» до батьківських об’єктів після спрацьовування.
- **Метод `stopPropagation()`**: Цей метод запобігає подальшому поширенню події.

## Делегування подій

- **Визначення**: делегування подій — це процес прослуховування подій, які піднялися до батьківського елемента, замість того, щоб обробляти їх безпосередньо на елементі, який їх викликав.

## Подія DOMContentLoaded

- **Визначення**: подія `DOMContentLoaded` спрацьовує, коли все в HTML-документі було завантажено та проаналізовано. Якщо у вас є зовнішні таблиці стилів або зображення, то подія `DOMContentLoaded` не чекатиме на їхнє завантаження. Вона чекатиме лише на завантаження HTML.

## Робота з `style` та `classList`

- **Властивість `Element.style`**: ця властивість є властивістю лише для читання, яка представляє рядковий стиль елемента. Ви можете використовувати цю властивість, щоб отримати або задати стиль елемента.

:::interactive_editor

```html
<p id="para">This paragraph will turn red.</p>
<script src="./index.js"></script>
```

```js
const paraEl = document.getElementById("para");
paraEl.style.color = "red";
```

:::

- **Властивість `Element.classList`**: ця властивість є властивістю лише для читання, яку можна використовувати для додавання, видалення або перемикання класів на елементі.

:::interactive_editor

```html
<link rel="stylesheet" href="./styles.css"/>
<p id="para" class="blue-background">This paragraph will have classes added and removed.</p>
<div id="menu" class="menu">Menu Content</div>
<button id="toggle-btn">Toggle Menu</button>
<script src="./index.js"></script>
```

```css
.highlight {
  background-color: yellow;
}

.blue-background {
  background-color: lightblue;
}

.menu {
  display: none;
  padding: 10px;
  background-color: #f0f0f0;
}

.menu.show {
  display: block;
}
```

```js
// Example adding a class
const paraEl = document.getElementById("para");
paraEl.classList.add("highlight");

// Example removing a class
paraEl.classList.remove("blue-background");

// Example toggling a class
const menu = document.getElementById("menu");
const toggleBtn = document.getElementById("toggle-btn");

toggleBtn.addEventListener("click", () => menu.classList.toggle("show"));
```

:::


## Робота з методами `setTimeout()` та `setInterval()`

- **Метод `setTimeout()`**: цей метод дозволяє затримати виконання дії на вказаний час.

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **Метод `setInterval()`**: Цей метод запускає фрагмент коду повторно через встановлений інтервал. Оскільки `setInterval()` продовжує виконувати передану функцію з вказаним інтервалом, можливо, ви захочете його зупинити. Для цього потрібно використати метод `clearInterval()`.

:::interactive_editor

```js
setInterval(() => {
 console.log('This runs every 2 seconds');
}, 2000);

// Example using clearInterval
const intervalID = setInterval(() => {
 console.log('This will stop after 5 seconds');
}, 1000);

setTimeout(() => {
 clearInterval(intervalID);
}, 5000);
```

:::

## Метод `requestAnimationFrame()`

- **Визначення**: цей метод дозволяє запланувати наступний крок анімації перед наступним оновленням екрану, що забезпечує плавний і привабливий візуальний ефект. Наступне оновлення екрану — це момент, коли браузер оновлює візуальне відображення вебсторінки. Це відбувається кілька разів на секунду, зазвичай близько 60 разів (або 60 кадрів на секунду) на більшості дисплеїв.

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## Веб-анімації API

- **Визначення**: Web Animations API дозволяє створювати та керувати анімаціями безпосередньо у JavaScript.

:::interactive_editor

```html
<link rel="stylesheet" href="./styles.css"/>
<div id="square"></div>
<script src="./index.js"></script>
```

```css
#square {
  width: 100px;
  height: 100px;
  background: red;
}

```

```js
const square = document.querySelector('#square');

const animation = square.animate(
 [{ transform: 'translateX(0px)' }, { transform: 'translateX(100px)' }],
 {
   duration: 2000, // makes the animation last 2 seconds
   iterations: Infinity, // loops indefinitely
   direction: 'alternate', // moves back and forth
   easing: 'ease-in-out', // smooth easing
 }
);
```

:::

## Canvas API

- **Визначення**: Canvas API — це потужний інструмент, який дозволяє маніпулювати графікою безпосередньо в JavaScript-файлі. Щоб працювати з Canvas API, спочатку потрібно додати елемент `canvas` у HTML. Цей елемент слугує поверхнею для малювання, якою ви можете керувати за допомогою методів і властивостей інтерфейсів в Canvas API. Цей API має такі інтерфейси, як `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern` і `TextMetrics`; вони містять методи та властивості, які можна використовувати для створення графіки в JavaScript-файлі.

:::interactive_editor

```html
<canvas id="my-canvas" width="400" height="400"></canvas>
<script src="./index.js"></script>
```

```js
const canvas = document.getElementById('my-canvas');

// Access the drawing context of the canvas. 
// "2d" allows you to draw in two dimensions 
const ctx = canvas.getContext('2d');

// Set the background color
ctx.fillStyle = 'crimson';

// Draw a rectangle
ctx.fillRect(1, 1, 150, 100);
```

:::

## Відкриття та закриття діалогів і модальних вікон за допомогою JavaScript

- **Визначення модальних вікон і діалогів**: діалоги дозволяють відображати важливу інформацію або дії для користувачів. За допомогою вбудованого в HTML елемента dialog ви можете легко створювати ці діалоги (як модальні, так і немодальні) у вебзастосунках. Модальний діалог — це тип діалогу, який змушує користувача взаємодіяти з ним, перш ніж він зможе отримати доступ до решти застосунку або сторінки. На відміну від нього, немодальний діалог дозволяє користувачу продовжувати взаємодіяти з іншими частинами сторінки або застосунку навіть коли діалог відкритий. Він не блокує доступ до решти вмісту.
- **Метод `showModal()`**: цей метод використовується для відкриття модального вікна.

:::interactive_editor

```html
<dialog id="my-modal">
   <p>This is a modal dialog.</p>
</dialog>
<button id="open-modal">Open Modal Dialog</button>
<script src="./index.js"></script>
```

```js
const dialog = document.getElementById('my-modal');
const openButton = document.getElementById('open-modal');

openButton.addEventListener('click', () => {
  dialog.showModal();
});
```

:::

- **Метод `close()`**: цей метод використовується для закриття модального вікна.

:::interactive_editor

```html
<dialog id="my-modal">
   <p>This is a modal dialog.</p>
   <button id="close-modal">Close Modal</button>
</dialog>
<button id="open-modal">Open Modal Dialog</button>
<script src="./index.js"></script>
```

```js
const dialog = document.getElementById('my-modal');
const openButton = document.getElementById('open-modal');
const closeButton = document.getElementById('close-modal');

openButton.addEventListener('click', () => {
  dialog.show();
});

closeButton.addEventListener('click', () => {
  dialog.close();
});
```

:::

# --assignment--

Повторіть теми та концепції маніпуляцій DOM і подій кліку з JavaScript.
