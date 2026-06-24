---
id: 6723cc7a8e7aa3b9befd4bac
title: Ukaguzi wa uendeshaji wa DOM na matukio ya bofya kwa kutumia JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## Kufanya kazi na DOM na Web API

- **API**: API (Application Programming Interface) ni seti ya kanuni na itifaki zinazowezesha programu za kompyuta kuwasiliana na kubadilishana data kwa ufanisi.
- **Web API**: Web API zimeundwa mahsusi kwa ajili ya programu za mtandao. Aina hizi za API mara nyingi hugawanywa katika makundi mawili makuu: API za kivinjari na API za wahusika wengine.
- **API za kivinjari**: API hizi huweka wazi data kutoka kwenye kivinjari. Kama msanidi programu wa mtandao, unaweza kufikia na kudhibiti data hii kwa kutumia JavaScript.
- **API za wahusika wengine**: Hizi hazijajengwa ndani ya kivinjari kwa chaguo-msingi. Lazima upate msimbo wao kwa namna fulani. Kwa kawaida, zitakuwa na nyaraka za kina zinazoelezea jinsi ya kutumia huduma zao. Mfano ni Google Maps API, ambayo unaweza kutumia kuonyesha ramani shirikishi kwenye tovuti yako.
- **DOM**: DOM inasimama kwa Document Object Model. Hii ni kiolesura cha programu kinachokuwezesha kuingiliana na hati za HTML. Ukiwa na DOM, unaweza kuongeza, kurekebisha, au kufuta vipengele kwenye ukurasa wa mtandao. Mizizi ya mti wa DOM ni kipengele cha `html`. Hiki ndicho kontena kuu la maudhui yote ya hati ya HTML. Nodi zote nyingine ni wazao wa nodi hii ya mizizi. Kisha, chini ya nodi ya mizizi, tunapata nodi nyingine kwenye mpangilio wa uongozi. Nodi ya mzazi ni kipengele kinachobeba vipengele vingine. Nodi ya mtoto ni kipengele kilicho ndani ya kipengele kingine.
- **Kiolesura cha `navigator`**: Hii hutoa taarifa kuhusu mazingira ya kivinjari, kama vile mfuatano wa wakala wa mtumiaji (user agent string), jukwaa, na toleo la kivinjari. Mfuatano wa wakala wa mtumiaji ni mfuatano wa maandishi unaotambulisha kivinjari na mfumo wa uendeshaji unaotumika.
- **Kiolesura cha `window`**: Hii inawakilisha dirisha la kivinjari linalobeba hati ya DOM. Inatoa njia na sifa za kuingiliana na dirisha la kivinjari, kama vile kubadilisha ukubwa wa dirisha, kufungua madirisha mapya, na kuvinjari kwenye URL tofauti.

## Kufanya kazi na njia za `querySelector()`, `querySelectorAll()` na `getElementById()`

- **Njia ya `getElementById()`**: Njia hii hutumika kupata kitu kinachowakilisha kipengele cha HTML chenye `id` maalum. Kumbuka kwamba id lazima ziwe za kipekee kwenye kila hati ya HTML, hivyo njia hii itarejesha kitu kimoja tu cha Element.

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

- **Njia ya `querySelector()`**: Njia hii hutumika kupata kipengele cha kwanza kwenye hati ya HTML kinacholingana na kichaguzi cha CSS kilichopitishwa kama hoja.

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

- **Njia ya `querySelectorAll()`**: Unaweza kutumia njia hii kupata orodha ya vipengele vyote vya DOM vinavyolingana na kichaguzi maalum cha CSS.

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

## Kufanya kazi na njia za `innerText()`, `innerHTML()`, `createElement()` na `textContent()`

- **Sifa ya `innerHTML`**: Hii ni sifa ya `Element` inayotumika kuweka au kusasisha sehemu za alama za uandishi za HTML.

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

- **Njia ya `createElement`**: Hii hutumika kuunda kipengele cha HTML.

```js
const img = document.createElement("img");
```

