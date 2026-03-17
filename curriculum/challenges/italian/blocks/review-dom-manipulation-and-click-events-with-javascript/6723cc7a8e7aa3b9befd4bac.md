---
id: 6723cc7a8e7aa3b9befd4bac
title: Revisione sulla manipolazione del DOM e sugli eventi click con JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## Lavorare con il DOM e le API web

- **API**: Un’API (Application Programming Interface) è un insieme di regole e protocolli che permettono alle applicazioni software di comunicare tra loro e scambiare dati in modo efficiente.
- **API web**: Le API web sono progettate specificamente per le applicazioni web. Questi tipi di API sono spesso divisi in due categorie principali: API del browser e API di terze parti.
- **API del browser**: Queste API espongono dati dal browser. Come sviluppatore web, puoi consultare e manipolare questi dati usando JavaScript.
- **API di terze parti**: Queste non sono integrate nel browser per impostazione predefinita. Devi recuperare il loro codice in qualche modo. Di solito, hanno una documentazione dettagliata che spiega come usare i loro servizi. Un esempio è l’API di Google Maps, che puoi usare per mostrare mappe interattive sul tuo sito web.
- **DOM**: Il DOM sta per Document Object Model. È un’interfaccia di programmazione che ti permette di interagire con i documenti HTML. Con il DOM puoi aggiungere, modificare o eliminare elementi su una pagina web. La radice dell’albero DOM è l’elemento `html`. È il contenitore di livello superiore per tutto il contenuto di un documento HTML. Tutti gli altri nodi sono discendenti di questo nodo radice. Poi, sotto il nodo radice, troviamo altri nodi nella gerarchia. Un nodo genitore è un elemento che contiene altri elementi. Un nodo figlio è un elemento contenuto all’interno di un altro elemento.
- **Interfaccia `navigator`**: Questa fornisce informazioni sull’ambiente del browser, come la stringa user agent, la piattaforma e la versione del browser. Una stringa user agent è una stringa di testo che identifica il browser e il sistema operativo in uso.
- **Interfaccia `window`**: Questa rappresenta la finestra del browser che contiene il documento DOM. Fornisce metodi e proprietà per interagire con la finestra del browser, come ridimensionare la finestra, aprire nuove finestre e navigare verso URL diversi.

## Lavorare con i metodi `querySelector()`, `querySelectorAll()` e `getElementById()`

- **Metodo `getElementById()`**: Questo metodo serve per ottenere un oggetto che rappresenta l’elemento HTML con l’`id` specificato. Ricorda che gli id devono essere unici in ogni documento HTML, quindi questo metodo restituirà solo un oggetto Element.

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

- **Metodo `querySelector()`**: Questo metodo serve per ottenere il primo elemento nel documento HTML che corrisponde al selettore CSS passato come argomento.

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

- **Metodo `querySelectorAll()`**: Puoi usare questo metodo per ottenere una lista di tutti gli elementi DOM che corrispondono a un selettore CSS specifico.

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

## Lavorare con i metodi `innerText()`, `innerHTML()`, `createElement()` e `textContent()`

- **Proprietà `innerHTML`**: Questa è una proprietà del `Element` usata per impostare o aggiornare parti del markup HTML.

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

- **Metodo `createElement`**: Serve per creare un elemento HTML.

```js
const img = document.createElement("img");
```

- **`innerText`**: Rappresenta il contenuto testuale visibile dell’elemento HTML e dei suoi discendenti.

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

- **`textContent`**: Restituisce il contenuto testuale semplice di un elemento, inclusi tutti i testi all’interno dei suoi discendenti.

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

## Lavorare con i metodi `appendChild()` e `removeChild()`

- **Metodo `appendChild()`**: Questo metodo serve per aggiungere un nodo alla fine della lista dei figli di un nodo genitore specificato.

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

- **Metodo `removeChild()`**: Questo metodo serve per rimuovere un nodo dal DOM.

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

## Lavorare con il metodo `setAttribute()`

- **Definizione**: Questo metodo serve per impostare l’attributo di un dato elemento. Se l’attributo esiste già, allora il valore viene aggiornato. Altrimenti, viene aggiunto un nuovo attributo con un valore.

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

## Oggetto evento

- **Definizione**: L’oggetto `Event` è un payload che si attiva quando un utente interagisce in qualche modo con la tua pagina web. Queste interazioni possono essere qualsiasi cosa, dal cliccare un pulsante o mettere il focus su un input fino a scuotere il dispositivo mobile. Tutti gli oggetti `Event` avranno la proprietà `type`. Questa proprietà rivela il tipo di evento che ha attivato il payload, come keydown o click. Questi valori corrisponderanno agli stessi valori che potresti passare a `addEventListener()`, dove puoi catturare e utilizzare l’oggetto `Event`.

## Metodi `addEventListener()` e `removeEventListener()`

