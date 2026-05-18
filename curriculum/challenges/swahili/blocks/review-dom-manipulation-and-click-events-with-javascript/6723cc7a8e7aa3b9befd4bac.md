---
id: 6723cc7a8e7aa3b9befd4bac
title: Ukaguzi wa uendeshaji wa DOM na matukio ya bofya kwa kutumia JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## Kufanya kazi na DOM na API za mtandao

- **API**: API (Application Programming Interface) ni seti ya sheria na itifaki zinazoruhusu programu za kompyuta kuwasiliana na kubadilishana data kwa ufanisi.
- **Web API**: API za mtandao zimeundwa mahsusi kwa programu za mtandao. Aina hizi za API mara nyingi hugawanywa katika makundi mawili makuu: API za kivinjari na API za wahusika wengine.
- **API za kivinjari**: API hizi zinaweka wazi data kutoka kwa kivinjari. Kama msanidi programu wa mtandao, unaweza kupata upatikanaji na kuendesha data hii kwa kutumia JavaScript.
- **API za wahusika wengine**: Hizi hazijajengwa ndani ya kivinjari kwa chaguo-msingi. Lazima upate msimbo wao kwa njia fulani. Kawaida, zitakuwa na nyaraka za kina zinazoelezea jinsi ya kutumia huduma zao. Mfano ni API ya Google Maps, ambayo unaweza kuitumia kuonyesha ramani za mwingiliano kwenye tovuti yako.
- **DOM**: DOM inasimama kwa Document Object Model. Ni kiolesura cha programu kinachokuwezesha kuingiliana na nyaraka za HTML. Kwa DOM, unaweza kuongeza, kubadilisha, au kufuta vipengele kwenye ukurasa wa mtandao. Mzizi wa mti wa DOM ni kipengele cha `html`. Ni kontena la ngazi ya juu kwa maudhui yote ya hati ya HTML. Nodi zote nyingine ni mzao wa nodi hii ya mzizi. Kisha, chini ya nodi ya mzizi, tunapata nodi nyingine katika mfuatano wa ngazi. Nodi ya mzazi ni kipengele kinachojumuisha vipengele vingine. Nodi ya mtoto ni kipengele kilichomo ndani ya kipengele kingine.
- **Kiolesura cha `navigator`**: Hiki hutoa taarifa kuhusu mazingira ya kivinjari, kama mfuatano wa user agent, jukwaa, na toleo la kivinjari. Mfuatano wa user agent ni mfuatano wa maandishi unaotambulisha kivinjari na mfumo wa uendeshaji unaotumika.
- **Kiolesura cha `window`**: Huu unawakilisha dirisha la kivinjari linalojumuisha hati ya DOM. Hutoa njia na sifa za kuingiliana na dirisha la kivinjari, kama kubadilisha ukubwa wa dirisha, kufungua madirisha mapya, na kuvinjari URL tofauti.

## Kufanya kazi na Njia za `querySelector()`, `querySelectorAll()` na `getElementById()`

- **Njia ya `getElementById()`**: Njia hii hutumika kupata kitu kinacho wakilisha kipengele cha HTML chenye `id` iliyotajwa. Kumbuka kuwa ids lazima ziwe za kipekee katika kila hati ya HTML, hivyo njia hii itarudisha kitu kimoja cha Element tu.

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

- **Njia ya `querySelector()`**: Njia hii hutumika kupata kipengele cha kwanza katika hati ya HTML kinacholingana na kichaguzi cha CSS kilichotumwa kama hoja.

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

## Kufanya kazi na Njia za `innerText()`, `innerHTML()`, `createElement()` na `textContent()`

- **Sifa ya `innerHTML`**: Hii ni sifa ya `Element` inayotumika kuweka au kusahihisha sehemu za alama za uandishi za HTML.

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

- **`innerText`**: Huu unawakilisha maudhui ya maandishi yanayoonekana ya kipengele cha HTML na mzao wake.

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

- **`textContent`**: Huu hurudisha maudhui ya maandishi ya kawaida ya kipengele, ikiwa ni pamoja na maandishi yote ndani ya mzao wake.

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

## Kufanya kazi na Njia za `appendChild()` na `removeChild()`

- **Njia ya `appendChild()`**: Njia hii hutumika kuongeza nodi mwishoni mwa orodha ya watoto wa nodi ya mzazi iliyotajwa.

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

- **Njia ya `removeChild()`**: Njia hii hutumika kufuta nodi kutoka kwenye DOM.

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

## Kufanya kazi na Njia ya `setAttribute()`

- **Ufafanuzi**: Njia hii hutumika kuweka sifa ya kipengele fulani. Ikiwa sifa tayari ipo, basi thamani yake husahihishwa. Vinginevyo, sifa mpya inaongezwa na thamani yake.

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

## Kitu cha Tukio

- **Ufafanuzi**: Kitu cha `Event` ni mzigo unaochochea tukio linapotokea wakati mtumizi anavyoshirikiana na ukurasa wako wa mtandao kwa njia fulani. Mwingiliano huu unaweza kuwa chochote kuanzia kubofya kitufe au kuweka makini kwenye ingizo hadi kutetemesha kifaa cha mkononi. Vitu vyote vya `Event` vitakuwa na sifa ya `type`. Sifa hii inaonyesha aina ya tukio lililochochea mzigo, kama vile keydown au click. Thamani hizi zitahusiana na zile unazoweza kutuma kwa `addEventListener()`, ambapo unaweza kunasa na kutumia kitu cha `Event`.

