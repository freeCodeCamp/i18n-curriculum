---
id: 6723cc7a8e7aa3b9befd4bac
title: Огляд маніпуляцій DOM і подій кліку з JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## Робота з DOM і веб-API

- **API**: API (інтерфейс програмування застосунків) — це набір правил і протоколів, які дозволяють програмним застосункам ефективно взаємодіяти між собою та обмінюватися даними.
- **Веб-API**: Веб-API спеціально розроблені для вебзастосунків. Ці типи API зазвичай поділяються на дві основні категорії: API браузера та сторонні API.
- **API браузера**: Ці API відкривають доступ до даних браузера. Як веброзробник, ви можете отримувати доступ і маніпулювати цими даними за допомогою JavaScript.
- **Сторонні API**: Вони не вбудовані в браузер за замовчуванням. Вам потрібно отримати їхній код якимось чином. Зазвичай вони мають детальну документацію, яка пояснює, як користуватися їхніми сервісами. Прикладом є Google Maps API, який можна використати для відображення інтерактивних карт на вашому сайті.
- **DOM**: DOM означає Document Object Model (модель об’єктів документа). Це програмний інтерфейс, який дозволяє взаємодіяти з HTML-документами. За допомогою DOM ви можете додавати, змінювати або видаляти елементи на вебсторінці. Коренем дерева DOM є елемент `html`. Це контейнер найвищого рівня для всього вмісту HTML-документа. Всі інші вузли є нащадками цього кореневого вузла. Нижче кореневого вузла знаходяться інші вузли в ієрархії. Батьківський вузол — це елемент, який містить інші елементи. Дочірній вузол — це елемент, який міститься всередині іншого елемента.
- **Інтерфейс `navigator`**: Він надає інформацію про середовище браузера, таку як рядок user agent, платформу та версію браузера. Рядок user agent — це текстовий рядок, який ідентифікує браузер і операційну систему, що використовується.
- **Інтерфейс `window`**: Він представляє вікно браузера, яке містить документ DOM. Надає методи та властивості для взаємодії з вікном браузера, наприклад, зміни розміру вікна, відкриття нових вікон і навігації за різними URL.

## Робота з методами `querySelector()`, `querySelectorAll()` і `getElementById()`

- **Метод `getElementById()`**: Цей метод використовується для отримання об’єкта, який представляє HTML-елемент із заданим `id`. Пам’ятайте, що ідентифікатори мають бути унікальними в кожному HTML-документі, тому цей метод поверне лише один об’єкт Element.

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

- **Метод `querySelector()`**: Цей метод використовується для отримання першого елемента в HTML-документі, який відповідає CSS-селектору, переданому як аргумент.

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

- **Метод `querySelectorAll()`**: Ви можете використати цей метод, щоб отримати список усіх елементів DOM, які відповідають певному CSS-селектору.

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

## Робота з методами `innerText()`, `innerHTML()`, `createElement()` і `textContent()`

- **Властивість `innerHTML`**: Це властивість `Element`, яка використовується для встановлення або оновлення частин HTML-розмітки.

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

- **Метод `createElement`**: Використовується для створення HTML-елемента.

```js
const img = document.createElement("img");
```

- **`innerText`**: Представляє видимий текстовий вміст HTML-елемента та його нащадків.

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

- **`textContent`**: Повертає простий текстовий вміст елемента, включно з усім текстом у його нащадках.

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

## Робота з методами `appendChild()` і `removeChild()`

- **Метод `appendChild()`**: Цей метод використовується для додавання вузла в кінець списку дочірніх елементів заданого батьківського вузла.

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

- **Метод `removeChild()`**: Цей метод використовується для видалення вузла з DOM.

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

- **Визначення**: Цей метод використовується для встановлення атрибута для заданого елемента. Якщо атрибут уже існує, його значення оновлюється. Інакше додається новий атрибут зі значенням.

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

- **Визначення**: Об’єкт `Event` — це корисне навантаження, яке спрацьовує, коли користувач взаємодіє з вашою вебсторінкою певним чином. Ці взаємодії можуть бути будь-якими — від натискання кнопки або фокусу на вхідних даних до трясіння мобільного пристрою. Всі об’єкти `Event` матимуть властивість `type`. Ця властивість показує тип події, яка викликала корисне навантаження, наприклад keydown або click. Ці значення відповідатимуть тим самим значенням, які ви можете передати в `addEventListener()`, де можна захопити і використати об’єкт `Event`.

