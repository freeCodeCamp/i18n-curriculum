---
id: 6723cc7a8e7aa3b9befd4bac
title: مراجعة التلاعب بـ DOM وأحداث النقر باستخدام JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## العمل مع DOM وواجهات برمجة تطبيقات الويب

- **API**: واجهة برمجة التطبيقات (Application Programming Interface) هي مجموعة من القواعد والبروتوكولات التي تسمح لتطبيقات البرمجيات بالتواصل مع بعضها وتبادل البيانات بكفاءة.
- **Web API**: واجهات برمجة تطبيقات الويب مصممة خصيصًا لتطبيقات الويب. غالبًا ما تُقسم هذه الأنواع من الواجهات إلى فئتين رئيسيتين: واجهات برمجة تطبيقات المتصفح وواجهات برمجة تطبيقات الطرف الثالث.
- **Browser APIs**: هذه الواجهات تتيح الوصول إلى بيانات من المتصفح. كمطور ويب، يمكنك الوصول إلى هذه البيانات والتلاعب بها باستخدام JavaScript.
- **Third-Party APIs**: هذه ليست مدمجة في المتصفح افتراضيًا. عليك استيراد شفرتها بطريقة ما. عادةً ما تحتوي على توثيق مفصل يشرح كيفية استخدام خدماتها. مثال على ذلك هو Google Maps API، الذي يمكنك استخدامه لعرض خرائط تفاعلية على موقعك.
- **DOM**: DOM تعني نموذج كائن المستند. هي واجهة برمجة تسمح لك بالتفاعل مع مستندات HTML. باستخدام DOM، يمكنك إضافة أو تعديل أو حذف عناصر في صفحة الويب. جذر شجرة DOM هو العنصر `html`. هو الحاوية العليا لكل محتوى مستند HTML. كل العقد الأخرى هي عناصر تابعة لهذه العقدة الجذرية. ثم، تحت العقدة الجذرية، نجد عقدًا أخرى في التسلسل الهرمي. عقدة الأصل هي عنصر يحتوي على عناصر أخرى. العقدة الفرعية هي عنصر موجود داخل عنصر آخر.
- **`navigator` Interface**: توفر معلومات عن بيئة المتصفح، مثل سلسلة وكيل المستخدم، والمنصة، وإصدار المتصفح. سلسلة وكيل المستخدم هي نص يحدد المتصفح ونظام التشغيل المستخدم.
- **`window` Interface**: تمثل نافذة المتصفح التي تحتوي على مستند DOM. توفر طرقًا وخصائص للتفاعل مع نافذة المتصفح، مثل تغيير حجم النافذة، وفتح نوافذ جديدة، والتنقل إلى عناوين URL مختلفة.

## العمل مع طرق `querySelector()` و `querySelectorAll()` و `getElementById()`

- **طريقة `getElementById()`**: تُستخدم هذه الطريقة للحصول على كائن يمثل عنصر HTML بالـ `id` المحدد. تذكر أن المعرفات يجب أن تكون فريدة في كل مستند HTML، لذا سترجع هذه الطريقة كائن عنصر واحد فقط.

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

- **طريقة `querySelector()`**: تُستخدم هذه الطريقة للحصول على أول عنصر في مستند HTML يطابق محدد CSS الممرر كمعلمة.

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

- **طريقة `querySelectorAll()`**: يمكنك استخدام هذه الطريقة للحصول على قائمة بكل عناصر DOM التي تطابق محدد CSS معين.

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

## العمل مع طرق `innerText()` و `innerHTML()` و `createElement()` و `textContent()`

- **خاصية `innerHTML`**: هي خاصية في العنصر `Element` تُستخدم لتعيين أو تحديث أجزاء من ترميز HTML.

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

- **طريقة `createElement`**: تُستخدم لإنشاء عنصر HTML.

```js
const img = document.createElement("img");
```

- **`innerText`**: تمثل النص المرئي لمحتوى عنصر HTML وعناصره التابعة.

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

