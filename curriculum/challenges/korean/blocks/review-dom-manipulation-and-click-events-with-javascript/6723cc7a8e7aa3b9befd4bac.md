---
id: 6723cc7a8e7aa3b9befd4bac
title: JavaScript로 DOM 조작과 클릭 이벤트 복습
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## DOM과 웹 API 다루기

- **API**: API(애플리케이션 프로그래밍 인터페이스)는 소프트웨어 애플리케이션들이 서로 효율적으로 통신하고 데이터를 교환할 수 있게 하는 규칙과 프로토콜 집합입니다.
- **웹 API**: 웹 API는 웹 애플리케이션을 위해 특별히 설계된 API입니다. 이러한 API는 보통 브라우저 API와 서드파티 API 두 가지 주요 범주로 나뉩니다.
- **브라우저 API**: 이 API들은 브라우저에서 데이터를 노출합니다. 웹 개발자는 JavaScript를 사용해 이 데이터에 접근하고 조작할 수 있습니다.
- **서드파티 API**: 기본적으로 브라우저에 내장되어 있지 않습니다. 코드를 어떤 방식으로든 가져와야 합니다. 보통 서비스 사용법을 설명하는 자세한 문서가 제공됩니다. 예를 들어, Google Maps API는 웹사이트에 인터랙티브한 지도를 표시하는 데 사용할 수 있습니다.
- **DOM**: DOM은 문서 객체 모델(Document Object Model)의 약자입니다. HTML 문서와 상호작용할 수 있게 하는 프로그래밍 인터페이스입니다. DOM을 통해 웹페이지의 요소를 추가, 수정, 삭제할 수 있습니다. DOM 트리의 루트는 `html` 요소입니다. 이 요소는 HTML 문서의 모든 콘텐츠를 담는 최상위 컨테이너입니다. 다른 모든 노드는 이 루트 노드의 자손 요소입니다. 루트 노드 아래에는 계층 구조상 다른 노드들이 있습니다. 부모 노드는 다른 요소를 포함하는 요소이고, 자식 노드는 다른 요소 안에 포함된 요소입니다.
- **`navigator` 인터페이스**: 사용자 에이전트 문자열, 플랫폼, 브라우저 버전 등 브라우저 환경에 관한 정보를 제공합니다. 사용자 에이전트 문자열은 사용 중인 브라우저와 운영체제를 식별하는 텍스트 문자열입니다.
- **`window` 인터페이스**: DOM 문서를 포함하는 브라우저 창을 나타냅니다. 창 크기 조절, 새 창 열기, 다른 URL로 이동하기 등 브라우저 창과 상호작용하는 메서드와 프로프를 제공합니다.

## `querySelector()`, `querySelectorAll()` 그리고 `getElementById()` 메서드 사용하기

- **`getElementById()` 메서드**: 이 메서드는 지정한 `id`를 가진 HTML 요소를 나타내는 객체를 가져오는 데 사용합니다. id는 모든 HTML 문서에서 고유해야 하므로, 이 메서드는 하나의 Element 객체만 반환합니다.

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

- **`querySelector()` 메서드**: 이 메서드는 인수로 전달된 CSS 선택자와 일치하는 HTML 문서 내 첫 번째 요소를 가져오는 데 사용합니다.

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

- **`querySelectorAll()` 메서드**: 이 메서드를 사용하면 특정 CSS 선택자와 일치하는 모든 DOM 요소 목록을 가져올 수 있습니다.

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

## `innerText()`, `innerHTML()`, `createElement()` 그리고 `textContent()` 메서드 사용하기

- **`innerHTML` 속성**: HTML 마크업의 일부를 설정하거나 업데이트하는 데 사용되는 `Element`의 속성입니다.

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

- **`createElement` 메서드**: HTML 요소를 생성하는 데 사용합니다.

```js
const img = document.createElement("img");
```

- **`innerText`**: HTML 요소와 그 자손 요소의 보이는 텍스트 내용을 나타냅니다.

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

- **`textContent`**: 요소와 그 자손 요소 내 모든 텍스트를 포함한 일반 텍스트 내용을 반환합니다.

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

## `appendChild()`와 `removeChild()` 메서드 사용하기

- **`appendChild()` 메서드**: 이 메서드는 지정한 부모 노드의 자식 목록 끝에 노드를 추가할 때 사용합니다.

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

- **`removeChild()` 메서드**: 이 메서드는 DOM에서 노드를 제거할 때 사용합니다.

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

## `setAttribute()` 메서드 사용하기

- **정의**: 이 메서드는 주어진 요소의 속성을 설정하는 데 사용됩니다. 속성이 이미 존재하면 값이 업데이트됩니다. 그렇지 않으면 값과 함께 새 속성이 추가됩니다.

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

## 이벤트 객체

- **정의**: `Event` 객체는 사용자가 웹 페이지와 어떤 방식으로 상호작용할 때 발생하는 페이로드입니다. 이러한 상호작용은 버튼 클릭, 입력 포커스, 모바일 기기 흔들기 등 다양할 수 있습니다. 모든 `Event` 객체는 `type` 속성을 가집니다. 이 속성은 keydown이나 click 같은 페이로드를 발생시킨 이벤트 유형을 나타냅니다. 이 값들은 `addEventListener()`에 전달할 수 있는 값과 일치하며, 여기서 `Event` 객체를 캡처하고 활용할 수 있습니다.

## `addEventListener()`와 `removeEventListener()` 메서드

