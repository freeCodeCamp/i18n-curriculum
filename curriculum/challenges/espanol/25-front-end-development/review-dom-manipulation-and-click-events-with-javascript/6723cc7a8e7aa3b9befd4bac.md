---
id: 6723cc7a8e7aa3b9befd4bac
title: Manipulación del DOM y eventos de clic con JavaScript Revisión
challengeType: 24
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --description--

## Trabajando con el DOM y Web APIs

- **API**: Una API (Interfaz de Programación de Aplicaciones) es un conjunto de reglas y protocolos que permite a las aplicaciones de software comunicarse entre sí e intercambiar datos de forma eficiente.
- **Web API**: Las Web APIs están específicamente diseñadas para aplicaciones web. Estos tipos de API a menudo se dividen en dos categorías principales: API del navegador y API de terceros.
- **API del navegador**: Estas API exponen datos del navegador. Como desarrollador web, puedes acceder y manipular estos datos utilizando JavaScript.
- **APIs de terceros**: Estas no están incorporadas en el navegador por defecto. Tienes que recuperar su código de alguna manera. Por lo general, tendrán documentación detallada que explica cómo usar sus servicios. Un ejemplo es la API de Google Maps, que puedes usar para mostrar mapas interactivos en tu página web.
- **DOM**: El DOM significa Modelo de Objeto Documental. Es una interfaz de programación que te permite interactuar con documentos HTML. Con el DOM, puedes añadir, modificar o eliminar elementos en una página web. La raíz del árbol del DOM es el elemento `html`. Es el contenedor de nivel superior para todo el contenido de un documento HTML. Todos los demás nodos son descendientes de este nodo raíz. Luego, debajo del nodo raíz, encontramos otros nodos en la jerarquía. Un nodo padre es un elemento que contiene otros elementos. Un nodo hijo es un elemento que está contenido dentro de otro elemento.
- **`navegador` Interfaz**: Esta proporciona información sobre el entorno del navegador, como la cadena del agente de usuario, la plataforma y la versión del navegador. Una cadena del agente de usuario es una cadena de texto que identifica el navegador y el sistema operativo que se está utilizando.
- **`ventana` Interfaz**: Esta representa la ventana del navegador que contiene el documento DOM. Proporciona métodos y propiedades para interactuar con la ventana del navegador, como cambiar el tamaño de la ventana, abrir nuevas ventanas y navegar a diferentes URLs.

## Trabajando con los métodos `querySelector()`, `querySelectorAll()` y `getElementById()`

- **`getElementById()` Método**: Este método se usa para obtener un objeto que representa el elemento HTML con el `id` especificado. Recuerda que los ids deben ser únicos en cada documento HTML, por lo que este método solo devolverá un objeto Elemento.

```html
<div id="container"></div>
```

```js
const container = document.getElementById("container");
```

- **`querySelector()` Método**: Este método se utiliza para obtener el primer elemento en el documento HTML que coincide con el selector CSS pasado como argumento.

```html
<section class="section"></section>
```

```js
const section = document.querySelector(".section");
```

- **`querySelectorAll()` Método**: Puedes usar este método para obtener una lista de todos los elementos del DOM que coinciden con un selector CSS específico.

```html
<ul class="ingredients">
  <li>Sugar</li>
  <li>Milk</li>
  <li>Eggs</li>
</ul>
```

```js
const ingredients = document.querySelectorAll('ul.ingredients li');
```

## Trabajando con los métodos `innerText()`, `innerHTML()`, `createElement()` y `textContent()`

- **`innerHTML` Propiedad**: Esta es una propiedad del `Elemento` que se utiliza para establecer o actualizar partes del marcado HTML.

```html
<div id="container">
  <!-- Add new elements here -->
</div>
```

```js
const container = document.getElementById("container");
container.innerHTML = '<ul><li>Cheese</li><li>Tomato</li></ul>';
```

- **`createElement` Método **: Este se utiliza para crear un elemento HTML.

```js
const img = document.createElement("img");
```

- **`innerText`**: Este representa el contenido de texto visible del elemento HTML y sus descendientes.

```html
<div id="container">
  <p>Hello, World!</p>
  <p>I'm learning JavaScript</p>
</div>
```

