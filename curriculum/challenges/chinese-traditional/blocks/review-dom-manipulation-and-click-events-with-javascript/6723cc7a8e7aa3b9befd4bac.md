---
id: 6723cc7a8e7aa3b9befd4bac
title: 使用 JavaScript 進行 DOM 操作和點擊事件回顧
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## 操作 DOM 和 Web API

- **API**：API（應用程式設計介面）是一組規則和通訊協定，允許軟體應用程式彼此溝通並高效交換資料。
- **Web API**：Web API 專為網頁應用程式設計。這類 API 通常分為兩大類別：瀏覽器 API 和第三方 API。
- **瀏覽器 API**：這些 API 會揭露來自瀏覽器的資料。作為網頁開發者，你可以使用 JavaScript 存取並操作這些資料。
- **第三方 API**：這些不是瀏覽器預設內建的。你必須以某種方式取得它們的程式碼。通常，它們會有詳細的文件說明如何使用它們的服務。舉例來說，Google Maps API 可以用來在你的網站上顯示互動式地圖。
- **DOM**：DOM 代表文件物件模型。它是一個程式設計介面，讓你能與 HTML 文件互動。透過 DOM，你可以新增、修改或刪除網頁上的元素。DOM 樹的根節點是 `html` 元素。它是 HTML 文件所有內容的最高層級容器。所有其他節點都是此根節點的後代。接著，在根節點之下，我們會在階層體系中找到其他節點。父節點是包含其他元素的元素。子節點是被包含在另一個元素中的元素。
- **`navigator` 介面**：此介面提供瀏覽器環境的資訊，例如使用者代理字串、平台以及瀏覽器版本。使用者代理字串是一個用來識別所使用瀏覽器和作業系統的文字字串。
- **`window` 介面**：這表述包含 DOM 文件的瀏覽器視窗。它提供與瀏覽器視窗互動的行為和屬性，例如調整視窗大小、開啟新視窗以及導向不同的 URL。

## 使用 `querySelector()`、`querySelectorAll()` 和 `getElementById()` 方法

- **`getElementById()` 方法**：此方法用於取得表述具有指定 `id` 的 HTML 元素的物件。請記得每個 HTML 文件中的 id 必須是唯一的，因此此方法只會傳回一個 Element 物件。

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

- **`querySelector()` 方法**：此方法用於取得 HTML 文件中第一個符合作為引數傳入的 CSS 選擇器的元素。

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

- **`querySelectorAll()` 方法**：你可以使用此方法取得符合特定 CSS 選擇器的所有 DOM 元素的列表。

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

## 使用 `innerText()`、`innerHTML()`、`createElement()` 和 `textContent()` 方法

- **`innerHTML` 屬性**：這是 `Element` 的一個屬性，用於設定或更新 HTML 標記的零件。

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

- **`createElement` 方法**：這用於創建一個 HTML 元素。

```js
const img = document.createElement("img");
```

- **`innerText`**：這表述 HTML 元素及其子孫的可見文字內容。

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

- **`textContent`**：這會傳回元素的純文字內容，包括其所有子孫元素中的文字。

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

## 使用 `appendChild()` 和 `removeChild()` 方法

- **`appendChild()` 方法**：此方法用於將節點添加到指定父節點的子節點列表末端。

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

- **`removeChild()` 方法**：此方法用於從 DOM 中移除節點。

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

## 使用 `setAttribute()` 方法

- **定義**：此方法用於設定給定元素的屬性。如果屬性已存在，則會更新其值。否則，將新增一個帶有值的屬性。

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

## 事件物件

- **定義**：`Event` 物件是當使用者以某種方式與你的網頁交談時所觸發的有效負載。這些交談可以是從點擊按鈕或聚焦輸入框到搖動他們的行動裝置。所有 `Event` 物件都會有 `type` 屬性。此屬性揭示觸發有效負載的事件型別，例如 keydown 或 click。這些值將對應到你可能傳遞給 `addEventListener()` 的相同值，在那裡你可以捕捉並使用 `Event` 物件。

## `addEventListener()` 和 `removeEventListener()` 方法