- **`addEventListener` 메서드**: 이 메서드는 이벤트를 듣기 위해 사용합니다. 두 개의 인수를 받는데, 하나는 듣고자 하는 이벤트이고 다른 하나는 이벤트가 발생했을 때 호출될 함수입니다. 일반적인 이벤트 예로는 클릭 이벤트, 입력 이벤트, 변경 이벤트가 있습니다.

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

- **`removeEventListener()` 메서드**: 이 메서드는 이전에 `addEventListener()` 메서드를 사용해 요소에 추가한 이벤트 리스너를 제거하는 데 사용합니다. 특정 요소에서 특정 이벤트를 더 이상 듣고 싶지 않을 때 유용합니다.

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

- **인라인 이벤트 핸들러**: 인라인 이벤트 핸들러는 이벤트가 발생했을 때 JavaScript 코드를 실행하기 위해 HTML 요소에 특별히 지정하는 속성입니다. 현대 JavaScript에서는 인라인 이벤트 핸들러를 모범 사례로 여기지 않습니다. 대신 `addEventListener` 메서드를 사용하는 것이 권장됩니다.


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## 변경 이벤트

- **정의**: 변경 이벤트는 사용자가 특정 입력 요소의 값을 수정할 때 발생하는 특별한 이벤트입니다. 예를 들어 체크박스나 라디오 버튼을 선택할 때, 또는 사용자가 날짜 선택기나 드롭다운 메뉴에서 선택할 때 발생합니다.

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

## 이벤트 버블링

- **정의**: 이벤트 버블링 또는 전파는 이벤트가 발생했을 때 부모 객체로 "거품처럼" 올라가는 방식을 말합니다.
- **`stopPropagation()` 메서드**: 이 메서드는 이벤트의 추가 전파를 막습니다.

## 이벤트 위임

- **정의**: 이벤트 위임은 이벤트가 발생한 요소에서 직접 처리하는 대신, 버블링되어 상위 요소에 도달한 이벤트를 감지하는 과정입니다.

## DOMContentLoaded

- **정의**: `DOMContentLoaded` 이벤트는 HTML 문서의 모든 내용이 로드되고 구문 분석이 완료되었을 때 발생합니다. 외부 스타일시트나 이미지가 있더라도 `DOMContentLoaded` 이벤트는 그것들이 로드될 때까지 기다리지 않습니다. HTML이 로드되는 것만 기다립니다.

## `style`와 `classList` 다루기

- **`Element.style` 속성**: 이 속성은 요소의 인라인 스타일을 나타내는 읽기 전용 속성입니다. 이 속성을 사용해 요소의 스타일을 가져오거나 설정할 수 있습니다.

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

- **`Element.classList` 속성**: 이 속성은 요소에 클래스를 추가, 제거 또는 토글하는 데 사용할 수 있는 읽기 전용 속성입니다.

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


## `setTimeout()`와 `setInterval()` 메서드 사용하기

- **`setTimeout()` 메서드**: 이 메서드는 지정한 시간 동안 동작을 지연시킬 수 있습니다.

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **`setInterval()` 메서드**: 이 메서드는 일정 간격으로 코드를 반복 실행합니다. `setInterval()`는 지정한 간격마다 함수를 계속 실행하므로, 중단하려면 `clearInterval()` 메서드를 사용해야 합니다.

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

## `requestAnimationFrame()` 메서드

- **정의**: 이 메서드는 다음 화면 새로 고침 전에 애니메이션의 다음 단계를 예약할 수 있게 하여 부드럽고 시각적으로 매력적인 경험을 제공합니다. 다음 화면 새로 고침은 브라우저가 웹 페이지의 시각적 표시를 새로 고침하는 순간을 의미합니다. 이는 대부분의 디스플레이에서 초당 약 60회(또는 60프레임) 정도 여러 번 발생합니다.

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## 웹 애니메이션 API

- **정의**: 웹 애니메이션 API는 JavaScript 내에서 직접 애니메이션을 만들고 제어할 수 있게 해줍니다.

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

## 캔버스 API

- **정의**: 캔버스 API는 JavaScript 파일 안에서 그래픽을 직접 조작할 수 있게 해주는 강력한 도구입니다. 캔버스 API를 사용하려면 먼저 HTML에 `canvas` 요소를 제공해야 합니다. 이 요소는 캔버스 API의 인터페이스 인스턴스 메서드와 프로프를 사용해 조작할 수 있는 그리기 표면 역할을 합니다. 이 API에는 JavaScript 파일에서 그래픽을 만들 때 사용할 수 있는 메서드와 프로프를 포함하는 `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern`, `TextMetrics` 같은 인터페이스가 있습니다.

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

## JavaScript로 대화상자와 모달 열기 및 닫기

- **모달과 대화상자 정의**: 대화상자는 사용자에게 중요한 정보나 작업을 보여줄 때 사용합니다. HTML 내장 dialog 요소를 사용하면 웹 애플리케이션에서 이러한 대화상자(모달과 비모달 모두)를 쉽게 만들 수 있습니다. 모달 대화상자는 사용자가 애플리케이션이나 웹페이지의 나머지 부분에 접근하기 전에 반드시 상호작용해야 하는 대화상자 유형입니다. 반면 비모달 대화상자는 대화상자가 열려 있어도 사용자가 페이지나 애플리케이션의 다른 부분과 계속 상호작용할 수 있게 하며, 나머지 콘텐츠에 대한 접근을 막지 않습니다.
- **`showModal()` 메서드**: 이 메서드는 모달을 열 때 사용합니다.

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

- **`close()` 메서드**: 이 메서드는 모달을 닫을 때 사용합니다.

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

JavaScript로 DOM 조작과 클릭 이벤트 주제와 개념을 복습하세요.
