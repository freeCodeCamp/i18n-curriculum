---
id: 6723cc7a8e7aa3b9befd4bac
title: Manipulação do DOM e Eventos de Clique com Revisão de JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## Trabalhando com o DOM e APIs web

- **API**: Uma API (Interface de Programação de Aplicações) é um conjunto de regras e protocolos que permitem que aplicações de software se comuniquem entre si e troquem dados de forma eficiente.
- **API web**: APIs web são especificamente projetadas para aplicações web. Esses tipos de APIs são frequentemente divididos em duas categorias principais: APIs do navegador e APIs de terceiros.
- **APIs do navegador**: Essas APIs expõem dados do navegador. Como desenvolvedor web, você pode acessar e manipular esses dados usando JavaScript.
- **APIs de terceiros**: Essas não são embutidas no navegador por padrão. Você precisa obter seu código de alguma forma. Normalmente, elas terão documentação detalhada explicando como usar seus serviços. Um exemplo é a API do Google Maps, que você pode usar para exibir mapas interativos no seu site.
- **DOM**: O DOM significa Document Object Model. É uma interface de programação que permite interagir com documentos HTML. Com o DOM, você pode adicionar, modificar ou excluir elementos em uma página web. A raiz da árvore DOM é o elemento `html`. É o container de nível superior para todo o conteúdo de um documento HTML. Todos os outros nós são descendentes desse nó raiz. Abaixo do nó raiz, encontramos outros nós na hierarquia. Um nó pai é um elemento que contém outros elementos. Um nó filho é um elemento que está contido dentro de outro elemento.
- **Interface `navigator`**: Fornece informações sobre o ambiente do navegador, como a string do agente do usuário, a plataforma e a versão do navegador. Uma string de agente do usuário é uma string de texto que identifica o navegador e o sistema operacional em uso.
- **Interface `window`**: Representa a janela do navegador que contém o documento DOM. Ela fornece métodos e propriedades para interagir com a janela do navegador, como redimensionar a janela, abrir novas janelas e navegar para URLs diferentes.

## Trabalhando com os métodos `querySelector()`, `querySelectorAll()` e `getElementById()`

- **Método `getElementById()`**: Este método é usado para obter um objeto que representa o elemento HTML com o `id` especificado. Lembre-se que ids devem ser únicos em todo documento HTML, então este método retornará apenas um objeto Element.

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

- **Método `querySelector()`**: Este método é usado para obter o primeiro elemento no documento HTML que corresponde ao seletor CSS passado como argumento.

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

- **Método `querySelectorAll()`**: Você pode usar este método para obter uma lista de todos os elementos DOM que correspondem a um seletor CSS específico.

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

## Trabalhando com os métodos `innerText()`, `innerHTML()`, `createElement()` e `textContent()`

- **Propriedade `innerHTML`**: Esta é uma propriedade do `Element` usada para definir ou atualizar partes do markup HTML.

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

- **Método `createElement`**: Este método é usado para criar um elemento HTML.

```js
const img = document.createElement("img");
```

- **`innerText`**: Representa o conteúdo de texto visível do elemento HTML e seus descendentes.

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

- **`textContent`**: Retorna o conteúdo de texto simples de um elemento, incluindo todo o texto dentro de seus descendentes.

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

## Trabalhando com os métodos `appendChild()` e `removeChild()`

- **Método `appendChild()`**: Este método é usado para adicionar um nó ao final da lista de filhos de um nó pai especificado.

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

- **Método `removeChild()`**: Este método é usado para remover um nó do DOM.

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

## Trabalhando com o método `setAttribute()`

- **Definição**: Este método é usado para definir o atributo de um dado elemento. Se o atributo já existir, o valor é atualizado. Caso contrário, um novo atributo é adicionado com um valor.

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

## Objeto evento

- **Definição**: O objeto `Event` é um payload que é disparado quando um usuário interage com sua página web de alguma forma. Essas interações podem ser desde clicar em um botão ou focar uma entrada até sacudir o dispositivo móvel. Todos os objetos `Event` terão a propriedade `type`. Essa propriedade revela o tipo de evento que disparou o payload, como keydown ou click. Esses valores corresponderão aos mesmos valores que você pode passar para `addEventListener()`, onde pode capturar e utilizar o objeto `Event`.

## Métodos `addEventListener()` e `removeEventListener()`

- **Método `addEventListener`**: Este método é usado para escutar eventos. Ele recebe dois argumentos: o evento que você quer escutar e uma função que será chamada quando o evento ocorrer. Alguns exemplos comuns de eventos são eventos de clique, eventos de entrada e eventos de mudança.

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