## Методи `addEventListener()` і `removeEventListener()`

- **Метод `addEventListener`**: Цей метод використовується для прослуховування подій. Він приймає два аргументи: подію, яку ви хочете прослухати, і функцію, яка буде викликана, коли ця подія відбудеться. Загальними прикладами подій є події кліку, введення та зміни.

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

- **Метод `removeEventListener()`**: Цей метод використовується для видалення обробника події, який раніше було додано до елемента за допомогою методу `addEventListener()`. Це корисно, коли ви хочете припинити прослуховування певної події на елементі.

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

- **Рядкові обробники подій**: Рядкові обробники подій — це спеціальні атрибути HTML-елемента, які використовуються для виконання JavaScript-коду, коли відбувається подія. У сучасному JavaScript рядкові обробники подій не вважаються найкращою практикою. Натомість рекомендується використовувати метод `addEventListener`.

:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## Подія change

- **Визначення**: Подія change — це спеціальна подія, яка спрацьовує, коли користувач змінює значення певних вхідних елементів. Прикладами є встановлення прапорця або радіокнопки. Або коли користувач робить вибір у таких елементах, як вибір дати або випадаюче меню.

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

- **Визначення**: Делегування подій — це процес прослуховування подій, які піднялися до батьківського елемента, замість обробки їх безпосередньо на елементі, що їх викликав.

## Подія DOMContentLoaded

- **Визначення**: Подія `DOMContentLoaded` спрацьовує, коли весь HTML-документ було завантажено та проаналізовано. Якщо у вас є зовнішні таблиці стилів або зображення, подія `DOMContentLoaded` не чекатиме їхнього завантаження. Вона чекатиме лише на завантаження HTML.

## Робота з `style` і `classList`

- **Властивість `Element.style`**: Це властивість лише для читання, яка представляє рядковий стиль елемента. Ви можете використати цю властивість, щоб отримати або встановити стиль елемента.

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

- **Властивість `Element.classList`**: Це властивість лише для читання, яку можна використати для додавання, видалення або перемикання класів на елементі.

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

## Робота з методами `setTimeout()` і `setInterval()`

- **Метод `setTimeout()`**: Цей метод дозволяє затримати виконання дії на певний час.

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

- **Визначення**: Цей метод дозволяє запланувати наступний крок анімації перед наступним оновленням екрану, що забезпечує плавний і привабливий візуальний ефект. Наступне оновлення екрану — це момент, коли браузер оновлює візуальне відображення вебсторінки. Це відбувається кілька разів на секунду, зазвичай близько 60 разів (або 60 кадрів на секунду) на більшості дисплеїв.

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

- **Визначення**: Веб-анімації API дозволяють створювати та керувати анімаціями безпосередньо в JavaScript.

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
   duration: 2000, // makes animation lasts 2 seconds
   iterations: Infinity, // loops indefinitely
   direction: 'alternate', // moves back and forth
   easing: 'ease-in-out', // smooth easing
 }
);
```

:::

## Canvas API

- **Визначення**: Canvas API — це потужний інструмент, який дозволяє маніпулювати графікою безпосередньо у вашому JavaScript-файлі. Щоб працювати з Canvas API, спочатку потрібно додати елемент `canvas` у HTML. Цей елемент слугує поверхнею для малювання, якою можна керувати за допомогою методів і властивостей інтерфейсів Canvas API. Цей API має інтерфейси, такі як `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern` і `TextMetrics`, які містять методи та властивості для створення графіки у вашому JavaScript-файлі.

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

- **Визначення модальних і діалогових вікон**: Діалоги дозволяють відображати важливу інформацію або дії для користувачів. За допомогою вбудованого HTML-елемента dialog ви можете легко створювати ці діалоги (як модальні, так і немодальні) у своїх вебзастосунках. Модальне діалогове вікно — це тип діалогу, який змушує користувача взаємодіяти з ним, перш ніж він зможе отримати доступ до решти застосунку або вебсторінки. Натомість немодальне діалогове вікно дозволяє користувачу продовжувати взаємодіяти з іншими частинами сторінки або застосунку, навіть коли діалог відкритий. Воно не блокує доступ до решти вмісту.
- **Метод `showModal()`**: Цей метод використовується для відкриття модального вікна.

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

- **Метод `close()`**: Цей метод використовується для закриття модального вікна.

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