```js
const container = document.getElementById("container");
console.log(container.innerText);
```

- **`textContent`**: Este devuelve el contenido de texto plano de un elemento, incluyendo todo el texto dentro de sus descendientes.

```html
<div id="container">
  <p>Hello, World!</p>
  <p>I'm learning JavaScript</p>
</div>
```

```js
const container = document.getElementById("container");
console.log(container.textContent);
```

## Trabajando con los métodos `appendChild()` y `removeChild()`

- **`appendChild()` Método**: Este método se utiliza para agregar un nodo al final de la lista de hijos de un nodo padre específico.

```html
<ul id="desserts">
  <li>Cake</li>
  <li>Pie</li>
</ul>
```

```js
const dessertsList = document.getElementById("desserts");
const listItem = document.createElement("li");

listItem.textContent = "Cookies";
dessertsList.appendChild(listItem);
```

- **`removeChild()` Método**: Este método se utiliza para eliminar un nodo del DOM.

```html
<section id="example-section">
  <h2>Example sub heading</h2>
  <p>first paragraph</p>
  <p>second paragraph</p>
</section>
```

```js
const sectionEl = document.getElementById("example-section");
const lastParagraph = document.querySelector("#example-section p:last-of-type");

sectionEl.removeChild(lastParagraph);
```

## Trabajar con el Método `setAttribute()`

- **Definición**: Este método se utiliza para establecer el atributo para un determinado elemento. Si el atributo ya existe, entonces el valor es actualizado. De lo contrario, se añade un nuevo atributo con un valor.

```html
<p id="para">I am a paragraph</p>
```

```js
const para = document.getElementById("para");
para.setAttribute("class", "my-class");
```

## Objeto Evento

- **Definición**: El objeto `Evento` es un payload que se desencadena cuando un usuario interactúa con tu página web de alguna manera. Estas interacciones pueden ser cualquier cosa desde hacer clic en un botón o enfocar un input hasta sacudir su dispositivo móvil. Todos los objetos `Evento` tendrán la propiedad `tipo`. Esta propiedad revela el tipo de evento que desencadenó el payload, como presionar una tecla o hacer clic. Estos valores corresponderán a los mismos valores que podrías pasar a `addEventListener`(), donde puedes capturar y utilizar el objeto `Evento`.

## Métodos `addEventListener()` y `removeEventListener()`

- **`addEventListener` Método**: Este método se utiliza para escuchar eventos. Toma dos argumentos: el evento que deseas escuchar y una función que se llamará cuando ocurra el evento. Algunos ejemplos comunes de eventos serían eventos de clic, eventos de entrada y eventos de cambio.

```js
const btn = document.getElementById("btn");

btn.addEventListener("click", () => alert("You clicked the button"));
```

- **`removeEventListener()` Método**: Este método se utiliza para eliminar un event listener que se añadió previamente a un elemento usando el método `addEventListener()`. Esto es útil cuando deseas dejar de escuchar un evento en particular en un elemento.

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

- **Manejadores de Eventos Inline**: Los manejadores de eventos inline son atributos especiales en un elemento HTML que se utilizan para ejecutar código JavaScript cuando ocurre un evento. No se considera una buena práctica usar manejadores de eventos inline en JavaScript moderno. Se prefiere usar el método `addEventListener` en su lugar.

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

## El evento de cambio

- **Definición**: El evento de cambio es un evento especial que se dispara cuando el usuario modifica el valor de ciertos elementos de entrada. Los ejemplos incluirían cuando una casilla de verificación o un botón de opción están marcados. O cuando el usuario hace una selección de algo como un selector de fechas o un menú desplegable.

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
```

```js 
const selectEl = document.querySelector(".language");
const result = document.querySelector(".result");

