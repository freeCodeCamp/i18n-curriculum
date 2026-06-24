---
id: 6723cc7a8e7aa3b9befd4bac
title: Überprüfung der DOM-Manipulation und Klick-Ereignisse mit JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## Arbeiten mit dem DOM und Web-APIs

- **API**: Eine API (Application Programming Interface) ist eine Sammlung von Regeln und Protokollen, die es Softwareanwendungen ermöglichen, miteinander zu kommunizieren und Daten effizient auszutauschen.
- **Web-API**: Web-APIs sind speziell für Webanwendungen konzipiert. Diese Arten von APIs werden oft in zwei Hauptkategorien unterteilt: Browser-APIs und Drittanbieter-APIs.
- **Browser-APIs**: Diese APIs machen Daten aus dem Browser verfügbar. Als Webentwickler können Sie mit JavaScript auf diese Daten zugreifen und sie manipulieren.
- **Drittanbieter-APIs**: Diese sind nicht standardmäßig im Browser eingebaut. Sie müssen deren Code auf irgendeine Weise abrufen. Normalerweise verfügen sie über eine ausführliche Dokumentation, die erklärt, wie Sie deren Dienste nutzen können. Ein Beispiel ist die Google Maps API, mit der Sie interaktive Karten auf Ihrer Webseite anzeigen können.
- **DOM**: Das DOM steht für Document Object Model. Es ist eine Programmierschnittstelle, die Ihnen erlaubt, mit HTML-Dokumenten zu interagieren. Mit dem DOM können Sie Elemente auf einer Webseite hinzufügen, ändern oder löschen. Die Wurzel des DOM-Baums ist das `html` Element. Es ist der oberste Container für den gesamten Inhalt eines HTML-Dokuments. Alle anderen Knoten sind Nachfahren dieses Wurzelknotens. Unterhalb des Wurzelknotens finden wir weitere Knoten in der Hierarchie. Ein Elternknoten ist ein Element, das andere Elemente enthält. Ein Kindknoten ist ein Element, das innerhalb eines anderen Elements enthalten ist.
- **`navigator` Schnittstelle**: Diese stellt Informationen über die Browserumgebung bereit, wie den User-Agent-String, die Plattform und die Version des Browsers. Ein User-Agent-String ist ein Textstring, der den verwendeten Browser und das Betriebssystem identifiziert.
- **`window` Schnittstelle**: Diese repräsentiert das Browserfenster, das das DOM-Dokument enthält. Sie bietet Methoden und Eigenschaften zur Interaktion mit dem Browserfenster, wie das Ändern der Fenstergröße, das Öffnen neuer Fenster und das Navigieren zu verschiedenen URLs.

## Arbeiten mit den `querySelector()`, `querySelectorAll()` und `getElementById()` Methoden

- **`getElementById()` Methode**: Diese Methode wird verwendet, um ein Objekt zu erhalten, das das HTML-Element mit der angegebenen `id` repräsentiert. Denken Sie daran, dass IDs in jedem HTML-Dokument eindeutig sein müssen, daher gibt diese Methode nur ein Element-Objekt zurück.

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

- **`querySelector()` Methode**: Diese Methode wird verwendet, um das erste Element im HTML-Dokument zu erhalten, das dem als Argument übergebenen CSS-Selektor entspricht.

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

- **`querySelectorAll()` Methode**: Mit dieser Methode können Sie eine Liste aller DOM-Elemente erhalten, die einem bestimmten CSS-Selektor entsprechen.

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

## Arbeiten mit den `innerText()`, `innerHTML()`, `createElement()` und `textContent()` Methoden

- **`innerHTML` Eigenschaft**: Dies ist eine Eigenschaft des `Element`, die verwendet wird, um Teile der HTML-Auszeichnung zu setzen oder zu aktualisieren.

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

- **`createElement` Methode**: Diese wird verwendet, um ein HTML-Element zu erstellen.

```js
const img = document.createElement("img");
```

- **`innerText`**: Dies repräsentiert den sichtbaren Textinhalt des HTML-Elements und seiner Nachfahren.

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