## Njia za `addEventListener()` na `removeEventListener()`

- **Njia ya `addEventListener`**: Njia hii hutumika kusikiliza matukio. Inachukua hoja mbili: tukio unalotaka kusikiliza na kitendakazi ambacho kitaitwa tukio litakapotokea. Mifano ya kawaida ya matukio ni matukio ya bofya, matukio ya ingizo, na matukio ya mabadiliko.

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

- **Njia ya `removeEventListener()`**: Njia hii hutumika kuondoa mshughulikiaji wa tukio aliyeongezwa awali kwa kipengele kwa kutumia njia ya `addEventListener()`. Hii ni muhimu unapotaka kuacha kusikiliza tukio fulani kwenye kipengele.

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

- **Mshughulikiaji wa Matukio ndani ya mstari**: Mshughulikiaji wa matukio ndani ya mstari ni sifa maalum kwenye kipengele cha HTML zinazotumika kutekeleza msimbo wa JavaScript wakati tukio linapotokea. Katika JavaScript ya kisasa, mshughulikiaji wa matukio ndani ya mstari hauzingatiwi kama mbinu bora. Inapendekezwa kutumia njia ya `addEventListener` badala yake.

:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## Tukio la Mabadiliko

- **Ufafanuzi**: Tukio la mabadiliko ni tukio maalum linalochochewa wakati mtumizi anapobadilisha thamani ya vipengele fulani vya ingizo. Mifano ni kama wakati kisanduku cha kuchagua au kitufe cha radio kinapochaguliwa. Au wakati mtumizi anachagua kitu kutoka kwa chaguo kama chaguo la tarehe au menyu ya kushuka.

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

- **Ufafanuzi**: Ugawaji wa tukio ni mchakato wa kusikiliza matukio ambayo yameinuka hadi kwa mzazi, badala ya kuyashughulikia moja kwa moja kwenye kipengele kilichochochea tukio.

## DOMContentLoaded

- **Ufafanuzi**: Tukio la `DOMContentLoaded` linachochewa wakati kila kitu katika hati ya HTML limepakuliwa na kuchambuliwa. Ikiwa una majalada ya mitindo ya nje, au picha, tukio la `DOMContentLoaded` halitasubiri yale yapelekewe. Litangojea tu HTML ipakwe.

## Kufanya kazi na `style` na `classList`

- **Sifa ya `Element.style`**: Sifa hii ni ya kusoma tu inayowakilisha mtindo wa ndani ya mstari wa kipengele. Unaweza kutumia sifa hii kupata au kuweka mtindo wa kipengele.

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

- **Sifa ya `Element.classList`**: Sifa hii ni ya kusoma tu inayoweza kutumika kuongeza, kuondoa, au kubadili madarasa kwenye kipengele.

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

## Kufanya kazi na Njia za `setTimeout()` na `setInterval()`

- **Njia ya `setTimeout()`**: Njia hii inakuwezesha kuchelewesha kitendo kwa muda uliotajwa.

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

- **Ufafanuzi**: Njia hii inakuwezesha kupanga hatua inayofuata ya uhuishaji wako kabla ya skrini kupakwa upya, na hivyo kutoa uzoefu laini na wa kuvutia kwa macho. Kupakwa upya kwa skrini kunahusu wakati kivinjari kinapoonyesha tena maonyesho ya ukurasa wa mtandao. Hii hutokea mara nyingi kwa sekunde, kawaida takriban mara 60 (au fremu 60 kwa sekunde) kwenye maonyesho mengi.

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

- **Ufafanuzi**: API ya Uhuishaji wa Mtandao inakuwezesha kuunda na kudhibiti uhuishaji moja kwa moja ndani ya JavaScript.

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

## API ya Turubai ya Kuchora

- **Ufafanuzi**: API ya Turubai ya Kuchora ni chombo chenye nguvu kinachokuwezesha kuendesha michoro ndani ya faili lako la JavaScript. Ili kufanya kazi na API ya Turubai ya Kuchora, kwanza unahitaji kutoa kipengele cha `canvas` katika HTML. Kipengele hiki hufanya kazi kama uso wa kuchora unaoweza kuendeshwa kwa njia na sifa za kiolesura katika API ya Turubai ya Kuchora. API hii ina kiolesura kama `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern`, na `TextMetrics` ambavyo vina njia na sifa unazoweza kutumia kuunda michoro katika faili lako la JavaScript.

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

## Kufungua na Kufunga Madialogu na Modal kwa kutumia JavaScript

- **Ufafanuzi wa Modal na Dialog**: Madialogu hukuwezesha kuonyesha taarifa muhimu au vitendo kwa watumizi. Kwa kipengele cha dialog kilichojengwa ndani ya HTML, unaweza kwa urahisi kuunda madialogu haya (modal na yasiyo ya modal) katika programu zako za mtandao. Dialogu ya modal ni aina ya dialogu inayolazimisha mtumizi kuingiliana nayo kabla ya kupata upatikanaji wa sehemu nyingine za programu au ukurasa wa mtandao. Kinyume chake, dialogu isiyo ya modal inaruhusu mtumizi kuendelea kuingiliana na sehemu nyingine za ukurasa au programu hata wakati dialogu iko wazi. Hainizuizi upatikanaji wa maudhui mengine.
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