selectEl.addEventListener("change", (e) => {
  result.textContent = `You enjoy programming in ${e.target.value}.`;
});
```

## Propagación de eventos

- **Definición**: La propagación de eventos, o burbujeo, se refiere a cómo un evento "sube" a los objetos parentales cuando se dispara.
- **`stopPropagation()` Método**: Este método previene la propagación posterior de un evento.

## Delegación de eventos

- **Definición**: La delegación de eventos es el proceso de escuchar eventos que han subido al padre, en lugar de manejarlos directamente en el elemento que los desencadenó.

## DOMContentLoaded

- **Definición**: El evento `DOMContentLoaded` se dispara cuando todo en el documento HTML ha sido cargado y analizado. Si tienes hojas de estilo externas o imágenes, el evento `DOMContentLoaded` no esperará a que estas se carguen. Solo esperará a que se cargue el HTML.

## Trabajando con el `style` y `classList`

- **`Elemento.style` Propiedad**: Esta propiedad es una propiedad de solo lectura que representa el estilo inline de un elemento. Puedes usar esta propiedad para obtener o establecer el estilo de un elemento.

```js
const paraEl = document.getElementById("para");
paraEl.style.color = "red";
```

- **`Elemento.classList` Propiedad**: Esta propiedad es una propiedad de solo lectura que puede utilizarse para agregar, eliminar o alternar clases en un elemento.

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


## Trabajando con los métodos `setTimeout()` y `setInterval()`

- **`setTimeout()` Método**: Este método te permite retrasar una acción por un tiempo especificado.

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

- **`setInterval()` Método**: Este método ejecuta un fragmento de código repetidamente en un intervalo establecido. Como `setInterval()` sigue ejecutando la función proporcionada al intervalo especificado, es posible que desees detenerlo. Para esto, tienes que usar el método `clearInterval()`.

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

## El Método `requestAnimationFrame()`

- **Definición**: Este método te permite programar el siguiente paso de tu animación antes del próximo repintado de pantalla, resultando en una experiencia fluida y visualmente atractiva. El siguiente repintado de pantalla se refiere al momento en que el navegador refresca la visualización de la página web. Esto ocurre múltiples veces por segundo, típicamente alrededor de 60 veces (o 60 cuadros por segundo) en la mayoría de las pantallas.

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## API de Animaciones Web

- **Definición**: La API de Animaciones Web te permite crear y controlar animaciones directamente dentro de JavaScript. 

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

## La API del Canvas

- **Definición**: La API del Canvas es una herramienta poderosa que te permite manipular gráficos directamente dentro de tu archivo JavaScript. Para trabajar con la API del Canvas, primero debes proporcionar un elemento `canvas` en HTML. Este elemento actúa como una superficie de dibujo que puedes manipular con los métodos y propiedades de las interfaces dentro de la API del Canvas. Esta API tiene interfaces como `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradiente`, `PatrónCanvas`, y `MétricasTexto` que contienen métodos y propiedades que puedes usar para crear gráficos en tu archivo JavaScript.

```html
<canvas id="my-canvas" width="400" height="400"></canvas>
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

## Abrir y cerrar diálogos y modales con JavaScript

- **Modal y Definiciones de Diálogo**: Los diálogos te permiten mostrar información importante o acciones a los usuarios. Con el elemento diálogo incorporado en HTML, puedes crear fácilmente estos diálogos (tanto diálogos modales como no modales) en tus aplicaciones web. Un diálogo modal es un tipo de diálogo que obliga al usuario a interactuar con él antes de poder acceder al resto de la aplicación o página web. En contraste, un diálogo no modal permite al usuario seguir interactuando con otras partes de la página o aplicación incluso cuando el diálogo está abierto. No impide el acceso al resto del contenido.
- **`showModal()` Método**: Este método se utiliza para abrir un modal.

```html
<dialog id="my-modal">
   <p>This is a modal dialog.</p>
</dialog>
<button id="open-modal">Open Modal Dialog</button>
```

```js
const dialog = document.getElementById('my-modal');
const openButton = document.getElementById('open-modal');

openButton.addEventListener('click', () => {
  dialog.showModal();
});
```

- **`close()` Método**: Este método se utiliza para cerrar el modal.

```html
<dialog id="my-modal">
   <p>This is a modal dialog.</p>
   <button id="close-modal">Close Modal</button>
</dialog>
<button id="open-modal">Open Modal Dialog</button>
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

# --assignment--

Revisa los temas y conceptos sobre Manipulación del DOM y eventos de clic con JavaScript.
