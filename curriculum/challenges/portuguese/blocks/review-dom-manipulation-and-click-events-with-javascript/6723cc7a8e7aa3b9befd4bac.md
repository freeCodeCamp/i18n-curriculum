---
id: 6723cc7a8e7aa3b9befd4bac
title: Manipulação do DOM e Eventos de Clique com Revisão de JavaScript
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --description--

## Trabalhando com o DOM e as Web APIs

- **API**: Uma API (Application Programming Interface) é um conjunto de regras e protocolos que permitem que aplicações de software se comuniquem entre si e troquem dados de forma eficiente.
- **Web API**: Web APIs são projetadas especificamente para aplicações web. Esses tipos de APIs são frequentemente divididos em duas categorias principais: browser APIs e third-party APIs.
- **Browser APIs**: Essas APIs expõem dados do navegador. Como desenvolvedor web, você pode acessar e manipular esses dados usando JavaScript.
- **APIs de Terceiros**: Elas não são incorporadas ao navegador por padrão. Você precisa obter o código delas de alguma forma. Normalmente, elas terão documentação detalhada explicando como usar seus serviços. Um exemplo é a `Google Maps API`, que você pode usar para exibir mapas interativos no seu site.
- **DOM**: O DOM significa Document Object Model. É uma interface de programação que permite interagir com documentos HTML. Com o DOM, você pode adicionar, modificar ou excluir elementos em uma página web. A raiz da árvore DOM é o elemento `html`. É o contêiner de nível superior para todo o conteúdo de um documento HTML. Todos os outros nós são descendentes desse nó raiz. Em seguida, abaixo do nó raiz, encontramos outros nós na hierarquia. Um nó pai é um elemento que contém outros elementos. Um nó filho é um elemento que está contido dentro de outro elemento.
- **Interface `navigator`**: Isso fornece informações sobre o ambiente do navegador, como a string do agente do usuário, a plataforma e a versão do navegador. Uma string do agente do usuário é uma string de texto que identifica o navegador e o sistema operacional em uso.
- **Interface `window`**: Isso representa a janela do navegador que contém o documento DOM. Ela fornece métodos e propriedades para interagir com a janela do navegador, como redimensionar a janela, abrir novas janelas e navegar para diferentes URLs.

## Trabalhando com os métodos `querySelector()`, `querySelectorAll()` e `getElementById()`

- **Método `getElementById()`**: Este método é usado para obter um objeto que representa o elemento HTML com o `id` especificado. Lembre-se que os ids devem ser únicos em cada documento HTML, então este método retornará apenas um objeto Element.

```html
<div id="container"></div>
```

```js
const container = document.getElementById("container");
```

- **Método `querySelector()`**: Este método é usado para obter o primeiro elemento no documento HTML que corresponde ao seletor CSS passado como argumento.

```html
<section class="section"></section>
```

```js
const section = document.querySelector(".section");
```

- **Método `querySelectorAll()`**: Você pode usar este método para obter uma lista de todos os elementos DOM que correspondem a um seletor CSS específico.

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

## Trabalhando com os métodos `innerText()`, `innerHTML()`, `createElement()` e `textContent()`

- **Propriedade `innerHTML`**: Esta é uma propriedade do `Element` que é usada para definir ou atualizar partes da marcação HTML.

```html
<div id="container">
  <!-- Add new elements here -->
</div>
```

```js
const container = document.getElementById("container");
container.innerHTML = '<ul><li>Cheese</li><li>Tomato</li></ul>';
```

- **Método `createElement`**: Isso é usado para criar um elemento HTML. 

```js
const img = document.createElement("img");
```

- **`innerText`**: Isso representa o conteúdo de texto visível do elemento HTML e seus descendentes. 

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

- **`textContent`**: Isso retorna o conteúdo de texto simples de um elemento, incluindo todo o texto dentro de seus descendentes.

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

## Trabalhando com os Métodos `appendChild()` e `removeChild()`

- **Método `appendChild()`**: Este método é usado para adicionar um nó ao final da lista de filhos de um nó pai especificado.

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

- **Método `removeChild()`**: Este método é usado para remover um nó do DOM.

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

## Trabalhe com o Método `setAttribute()`

- **Definição**: Este método é usado para definir o atributo para um determinado elemento. Se o atributo já existir, o valor é atualizado. Caso contrário, um novo atributo é adicionado com um valor.

```html
<p id="para">I am a paragraph</p>
```

```js
const para = document.getElementById("para");
para.setAttribute("class", "my-class");
```

## Objeto de Evento

- **Definição**: O objeto `Event` é uma carga útil que é acionada quando um usuário interage com sua página web de alguma forma. Essas interações podem ser qualquer coisa, desde clicar em um botão ou focar em um input até sacudir o dispositivo móvel. Todos os objetos `Event` terão a propriedade `type`. Essa propriedade revela o tipo de evento que acionou a carga útil, como keydown ou click. Esses valores corresponderão aos mesmos valores que você pode passar para `addEventListener`(), onde você pode capturar e utilizar o objeto `Event`.