- **`textContent`**: تُرجع النص العادي لمحتوى العنصر، بما في ذلك كل النص داخل العناصر التابعة له.

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

## العمل مع طرق `appendChild()` و `removeChild()`

- **طريقة `appendChild()`**: تُستخدم هذه الطريقة لإضافة عقدة إلى نهاية قائمة الأطفال لعقدة الأصل المحددة.

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

- **طريقة `removeChild()`**: تُستخدم هذه الطريقة لإزالة عقدة من DOM.

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

## العمل مع طريقة `setAttribute()`

- **التعريف**: تُستخدم هذه الطريقة لتعيين خاصية لعنصر معين. إذا كانت الخاصية موجودة بالفعل، يتم تحديث قيمتها. وإلا، تُضاف خاصية جديدة مع قيمة.

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

## كائن الحدث

- **التعريف**: كائن الـ `Event` هو حمولة تُفعّل عندما يتفاعل المستخدم مع صفحة الويب الخاصة بك بطريقة ما. يمكن أن تكون هذه التفاعلات أي شيء من النقر على زر أو تركيز مُدخَل إلى هز جهازه المحمول. جميع كائنات الـ `Event` تحتوي على الخاصية `type`. تكشف هذه الخاصية عن نوع الحدث الذي فعّل الحمولة، مثل keydown أو click. تتطابق هذه القيم مع القيم التي قد تمررها إلى `addEventListener()`، حيث يمكنك التقاط واستخدام كائن الـ `Event`.

## طرق `addEventListener()` و `removeEventListener()`

- **طريقة `addEventListener`**: تُستخدم هذه الطريقة للاستماع إلى الأحداث. تأخذ معلمتين: الحدث الذي تريد الاستماع إليه، ودالة تُستدعى عند حدوث الحدث. من الأمثلة الشائعة على الأحداث: أحداث النقر، وأحداث الإدخال، وأحداث التغيير.

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

- **طريقة `removeEventListener()`**: تُستخدم هذه الطريقة لإزالة مستمع حدث تمت إضافته سابقًا إلى عنصر باستخدام `addEventListener()`. هذا مفيد عندما تريد التوقف عن الاستماع لحدث معين على عنصر.

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

- **معالجات الأحداث المضمنة**: معالجات الأحداث المضمنة هي خصائص خاصة على عنصر HTML تُستخدم لتنفيذ شفرة JavaScript عند حدوث حدث. في JavaScript الحديثة، لا تُعتبر المعالجات المضمنة أفضل الممارسات. يُفضل استخدام طريقة `addEventListener` بدلاً منها.


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## حدث التغيير

- **التعريف**: حدث التغيير هو حدث خاص يُفعّل عندما يغير المستخدم قيمة بعض عناصر الإدخال. من الأمثلة على ذلك: عند تحديد مربع اختيار أو زر اختيار، أو عند اختيار المستخدم من أداة اختيار التاريخ أو قائمة منسدلة.

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

## انتشار الحدث (Event Bubbling)

- **التعريف**: انتشار الحدث، أو التبليغ، يشير إلى كيفية "تصاعد" الحدث إلى الكائنات الأصلية عند تفعيله.
- **طريقة `stopPropagation()`**: تمنع هذه الطريقة استمرار انتشار الحدث.

## تفويض الحدث

- **التعريف**: تفويض الحدث هو عملية الاستماع إلى الأحداث التي تصاعدت إلى عنصر الأصل، بدلاً من التعامل معها مباشرة على العنصر الذي فعّلها.

## DOMContentLoaded

- **التعريف**: يُطلق حدث `DOMContentLoaded` عندما يتم تحميل وتحليل كل شيء في مستند HTML. إذا كان لديك أوراق أنماط خارجية أو صور، فلن ينتظر حدث `DOMContentLoaded` تحميلها. سينتظر فقط تحميل HTML.

## العمل مع `style` و `classList`