- **`innerText`**: Hii inawakilisha maudhui ya maandishi yanayoonekana ya kipengele cha HTML na wazao wake.

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

- **`textContent`**: Hii hurejesha maudhui ya maandishi tupu ya kipengele, ikiwa ni pamoja na maandishi yote ndani ya wazao wake.

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

## Kufanya kazi na njia za `appendChild()` na `removeChild()`

- **Njia ya `appendChild()`**: Njia hii hutumika kuongeza nodi mwisho wa orodha ya watoto wa nodi ya mzazi iliyobainishwa.

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

- **Njia ya `removeChild()`**: Njia hii hutumika kuondoa nodi kutoka kwenye DOM.

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

## Fanya kazi na njia ya `setAttribute()`

- **Ufafanuzi**: Njia hii hutumika kuweka sifa ya kipengele fulani. Ikiwa sifa tayari ipo, thamani yake inasasishwa. Vinginevyo, sifa mpya itaongezwa na thamani.

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

## Kitu cha Tukio (Event Object)

- **Ufafanuzi**: Kitu cha `Event` ni mzigo unaochochewa wakati mtumiaji anashirikiana na ukurasa wako wa mtandao kwa namna fulani. Mwingiliano huu unaweza kuwa kubofya kitufe, kuweka makini kwenye ingizo, au hata kutikisa kifaa chao cha mkononi. Vitu vyote vya `Event` vitakuwa na sifa ya `type`. Sifa hii inaonyesha aina ya tukio lililosababisha mzigo, kama vile keydown au click. Thamani hizi zitafanana na zile unazoweza kupitisha kwa `addEventListener()`, ambapo unaweza kunasa na kutumia kitu cha `Event`.

## Njia za `addEventListener()` na `removeEventListener()`

- **Njia ya `addEventListener`**: Njia hii hutumika kusikiliza matukio. Inachukua hoja mbili: tukio unalotaka kusikiliza na kitendakazi kitakachoitwa tukio linapotokea. Mifano ya kawaida ya matukio ni matukio ya kubofya, matukio ya ingizo, na matukio ya mabadiliko.

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

- **Njia ya `removeEventListener()`**: Njia hii hutumika kuondoa msikilizaji wa tukio uliowekwa awali kwenye kipengele kwa kutumia njia ya `addEventListener()`. Hii ni muhimu unapohitaji kuacha kusikiliza tukio fulani kwenye kipengele.

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

- **Mshughulikiaji wa tukio ndani ya mstari (Inline Event Handlers)**: Mshughulikiaji wa tukio ndani ya mstari ni sifa maalum kwenye kipengele cha HTML zinazotumika kutekeleza msimbo wa JavaScript tukio linapotokea. Katika JavaScript ya kisasa, mshughulikiaji wa tukio ndani ya mstari hauzingatiwi kama mbinu bora. Inapendekezwa kutumia njia ya `addEventListener` badala yake.


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## Tukio la Change

- **Ufafanuzi**: Tukio la change ni tukio maalum linalochochewa mtumiaji anapobadilisha thamani ya baadhi ya vipengele vya ingizo. Mifano ni pamoja na kisanduku cha kuchagua au kitufe cha radio kinapochaguliwa. Au mtumiaji anapofanya chaguo kutoka kitu kama kionyeshi tarehe au menyu kunjuzi.

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

## Kuinuka kwa Tukio

- **Ufafanuzi**: Kuinuka kwa tukio, au usambazaji, kunahusu jinsi tukio linavyoinuka hadi kwa vitu vya mzazi linapochochewa.
- **Njia ya `stopPropagation()`**: Njia hii huzuia usambazaji zaidi wa tukio.

## Ugawaji wa Tukio

- **Ufafanuzi**: Event delegation ni mchakato wa kusikiliza matukio yaliyopanda hadi kwa mzazi, badala ya kuyashughulikia moja kwa moja kwenye kipengele kilichochochea tukio.

## DOMContentLoaded