- **`textContent`**: Dies gibt den reinen Textinhalt eines Elements zurück, einschließlich aller Texte innerhalb seiner Nachfahren.

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

## Arbeiten mit den `appendChild()` und `removeChild()` Methoden

- **`appendChild()` Methode**: Diese Methode wird verwendet, um einen Knoten am Ende der Liste der Kinder eines angegebenen Elternknotens hinzuzufügen.

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

- **`removeChild()` Methode**: Diese Methode wird verwendet, um einen Knoten aus dem DOM zu entfernen.

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

## Arbeiten mit der `setAttribute()` Methode

- **Definition**: Diese Methode wird verwendet, um ein Attribut für ein gegebenes Element zu setzen. Wenn das Attribut bereits existiert, wird der Wert aktualisiert. Andernfalls wird ein neues Attribut mit einem Wert hinzugefügt.

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

## Ereignisobjekt

- **Definition**: Das `Event` Objekt ist eine Nutzlast, die ausgelöst wird, wenn ein Benutzer auf irgendeine Weise mit Ihrer Webseite interagiert. Diese Interaktionen können alles sein, vom Klicken auf einen Button oder dem Fokussieren einer Eingabe bis hin zum Schütteln des mobilen Geräts. Alle `Event` Objekte haben die `type` Eigenschaft. Diese Eigenschaft zeigt den Typ des Ereignisses an, das die Nutzlast ausgelöst hat, wie keydown oder click. Diese Werte entsprechen den gleichen Werten, die Sie an `addEventListener()` übergeben könnten, wo Sie das `Event` Objekt erfassen und nutzen können.

## `addEventListener()` und `removeEventListener()` Methoden

- **`addEventListener` Methode**: Diese Methode wird verwendet, um auf Ereignisse zu hören. Sie nimmt zwei Argumente: das Ereignis, auf das Sie hören möchten, und eine Funktion, die aufgerufen wird, wenn das Ereignis eintritt. Einige häufige Beispiele für Ereignisse sind Klick-Ereignisse, Eingabe-Ereignisse und Änderungs-Ereignisse.

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

- **`removeEventListener()` Methode**: Diese Methode wird verwendet, um einen zuvor mit der `addEventListener()` Methode hinzugefügten Ereignis-Listener zu entfernen. Dies ist nützlich, wenn Sie aufhören möchten, auf ein bestimmtes Ereignis an einem Element zu hören.

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

- **Inline-Ereignis-Handler**: Inline-Ereignis-Handler sind spezielle Attribute an einem HTML-Element, die verwendet werden, um JavaScript-Code auszuführen, wenn ein Ereignis eintritt. In modernem JavaScript gelten Inline-Ereignis-Handler nicht als bewährte Vorgehensweise. Es wird bevorzugt, stattdessen die `addEventListener` Methode zu verwenden.


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## Das Change-Ereignis

- **Definition**: Das Change-Ereignis ist ein spezielles Ereignis, das ausgelöst wird, wenn der Benutzer den Wert bestimmter Eingabeelemente ändert. Beispiele sind, wenn ein Kontrollkästchen oder eine Optionsschaltfläche aktiviert wird oder wenn der Benutzer eine Auswahl aus einem Datumsauswahlfeld oder Dropdown-Menü trifft.

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

## Ereignis-Bubbling

- **Definition**: Ereignis-Bubbling oder -Propagation beschreibt, wie ein Ereignis „nach oben“ zu übergeordneten Objekten weitergegeben wird, wenn es ausgelöst wird.
- **`stopPropagation()`-Methode**: Diese Methode verhindert die weitere Weitergabe eines Ereignisses.

## Ereignis-Delegation

- **Definition**: Event Delegation ist der Prozess, auf Ereignisse zu hören, die zu einem Elternteil hochgebubbelt sind, anstatt sie direkt am Element zu behandeln, das sie ausgelöst hat.

## DOMContentLoaded

