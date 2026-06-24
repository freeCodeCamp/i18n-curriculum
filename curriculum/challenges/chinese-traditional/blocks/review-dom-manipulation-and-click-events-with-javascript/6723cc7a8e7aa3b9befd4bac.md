---
id: 6723cc7a8e7aa3b9befd4bac
title: 使用 JavaScript 進行 DOM 操作和點擊事件回顧
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## 操作 DOM 和 Web API

- **API**：API（應用程式介面）是一組規則和協定，讓軟體應用程式之間能夠彼此溝通並高效交換資料。
- **Web API**：Web API 是專為網頁應用程式設計的 API。這類 API 通常分為兩大類：瀏覽器 API 和第三方 API。
- **瀏覽器 API**：這些 API 會公開瀏覽器中的資料。身為網頁開發者，你可以用 JavaScript 存取並操作這些資料。
- **第三方 API**：這些 API 並非預設內建於瀏覽器。你必須以某種方式取得它們的程式碼。通常這些 API 都會有詳細的文件說明如何使用其服務。例如 Google Maps API，你可以用它在網站上顯示互動地圖。
- **DOM**：DOM 代表文件物件模型（Document Object Model）。它是一個讓你與 HTML 文件互動的程式設計介面。透過 DOM，你可以新增、修改或刪除網頁上的元素。DOM 樹的根節點是 `html` 元素。它是 HTML 文件所有內容的最上層容器。所有其他節點都是這個根節點的子孫。接著，在根節點下方，我們會看到階層中的其他節點。父節點是包含其他元素的元素；子節點則是被包含在其他元素內的元素。
- **`navigator` 介面**：這個介面提供有關瀏覽器環境的資訊，例如使用者代理字串、平台和瀏覽器版本。使用者代理字串是一段用來識別瀏覽器和作業系統的文字。
- **`window` 介面**：這個介面代表包含 DOM 文件的瀏覽器視窗。它提供與瀏覽器視窗互動的方法和屬性，例如調整視窗大小、開啟新視窗，以及導覽到不同的 URL。

## 使用 `querySelector()`、`querySelectorAll()` 和 `getElementById()` 方法

- **`getElementById()` 方法**：這個方法用來取得具有指定 `id` 的 HTML 元素物件。請記得，每個 HTML 文件中的 id 必須是唯一的，所以這個方法只會傳回一個 Element 物件。

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

- **`querySelector()` 方法**：這個方法用來取得 HTML 文件中第一個符合所傳入 CSS 選擇器的元素。

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

- **`querySelectorAll()` 方法**：你可以用這個方法取得所有符合特定 CSS 選擇器的 DOM 元素列表。

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

- **`innerHTML` 屬性**：這是 `Element` 的一個屬性，用來設定或更新 HTML 標記的部分內容。

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

- **`createElement` 方法**：這個方法用來建立一個 HTML 元素。

```js
const img = document.createElement("img");
```

- **`innerText`**：這代表 HTML 元素及其所有子孫的可見文字內容。

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

- **`textContent`**：這會傳回元素內所有子孫的純文字內容。

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

- **`appendChild()` 方法**：這個方法用來將一個節點新增到指定父節點的子節點清單末端。

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

- **`removeChild()` 方法**：這個方法用來從 DOM 中移除一個節點。

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

- **定義**：這個方法用來為指定元素設定屬性。如果該屬性已存在，則會更新其值；否則會新增一個具有指定值的新屬性。

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

- **定義**：`Event` 物件是在使用者以某種方式與你的網頁互動時觸發的資料載體。這些互動可以是點擊按鈕、聚焦輸入框，甚至搖動行動裝置。所有 `Event` 物件都會有 `type` 屬性。這個屬性會顯示觸發該資料載體的事件型態，例如 keydown 或 click。這些值會對應到你在 `addEventListener()` 中可能傳入的值，讓你可以捕捉並運用 `Event` 物件。

## `addEventListener()` 和 `removeEventListener()` 方法

- **`addEventListener` 方法**：這個方法用來監聽事件。它接受兩個引數：你想監聽的事件，以及事件發生時要呼叫的函式。一些常見的事件範例包括 click 事件、input 事件和 change 事件。

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

- **`removeEventListener()` 方法**：這個方法用來移除先前用 `addEventListener()` 方法加到元素上的事件監聽器。當你想停止監聽某個元素上的特定事件時，這個方法就很有用。

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

- **行內事件處理常式**：行內事件處理常式是 HTML 元素上的特殊屬性，用來在事件發生時執行 JavaScript 程式碼。在現代 JavaScript 中，行內事件處理常式已不被視為最佳做法。建議改用 `addEventListener` 方法。


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## Change 事件

- **定義**：change 事件是一種特殊事件，當使用者修改某些輸入元素的值時會被觸發。例如勾選核取方塊或單選按鈕，或是從日期選擇器或下拉選單中做出選擇時。

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

- **定義**：事件委派是指監聽已經冒泡到父層的事件，而不是直接在觸發事件的元素上處理。

## DOMContentLoaded

- **定義**：`DOMContentLoaded` 事件會在 HTML 文件的所有內容都載入並解析完成時觸發。如果有外部樣式表或圖片，`DOMContentLoaded` 事件不會等待它們載入完成，只會等 HTML 載入完成。

## 使用 `style` 和 `classList`

- **`Element.style` 屬性**：這個屬性是唯讀屬性，代表元素的行內樣式。你可以用這個屬性來取得或設定元素的樣式。

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

- **`Element.classList` 屬性**：這個屬性是唯讀屬性，可以用來新增、移除或切換元素上的類別。

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

- **`setTimeout()` 方法**：這個方法讓你可以延遲執行某個動作一段指定的時間。

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

- **定義**：這個方法讓你可以在下一次螢幕重繪前排程動畫的下一步，帶來流暢且視覺效果佳的體驗。下一次螢幕重繪指的是瀏覽器重新整理網頁畫面的時刻。這個動作每秒會發生多次，通常在大多數顯示器上約為 60 次（即每秒 60 影格）。

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

- **定義**：Web Animations API 讓你可以直接在 JavaScript 中建立和控制動畫。

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

- **定義**：Canvas API 是一個強大的工具，讓你可以直接在 JavaScript 檔案中操作圖形。要使用 Canvas API，首先需要在 HTML 中提供一個 `canvas` 元素。這個元素就像一個繪圖表面，你可以用 Canvas API 介面的實體方法和屬性來操作它。這個 API 包含像 `HTMLCanvasElement`、`CanvasRenderingContext2D`、`CanvasGradient`、`CanvasPattern` 和 `TextMetrics` 這些介面，你可以用它們的方法和屬性在 JavaScript 檔案中建立圖形。

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

## 用 JavaScript 開啟與關閉對話框和模態視窗

- **模態與對話框定義**：對話框讓你可以向使用者顯示重要資訊或操作。利用 HTML 內建的 dialog 元素，你可以輕鬆在網頁應用程式中建立這些對話框（包含模態和非模態對話框）。模態對話框是一種強制使用者必須先與其互動，才能存取應用程式或網頁其他部分的對話框。相對地，非模態對話框則允許使用者即使對話框開啟時，仍可繼續與頁面或應用程式其他部分互動，不會阻止存取其他內容。
- **`showModal()` 方法**：這個方法用來開啟模態視窗。

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

- **`close()` 方法**：這個方法用來關閉模態視窗。

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