- **Método `removeEventListener()`**: Este método é usado para remover um listener de evento que foi previamente adicionado a um elemento usando o método `addEventListener()`. Isso é útil quando você quer parar de escutar um evento específico em um elemento.

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

- **Manipuladores de evento inline**: Manipuladores de evento inline são atributos especiais em um elemento HTML usados para executar código JavaScript quando um evento ocorre. No JavaScript moderno, manipuladores de evento inline não são considerados melhor prática. É preferível usar o método `addEventListener`.


:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## O evento change

- **Definição**: O evento change é um evento especial que é disparado quando o usuário modifica o valor de certos elementos de entrada. Exemplos incluem quando uma caixa de seleção ou um botão de rádio é marcado. Ou quando o usuário faz uma seleção em algo como um seletor de data ou menu suspenso.

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

## Propagação de eventos (event bubbling)

- **Definição**: Event bubbling, ou propagação, refere-se a como um evento "bubbles up" para objetos pai quando acionado.
- **Método `stopPropagation()`**: Este método impede a propagação adicional de um evento.

## Delegação de eventos

- **Definição**: Delegação de eventos é o processo de escutar eventos que borbulharam até um pai, em vez de tratá-los diretamente no elemento que os disparou.

## DOMContentLoaded

- **Definição**: O evento `DOMContentLoaded` é disparado quando tudo no documento HTML foi carregado e analisado. Se você tiver folhas de estilo externas ou imagens, o evento `DOMContentLoaded` não esperará que elas sejam carregadas. Ele só espera o carregamento do HTML.

## Trabalhando com `style` e `classList`

- **Propriedade `Element.style`**: Esta propriedade é somente leitura e representa o estilo inline de um elemento. Você pode usar essa propriedade para obter ou definir o estilo de um elemento.

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

- **Propriedade `Element.classList`**: Esta propriedade é somente leitura e pode ser usada para adicionar, remover ou alternar classes em um elemento.

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


## Trabalhando com os métodos `setTimeout()` e `setInterval()`

- **Método `setTimeout()`**: Este método permite atrasar uma ação por um tempo especificado.

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **Método `setInterval()`**: Este método executa repetidamente um trecho de código em um intervalo definido. Como o `setInterval()` continua executando a função fornecida no intervalo especificado, você pode querer pará-lo. Para isso, você deve usar o método `clearInterval()`.

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

## O método `requestAnimationFrame()`

- **Definição**: Este método permite agendar o próximo passo da sua animação antes da próxima repintura da tela, resultando em uma experiência fluida e visualmente agradável. A próxima repintura da tela refere-se ao momento em que o navegador atualiza a exibição visual da página web. Isso acontece várias vezes por segundo, tipicamente cerca de 60 vezes (ou 60 quadros por segundo) na maioria dos displays.

```js
function animate() {
 // Update the animation...
 // for example, move an element, change a style, and more.
 update();
 // Request the next frame
 requestAnimationFrame(animate);
}
```

## API de Animações Web

- **Definição**: A Web Animations API permite criar e controlar animações diretamente dentro do JavaScript.

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

## A Canvas API

- **Definição**: A Canvas API é uma ferramenta poderosa que permite manipular gráficos diretamente dentro do seu arquivo JavaScript. Para trabalhar com a Canvas API, você primeiro precisa fornecer um elemento `canvas` em HTML. Esse elemento atua como uma superfície de desenho que você pode manipular com os métodos e propriedades das interfaces da Canvas API. Essa API possui interfaces como `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern` e `TextMetrics`, que contêm métodos e propriedades que você pode usar para criar gráficos no seu arquivo JavaScript.

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

## Abrindo e fechando diálogos e modais com JavaScript

- **Definições de modal e diálogo**: Diálogos permitem exibir informações importantes ou ações para os usuários. Com o elemento dialog embutido no HTML, você pode criar facilmente esses diálogos (tanto modais quanto não modais) em seus apps web. Um diálogo modal é um tipo de diálogo que obriga o usuário a interagir com ele antes de acessar o restante da aplicação ou página web. Em contraste, um diálogo não modal permite que o usuário continue interagindo com outras partes da página ou aplicação mesmo quando o diálogo está aberto. Ele não impede o acesso ao restante do conteúdo.
- **Método `showModal()`**: Este método é usado para abrir um modal.

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

- **Método `close()`**: Este método é usado para fechar o modal.

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

Revise os tópicos e conceitos de Manipulação do DOM e Eventos de Clique com JavaScript.