- **Definition**: Das `DOMContentLoaded` Ereignis wird ausgelöst, wenn alles im HTML-Dokument geladen und geparst wurde. Wenn Sie externe Stylesheets oder Bilder haben, wartet das `DOMContentLoaded` Ereignis nicht darauf, dass diese geladen sind. Es wartet nur darauf, dass das HTML geladen ist.

## Arbeiten mit `style` und `classList`

- **`Element.style` Eigenschaft**: Diese Eigenschaft ist eine schreibgeschützte Eigenschaft, die den inline-Stil eines Elements repräsentiert. Sie können diese Eigenschaft verwenden, um den Stil eines Elements zu erhalten oder zu setzen.

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

- **`Element.classList` Eigenschaft**: Diese Eigenschaft ist eine schreibgeschützte Eigenschaft, mit der Sie Klassen an einem Element hinzufügen, entfernen oder umschalten können.

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


## Arbeiten mit den `setTimeout()` und `setInterval()` Methoden

- **`setTimeout()` Methode**: Diese Methode ermöglicht es Ihnen, eine Aktion für eine bestimmte Zeit zu verzögern.

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **`setInterval()`-Methode**: Diese Methode führt ein Stück Code wiederholt in einem festgelegten Intervall aus. Da `setInterval()` die bereitgestellte Funktion im angegebenen Intervall immer wieder ausführt, möchten Sie sie möglicherweise stoppen. Dafür müssen Sie die `clearInterval()`-Methode verwenden.

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

## Die `requestAnimationFrame()` Methode

- **Definition**: Diese Methode ermöglicht es Ihnen, den nächsten Schritt Ihrer Animation vor dem nächsten Bildschirm-Neuzeichnen zu planen, was zu einer flüssigen und optisch ansprechenden Erfahrung führt. Das nächste Bildschirm-Neuzeichnen bezeichnet den Moment, in dem der Browser die visuelle Darstellung der Webseite aktualisiert. Dies geschieht mehrmals pro Sekunde, typischerweise etwa 60 Mal (oder 60 Frames pro Sekunde) auf den meisten Bildschirmen.

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

- **Definition**: Die Web Animations API ermöglicht es Ihnen, Animationen direkt in JavaScript zu erstellen und zu steuern.

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

## Die Canvas API

- **Definition**: Die Canvas API ist ein leistungsstarkes Werkzeug, mit dem Sie Grafiken direkt in Ihrer JavaScript-Datei manipulieren können. Um mit der Canvas API zu arbeiten, müssen Sie zuerst ein `canvas` Element in HTML bereitstellen. Dieses Element fungiert als Zeichenfläche, die Sie mit den Instanzmethoden und Eigenschaften der Schnittstellen in der Canvas API manipulieren können. Diese API enthält Schnittstellen wie `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern` und `TextMetrics`, die Methoden und Eigenschaften enthalten, mit denen Sie Grafiken in Ihrer JavaScript-Datei erstellen können.

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

## Öffnen und Schließen von Dialogen und Modals mit JavaScript

- **Definitionen von Modal und Dialog**: Dialoge ermöglichen es Ihnen, wichtige Informationen oder Aktionen für Benutzer anzuzeigen. Mit dem eingebauten HTML-Dialogelement können Sie diese Dialoge (sowohl modale als auch nicht-modale Dialoge) in Ihren Webanwendungen einfach erstellen. Ein modaler Dialog ist eine Art Dialog, der den Benutzer zwingt, mit ihm zu interagieren, bevor er auf den Rest der Anwendung oder Webseite zugreifen kann. Im Gegensatz dazu erlaubt ein nicht-modaler Dialog dem Benutzer, weiterhin mit anderen Teilen der Seite oder Anwendung zu interagieren, auch wenn der Dialog geöffnet ist. Er verhindert nicht den Zugriff auf den restlichen Inhalt.
- **`showModal()` Methode**: Diese Methode wird verwendet, um ein Modal zu öffnen.

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

- **`close()` Methode**: Diese Methode wird verwendet, um das Modal zu schließen.

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

Überprüfen Sie die Themen und Konzepte zur DOM-Manipulation und zu Klick-Ereignissen mit JavaScript.