- **`addEventListener` 方法**：此方法用於監聽事件。它接受兩個引數：你想監聽的事件以及當事件發生時會被呼叫的函式（程式）。一些常見的事件範例包括點擊事件、輸入事件和變更事件。

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

- **`removeEventListener()` 方法**：此方法用於移除先前使用 `addEventListener()` 方法添加到元素的事件監聽器。當你想停止監聽元素上的特定事件時，這非常有用。

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

- **行內事件處理常式**：行內事件處理常式是 HTML 元素上的特殊屬性，用於在事件發生時執行 JavaScript 程式碼。在現代 JavaScript 中，行內事件處理常式不被視為最佳實務。建議改用 `addEventListener` 方法。


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## 變更事件

- **定義**：`change event` 是一種特殊的事件，當使用者修改某些輸入元素的值時會觸發。範例包括勾選核取方塊或圓鈕、單選按鈕，或使用者從日期選擇器或下拉選單中做出選擇時。

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

## 事件冒泡

- **定義**：事件冒泡，或稱傳播，指的是當事件被觸發時，該事件如何「冒泡」至父物件。
- **`stopPropagation()` 方法**：此方法可防止事件的進一步傳播。

## 事件委派

- **定義**：事件委派是監聽已冒泡到父元素的事件的處理程序，而不是直接在觸發事件的元素上處理它們。

## DOMContentLoaded

- **定義**：當 HTML 文件中的所有內容都已載入並解析時，會觸發 `DOMContentLoaded` 事件。如果你有外部樣式表或影像，`DOMContentLoaded` 事件不會等待那些載入。它只會等待 HTML 載入完成。

## 操作 `style` 和 `classList`

- **`Element.style` 屬性**：此屬性是一個唯讀屬性，表述元素的行內樣式。你可以使用此屬性來取得或設定元素的樣式。

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

- **`Element.classList` 屬性**：此屬性為唯讀屬性，可用來為元素添加、移除或切換類別。

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


## 使用 `setTimeout()` 和 `setInterval()` 方法

- **`setTimeout()` 方法**：此方法讓你延遲指定時間後執行動作。

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **`setInterval()` 方法**：此方法會在設定的間隔內重複執行一段程式碼。由於 `setInterval()` 會持續在指定的間隔執行所提供的函式，你可能會想要停止它。為此，你必須使用 `clearInterval()` 方法。

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

## `requestAnimationFrame()` 方法

- **定義**：此方法允許你在下一次螢幕重新整理之前排程動畫的下一步，從而產生流暢且視覺上吸引人的體驗。下一次螢幕重新整理是指瀏覽器重新整理網頁視覺顯示的時刻。這通常每秒發生多次，在大多數顯示器上約為 60 次（或每秒 60 個影格）。

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## 網頁動畫 API

- **定義**：Web Animations API 讓你能夠直接在 JavaScript 中創建並控制動畫。

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

- **定義**：Canvas API 是一個強大的工具，讓你能夠直接在你的 JavaScript 檔案中操作圖形。要使用 Canvas API，首先你需要在 HTML 中提供一個 `canvas` 元素。這個元素充當一個繪圖表面，你可以使用 Canvas API 中介面的實體方法和屬性來操作它。這個 API 包含像是 `HTMLCanvasElement`、`CanvasRenderingContext2D`、`CanvasGradient`、`CanvasPattern` 和 `TextMetrics` 等介面，這些介面包含你可以用來在你的 JavaScript 檔案中創建圖形的方法和屬性。

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

## 使用 JavaScript 開啟和關閉對話窗與模態視窗

- **模態與對話盒定義**：對話盒讓你向使用者顯示重要的資訊或操作。利用 HTML 內建的 `dialog` 元素，你可以輕鬆地在你的網頁應用程式中創建這些對話盒（包括模態與非模態對話盒）。模態對話盒是一種強制使用者在存取應用程式或網頁的其他部分之前，必須先與其互動的對話盒。相反地，非模態對話盒允許使用者在對話盒開啟時，繼續與頁面或應用程式的其他部分互動。它不會阻止存取其他內容。
- **`showModal()` 方法**：此方法用於開啟一個模態視窗。

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

- **`close()` 方法**：此方法用於關閉模態視窗。

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

檢視 DOM 操作和使用 JavaScript 的點擊事件主題與概念。