- **Ufafanuzi**: Tukio la `DOMContentLoaded` huchochewa kila kitu kwenye hati ya HTML kinapopakiwa na kuchambuliwa. Ikiwa una mitindo ya nje au picha, tukio la `DOMContentLoaded` halitasubiri hivyo vitu kupakiwa. Litasubiri tu HTML ipakiwe.

## Kufanya kazi na `style` na `classList`

- **Sifa ya `Element.style`**: Sifa hii ni sifa isiyoweza kubadilishwa moja kwa moja inayowakilisha mtindo wa ndani ya mstari wa kipengele. Unaweza kutumia sifa hii kupata au kuweka mtindo wa kipengele.

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

- **Sifa ya `Element.classList`**: Sifa hii ni sifa isiyoweza kubadilishwa moja kwa moja inayoweza kutumika kuongeza, kuondoa, au kubadilisha madarasa kwenye kipengele.

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


## Kufanya kazi na njia za `setTimeout()` na `setInterval()`

- **Njia ya `setTimeout()`**: Njia hii inakuwezesha kuchelewesha kitendo kwa muda maalum.

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **Njia ya `setInterval()`**: Njia hii inaendesha kipande cha msimbo mara kwa mara kwa muda uliowekwa. Kwa kuwa `setInterval()` inaendelea kutekeleza kitendakazi kilichotolewa kwa muda uliotajwa, unaweza kutaka kuizuia. Kwa hili, unapaswa kutumia njia ya `clearInterval()`.

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

## Njia ya `requestAnimationFrame()`

- **Ufafanuzi**: Njia hii inakuwezesha kupanga hatua inayofuata ya uhuishaji wako kabla ya upakizi wa skrini unaofuata, na hivyo kutoa uzoefu laini na wa kuvutia kimtazamo. Upakizi wa skrini unaofuata unamaanisha wakati kivinjari kinapofanya upya onyesho la ukurasa wa mtandao. Hii hutokea mara nyingi kwa sekunde, kawaida karibu mara 60 (au fremu 60 kwa sekunde) kwenye maonyesho mengi.

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## API ya Uhuishaji wa Mtandao

- **Ufafanuzi**: Web Animations API inakuwezesha kuunda na kudhibiti uhuishaji moja kwa moja ndani ya JavaScript.

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

- **Ufafanuzi**: Canvas API ni zana yenye nguvu inayokuwezesha kudhibiti michoro moja kwa moja ndani ya faili yako ya JavaScript. Ili kufanya kazi na Canvas API, kwanza unahitaji kutoa kipengele cha `canvas` kwenye HTML. Kipengele hiki hufanya kama uso wa kuchorea unaoweza kudhibiti kwa kutumia njia na sifa za kiolesura kwenye Canvas API. API hii ina kiolesura kama `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern`, na `TextMetrics` ambavyo vina njia na sifa unazoweza kutumia kuunda michoro kwenye faili yako ya JavaScript.

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

## Kufungua na kufunga madirisha ya mazungumzo (dialogs na modals) kwa JavaScript

- **Ufafanuzi wa Modal na Dialog**: Dialog hukuwezesha kuonyesha taarifa muhimu au vitendo kwa watumiaji. Ukiwa na kipengele cha dialog kilichojengwa ndani ya HTML, unaweza kuunda dialog hizi (modal na zisizo modal) kwa urahisi kwenye programu zako za mtandao. Modal dialog ni aina ya dialog inayomlazimisha mtumiaji kushirikiana nayo kabla ya kupata sehemu nyingine ya programu au ukurasa wa mtandao. Kinyume chake, dialog isiyo modal inamruhusu mtumiaji kuendelea kushirikiana na sehemu nyingine za ukurasa au programu hata wakati dialog iko wazi. Haizuii upatikanaji wa maudhui mengine.
- **Njia ya `showModal()`**: Njia hii hutumika kufungua modal.

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

- **Njia ya `close()`**: Njia hii hutumika kufunga modal.

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

Kagua mada na dhana za uendeshaji wa DOM na matukio ya bofya kwa kutumia JavaScript.