## Métodos `addEventListener()` e `removeEventListener()`

- **Método `addEventListener`**: Este método é usado para escutar eventos. Ele recebe dois argumentos: o evento que você quer escutar e uma função que será chamada quando o evento ocorrer. Alguns exemplos comuns de eventos seriam eventos de clique, eventos de entrada e eventos de alteração.

```js
const btn = document.getElementById("btn");

btn.addEventListener("click", () => alert("You clicked the button"));
```

- **Método `removeEventListener()`**: Este método é usado para remover um event listener que foi previamente adicionado a um elemento usando o método `addEventListener()`. Isso é útil quando você quer parar de escutar um evento específico em um elemento.

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

- **Manipuladores de Eventos Inline**: Manipuladores de eventos inline são atributos especiais em um elemento HTML usados para executar código JavaScript quando um evento ocorre. No JavaScript moderno, manipuladores de eventos inline não são considerados uma boa prática. É preferível usar o método `addEventListener`.

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

## O Evento de Mudança

- **Definição**: O evento change é um evento especial que é disparado quando o usuário modifica o valor de certos elementos de entrada. Exemplos incluem quando uma caixa de seleção ou um botão de opção é marcado. Ou quando o usuário faz uma seleção em algo como um seletor de data ou menu suspenso.

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

## Propagação de Eventos

- **Definição**: Event bubbling, ou propagação, refere-se a como um evento "bubbles up" para objetos pai quando acionado.
- **Método `stopPropagation()`**: Este método impede a propagação adicional de um evento.

## Delegação de Eventos

- **Definição**: Delegação de eventos é o processo de escutar eventos que subiram para um elemento pai, em vez de tratá-los diretamente no elemento que os disparou. 

## DOMContentLoaded

- **Definição**: O evento `DOMContentLoaded` é disparado quando tudo no documento HTML foi carregado e analisado. Se você tiver folhas de estilo externas ou imagens, o evento `DOMContentLoaded` não esperará que elas sejam carregadas. Ele aguardará apenas o carregamento do HTML.

## Trabalhando com `style` e `classList`

- **Propriedade `Element.style`**: Esta propriedade é uma propriedade somente leitura que representa o estilo inline de um elemento. Você pode usar esta propriedade para obter ou definir o estilo de um elemento.

```js
const paraEl = document.getElementById("para");
paraEl.style.color = "red";
```

- **Propriedade `Element.classList`**: Esta propriedade é somente leitura e pode ser usada para adicionar, remover ou alternar classes em um elemento.

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


## Trabalhando com os métodos `setTimeout()` e `setInterval()`

- **Método `setTimeout()`**: Este método permite atrasar uma ação por um tempo especificado. 

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

- **Método `setInterval()`**: Este método executa repetidamente um trecho de código em um intervalo definido. Como o `setInterval()` continua executando a função fornecida no intervalo especificado, você pode querer pará-lo. Para isso, você deve usar o método `clearInterval()`.

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

## O Método `requestAnimationFrame()`

- **Definição**: Este método permite que você agende a próxima etapa da sua animação antes da próxima repintura da tela, resultando em uma experiência fluida e visualmente atraente. A próxima repintura da tela refere-se ao momento em que o navegador atualiza a exibição visual da página web. Isso acontece várias vezes por segundo, tipicamente cerca de 60 vezes (ou 60 quadros por segundo) na maioria dos monitores.

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

- **Definição**: A Web Animations API permite que você crie e controle animações diretamente dentro do JavaScript. 

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

## A API Canvas

- **Definição**: A Canvas API é uma ferramenta poderosa que permite manipular gráficos diretamente dentro do seu arquivo JavaScript. Para trabalhar com a Canvas API, você primeiro precisa fornecer um elemento `canvas` no HTML. Esse elemento atua como uma superfície de desenho que você pode manipular com os métodos de instância e propriedades das interfaces da Canvas API. Essa API possui interfaces como `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient`, `CanvasPattern` e `TextMetrics` que contêm métodos e propriedades que você pode usar para criar gráficos no seu arquivo JavaScript.

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

## Abrindo e Fechando Diálogos e Modais com JavaScript

- **Definições de Modal e Diálogo**: Diálogos permitem que você exiba informações importantes ou ações para os usuários. Com o elemento de diálogo embutido no HTML, você pode facilmente criar esses diálogos (tanto modais quanto não modais) em suas aplicações web. Um diálogo modal é um tipo de diálogo que obriga o usuário a interagir com ele antes de poder acessar o restante da aplicação ou página web. Em contraste, um diálogo não modal permite que o usuário continue interagindo com outras partes da página ou aplicação mesmo quando o diálogo está aberto. Ele não impede o acesso ao restante do conteúdo.
- **Método `showModal()`**: Este método é usado para abrir um modal.

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

- **Método `close()`**: Este método é usado para fechar o modal.

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

Revise os tópicos e conceitos de Manipulação do DOM e Eventos de Clique com JavaScript.