- **خاصية `Element.style`**: هي خاصية للقراءة فقط تمثل النمط المضمّن لعنصر. يمكنك استخدام هذه الخاصية للحصول على النمط أو تعيينه لعنصر.

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

- **خاصية `Element.classList`**: هي خاصية للقراءة فقط تُستخدم لإضافة أو حذف أو تبديل الأصناف على عنصر.

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


## العمل مع طرق `setTimeout()` و `setInterval()`

- **طريقة `setTimeout()`**: تتيح لك هذه الطريقة تأخير تنفيذ إجراء لفترة زمنية محددة.

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **طريقة `setInterval()`**: تستمر هذه الطريقة في تنفيذ قطعة شفرة بشكل متكرر بفاصل زمني محدد. بما أن `setInterval()` تستمر في تنفيذ الدالة المقدمة عند الفاصل المحدد، قد ترغب في إيقافها. لهذا، عليك استخدام طريقة `clearInterval()`.

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

## طريقة `requestAnimationFrame()`

- **التعريف**: تتيح لك هذه الطريقة جدولة الخطوة التالية من الرسوم المتحركة قبل إعادة رسم الشاشة التالية، مما ينتج تجربة سلسة وجذابة بصريًا. إعادة رسم الشاشة التالية تعني اللحظة التي يحدث فيها تحديث المتصفح للعرض البصري لصفحة الويب. يحدث هذا عدة مرات في الثانية، عادةً حوالي 60 مرة (أو 60 إطارًا في الثانية) على معظم الشاشات.

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## واجهة برمجة تطبيقات الرسوم المتحركة على الويب (Web Animations API)

- **التعريف**: تتيح لك واجهة برمجة تطبيقات الرسوم المتحركة على الويب إنشاء الرسوم المتحركة والتحكم بها مباشرة داخل JavaScript.

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

## واجهة برمجة تطبيقات اللوحة (Canvas API)

- **التعريف**: واجهة برمجة تطبيقات اللوحة هي أداة قوية تتيح لك التلاعب بالرسومات داخل ملف JavaScript الخاص بك. للعمل مع Canvas API، تحتاج أولًا إلى توفير عنصر `canvas` في HTML. هذا العنصر يعمل كسطح رسم يمكنك التلاعب به باستخدام طرق وخصائص الواجهات في Canvas API. تحتوي هذه الواجهة على واجهات مثل `HTMLCanvasElement`، و`CanvasRenderingContext2D`، و`CanvasGradient`، و`CanvasPattern`، و`TextMetrics` التي تحتوي على طرق وخصائص يمكنك استخدامها لإنشاء الرسومات في ملف JavaScript الخاص بك.

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

## فتح وإغلاق الحوارات والنوافذ المنبثقة باستخدام JavaScript

- **تعريف الحوارات والنوافذ المنبثقة**: تتيح الحوارات عرض معلومات أو إجراءات مهمة للمستخدمين. باستخدام عنصر الحوار المدمج في HTML، يمكنك بسهولة إنشاء هذه الحوارات (سواء الحوارات المنبثقة أو غير المنبثقة) في تطبيقات الويب الخاصة بك. الحوار المنبثق هو نوع من الحوارات يجبر المستخدم على التفاعل معه قبل أن يتمكن من الوصول إلى بقية التطبيق أو صفحة الويب. بالمقابل، يسمح الحوار غير المنبثق للمستخدم بالاستمرار في التفاعل مع أجزاء أخرى من الصفحة أو التطبيق حتى عندما يكون الحوار مفتوحًا. لا يمنع الوصول إلى بقية المحتوى.
- **طريقة `showModal()`**: تُستخدم هذه الطريقة لفتح حوار منبثق.

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

- **طريقة `close()`**: تُستخدم هذه الطريقة لإغلاق الحوار المنبثق.

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

راجع موضوعات ومفاهيم التلاعب بـ DOM وأحداث النقر باستخدام JavaScript.