- **Metodo `addEventListener`**: Questo metodo serve per ascoltare gli eventi. Prende due argomenti: l’evento che vuoi ascoltare e una funzione che verrà chiamata quando l’evento si verifica. Alcuni esempi comuni di eventi sono eventi click, eventi input e eventi change.

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

- **Metodo `removeEventListener()`**: Questo metodo serve per rimuovere un event listener che era stato aggiunto precedentemente a un elemento usando il metodo `addEventListener()`. Questo è utile quando vuoi smettere di ascoltare un particolare evento su un elemento.

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

- **Gestori di eventi in linea**: I gestori di eventi in linea sono attributi speciali su un elemento HTML usati per eseguire codice JavaScript quando si verifica un evento. Nel JavaScript moderno, i gestori di eventi in linea non sono considerati una buona pratica. È preferibile usare invece il metodo `addEventListener`.

:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## L’evento change

- **Definizione**: L’evento change è un evento speciale che si attiva quando l’utente modifica il valore di certi elementi input. Esempi includono quando si seleziona una casella di spunta o un pulsante di opzione. Oppure quando l’utente fa una selezione da qualcosa come un selettore di data o un menu a discesa.

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

## Propagazione degli eventi (event bubbling)

- **Definizione**: La propagazione degli eventi, o event bubbling, si riferisce a come un evento “risale” verso gli oggetti genitori quando viene attivato.
- **Metodo `stopPropagation()`**: Questo metodo impedisce la propagazione ulteriore di un evento.

## Delegazione degli eventi

- **Definizione**: La delegazione degli eventi è il processo di ascoltare eventi che sono risaliti a un genitore, invece di gestirli direttamente sull’elemento che li ha attivati.

## DOMContentLoaded

- **Definizione**: L’evento `DOMContentLoaded` si attiva quando tutto il documento HTML è stato caricato e analizzato. Se hai fogli di stile esterni o immagini, l’evento `DOMContentLoaded` non aspetterà che questi siano caricati. Aspetterà solo che l’HTML sia caricato.

## Lavorare con `style` e `classList`

- **Proprietà `Element.style`**: Questa proprietà è di sola lettura e rappresenta lo stile in linea di un elemento. Puoi usare questa proprietà per ottenere o impostare lo stile di un elemento.

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

- **Proprietà `Element.classList`**: Questa proprietà è di sola lettura e può essere usata per aggiungere, rimuovere o alternare le classi su un elemento.

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

## Lavorare con i metodi `setTimeout()` e `setInterval()`

- **Metodo `setTimeout()`**: Questo metodo ti permette di ritardare un’azione per un tempo specificato.

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **Metodo `setInterval()`**: Questo metodo esegue ripetutamente un pezzo di codice a intervalli regolari. Poiché `setInterval()` continua a eseguire la funzione fornita all’intervallo specificato, potresti volerlo fermare. Per questo, devi usare il metodo `clearInterval()`.

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

## Il metodo `requestAnimationFrame()`

- **Definizione**: Questo metodo ti permette di programmare il passaggio successivo della tua animazione prima del prossimo ridisegno dello schermo, ottenendo un’esperienza fluida e visivamente piacevole. Il prossimo ridisegno dello schermo si riferisce al momento in cui il browser aggiorna la visualizzazione visiva della pagina web. Questo avviene più volte al secondo, tipicamente circa 60 volte (o 60 frame al secondo) sulla maggior parte dei display.

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## Web Animations API

- **Definizione**: La Web Animations API ti permette di creare e controllare animazioni direttamente dentro JavaScript.

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

## La Canvas API

- **Definizione**: La Canvas API è uno strumento potente che ti permette di manipolare grafica direttamente nel tuo file JavaScript. Per lavorare con la Canvas API, devi prima fornire un elemento `canvas` in HTML. Questo elemento funge da superficie di disegno che puoi manipolare con i metodi e le proprietà delle interfacce della Canvas API. Questa API ha interfacce come `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern` e `TextMetrics` che contengono metodi e proprietà che puoi usare per creare grafica nel tuo file JavaScript.

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

## Aprire e chiudere dialog e modali con JavaScript

- **Definizioni di modale e dialog**: I dialog ti permettono di mostrare informazioni o azioni importanti agli utenti. Con l’elemento dialog integrato in HTML, puoi creare facilmente questi dialog (sia modali che non modali) nelle tue app web. Un dialog modale è un tipo di dialog che obbliga l’utente a interagire con esso prima di poter accedere al resto dell’applicazione o della pagina web. Al contrario, un dialog non modale permette all’utente di continuare a interagire con altre parti della pagina o dell’applicazione anche quando il dialog è aperto. Non impedisce l’accesso al resto del contenuto.
- **Metodo `showModal()`**: Questo metodo serve per aprire un modale.

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

- **Metodo `close()`**: Questo metodo serve per chiudere il modale.

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

Rivedi gli argomenti e i concetti sulla manipolazione del DOM e sugli eventi click con JavaScript.
