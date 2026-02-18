---
id: 6723cc7a8e7aa3b9befd4bac
title: 使用 JavaScript 进行 DOM 操作和点击事件复习
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## 操作 DOM 和 Web API

- **API**：API（应用编程接口）是一组规则和协议，允许软件应用程序彼此通信并高效交换数据。
- **Web API**：Web API 专为网页应用设计。这些类型的 API 通常分为两大类：浏览器 API 和第三方 API。
- **浏览器 API**：这些 API 公开浏览器中的数据。作为网页开发者，你可以使用 JavaScript 访问和操作这些数据。
- **第三方 API**：这些不是浏览器默认内置的。你必须以某种方式获取它们的代码。通常，它们会有详细的文档说明如何使用它们的服务。一个例子是 Google Maps API，你可以用它在你的网站上显示交互式地图。
- **DOM**：DOM 代表文档对象模型。它是一个编程接口，允许你与超文本标记语言文档交互。通过 DOM，你可以添加、修改或删除网页上的元素。DOM 树的根是 `html` 元素。它是 HTML 文档所有内容的顶层容器。所有其他节点都是该根节点的后代。然后，在根节点下，我们在层次结构中找到其他节点。父节点是包含其他元素的元素。子节点是包含在另一个元素内的元素。
- **`navigator` 接口**：这提供有关浏览器环境的信息，例如用户代理字串、平台和浏览器版本。用户代理字串是一个文本字串，用于识别所使用的浏览器和操作系统。
- **`window`接口**：它表现包含 DOM 文档的浏览器窗口。它提供与浏览器窗口交互的方法和属性，例如调整窗口大小、新建窗口以及导航到不同的 URL。

## 使用 `querySelector()`、`querySelectorAll()` 和 `getElementById()` 方法

- **`getElementById()` 方法**：此方法用于获取表现具有指定 `id` 的超文本标记语言元素的对象。请记住，id 在每个超文本标记语言文档中必须唯一，因此此方法只会返回一个元素对象。

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

- **`querySelector()` 方法**：此方法用于获取超文本标记语言文档中第一个匹配作为参数传入的 CSS 选择器的元素。

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

- **`querySelectorAll()` 方法**：你可以使用此方法获取匹配特定 CSS 选择器的所有 DOM 元素的列表。

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

- **`innerHTML` 属性**：这是 `Element` 的一个属性，用于设置或更新超文本标记语言标记的部分内容。

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

- **`createElement` 方法**：用于创建一个超文本标记语言元素。

```js
const img = document.createElement("img");
```

- **`innerText`**：这表现了 HTML 元素及其子元素的可见文本内容。

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

- **`textContent`**：这会返回一个元素的纯文本内容，包括其所有子元素内的文本。

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

- **`appendChild()` 方法**：此方法用于将节点添加到指定父节点的子节点列表末尾。

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

- **`removeChild()` 方法**：此方法用于从 DOM 中移除节点。

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

- **定义**：此方法用于为给定的元素设置属性。如果属性已存在，则更新其值。否则，将添加一个带有值的新属性。

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

## 事件对象

- **定义**：`Event` 对象是当用户以某种方式与你的网页交互时触发的负载。这些交互可以是点击按钮、聚焦输入框或摇动他们的移动设备。所有 `Event` 对象都会有 `type` 属性。该属性显示触发负载的事件类型，例如 keydown 或 click。这些值将对应于你可能传递给 `addEventListener()` 的相同值，在那里你可以捕捉并利用 `Event` 对象。

## `addEventListener()` 和 `removeEventListener()` 方法

- **`addEventListener` 方法**：此方法用于监听事件。它接受两个参数：你想监听的事件和事件发生时将被调用的函数。一些常见的事件示例包括点击事件、输入事件和更改事件。

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

- **`removeEventListener()` 方法**：此方法用于移除之前通过 `addEventListener()` 方法添加到元素上的事件监听器。当你想停止监听元素上的特定事件时，这非常有用。

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

- **内联事件处理器**：内联事件处理器是 HTML 元素上的特殊属性，用于在事件发生时执行 JavaScript 代码。在现代 JavaScript 中，内联事件处理器不被视为最佳实践。更推荐使用 `addEventListener` 方法。


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## 更改事件

- **定义**：`change` 事件是一种特殊的事件，当用户修改某些输入元素的值时触发。示例包括选中复选框或单选按钮，或者用户从日期选择器或下拉菜单中进行选择时。

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

- **定义**：事件冒泡，或传播，指的是事件在被触发时如何“冒泡”到父对象。
- **`stopPropagation()` 方法**：此方法阻止事件的进一步传播。

## 事件委托

- **定义**：事件委托是监听已经冒泡到父元素的事件的进程，而不是直接在触发事件的元素上处理它们。

## DOMContentLoaded

- **定义**：当超文本标记语言文档中的所有内容都已装载并解析时，会触发 `DOMContentLoaded` 事件。如果你有外部样式表或图像，`DOMContentLoaded` 事件不会等待它们装载。它只会等待超文本标记语言装载完成。

## 使用 `style` 和 `classList`

- **`Element.style` 属性**：此属性是一个只读属性，表现元素的内联样式。你可以使用此属性来获取或设置元素的样式。

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

- **`Element.classList` 属性**：此属性是一个只读属性，可用于为元素添加、移除或切换类。

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

- **`setTimeout()` 方法**：此方法允许你延迟指定时间后执行一个操作。

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **`setInterval()` 方法**：此方法会以设定的间隔重复运行一段代码。由于 `setInterval()` 会在指定的间隔持续执行提供的函数，你可能想要停止它。为此，你必须使用 `clearInterval()` 方法。

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

- **定义**：此方法允许你在下一次屏幕重绘之前调度动画的下一步，从而实现流畅且视觉上吸引人的体验。下一次屏幕重绘指的是浏览器刷新网页视觉显示的时刻。这通常每秒发生多次，在大多数显示器上约为 60 次（或每秒 60 帧）。

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## Web 动画 API

- **定义**：Web Animations API 让你可以直接在 JavaScript 中创建和控制动画。

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

- **定义**：Canvas API 是一个强大的工具，允许你直接在你的 JavaScript `file` 中操作图形。要使用 Canvas API，你首先需要在 `HTML` 中提供一个 `canvas` 元素。该元素充当一个绘图表面，你可以通过 Canvas API 中接口的实例方法和属性来操作它。该 API 包含诸如 `HTMLCanvasElement`、`CanvasRenderingContext2D`、`CanvasGradient`、`CanvasPattern` 和 `TextMetrics` 等接口，这些接口包含你可以用来在你的 JavaScript `file` 中创建图形的方法和属性。

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

## 使用 JavaScript 打开和关闭对话框及模态窗口

- **模态和对话框定义**：对话框让你向用户显示重要的信息或操作。使用超文本标记语言内置的对话框元素，你可以轻松地在你的网页应用中创建这些对话框（包括模态和非模态对话框）。模态对话框是一种迫使用户在访问应用或网页的其他部分之前与其交互的对话框。相比之下，非模态对话框允许用户在对话框打开时继续与页面或应用的其他部分交互。它不会阻止访问其余内容。
- **`showModal()` 方法**：此方法用于打开模态框。

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

- **`close()` 方法**：此方法用于关闭模态框。

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

复习使用 JavaScript 的 DOM 操作和点击事件的主题和概念。
