---
id: 6723cc7a8e7aa3b9befd4bac
title: JavaScriptによるDOM操作とクリックイベントのレビュー
challengeType: 31
dashedName: review-dom-manipulation-and-click-events-with-javascript
---

# --interactive--

## DOMとウェブAPIの操作

- **API**: API（アプリケーションプログラミングインターフェース）は、ソフトウェアアプリケーション同士が効率的に通信しデータを交換するためのルールとプロトコルのセットです。
- **ウェブAPI**: ウェブAPIはウェブアプリケーション向けに特化されたAPIです。これらのAPIは主にブラウザAPIとサードパーティAPIの2つのカテゴリに分けられます。
- **ブラウザAPI**: これらのAPIはブラウザからデータを公開します。ウェブ開発者はJavaScriptを使ってこのデータにアクセスし操作できます。
- **サードパーティAPI**: これらはデフォルトではブラウザに組み込まれていません。何らかの方法でコードを取得する必要があります。通常、サービスの使い方を説明した詳細なドキュメントがあります。例として、Google Maps APIがあり、ウェブサイト上にインタラクティブな地図を表示できます。
- **DOM**: DOMはDocument Object Modelの略で、HTMLドキュメントとやり取りするためのプログラミングインターフェースです。DOMを使うと、ウェブページ上の要素を追加、変更、削除できます。DOMツリーのルートは`html`要素です。これはHTMLドキュメントの全コンテンツの最上位コンテナです。その他のノードはすべてこのルートノードの子孫要素です。ルートノードの下には階層的に他のノードがあります。親ノードは他の要素を含む要素で、子ノードは他の要素に含まれる要素です。
- **`navigator`インターフェース**: これはユーザーエージェント文字列、プラットフォーム、ブラウザのバージョンなど、ブラウザ環境に関する情報を提供します。ユーザーエージェント文字列は使用中のブラウザとOSを識別するテキスト文字列です。
- **`window`インターフェース**: これはDOMドキュメントを含むブラウザウィンドウを表します。ウィンドウのサイズ変更、新しいウィンドウの開閉、異なるURLへの移動など、ブラウザウィンドウとやり取りするためのメソッドやプロパティを提供します。

## `querySelector()`、`querySelectorAll()`、`getElementById()`メソッドの操作

- **`getElementById()`メソッド**: 指定した`id`を持つHTML要素を表すオブジェクトを取得するために使います。idはHTMLドキュメント内で一意である必要があるため、このメソッドは1つのElementオブジェクトだけを返します。

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

- **`querySelector()`メソッド**: 引数として渡されたCSSセレクターに一致するHTMLドキュメント内の最初の要素を取得するために使います。

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

- **`querySelectorAll()`メソッド**: 特定のCSSセレクターに一致するすべてのDOM要素のリストを取得するために使います。

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

## `innerText()`、`innerHTML()`、`createElement()`、`textContent()`メソッドの操作

- **`innerHTML`プロパティ**: `Element`のプロパティで、HTMLマークアップの一部を設定または更新するために使います。

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

- **`createElement`メソッド**: HTML要素を作成するために使います。

```js
const img = document.createElement("img");
```

- **`innerText`**: HTML要素とその子孫の可視テキストコンテンツを表します。

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

- **`textContent`**: 子孫を含む要素内のプレーンテキストコンテンツを返します。

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

## `appendChild()`と`removeChild()`メソッドの操作

- **`appendChild()`メソッド**: 指定した親ノードの子ノードリストの末尾にノードを追加するために使います。

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

- **`removeChild()`メソッド**: DOMからノードを削除するために使います。

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

## `setAttribute()`メソッドの操作

- **定義**: 指定した要素の属性を設定するために使います。属性がすでに存在する場合は値を更新し、存在しない場合は新しい属性を値付きで追加します。

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

## イベントオブジェクト

- **定義**: `Event`オブジェクトは、ユーザーがウェブページと何らかの形でやり取りしたときに発生するペイロードです。これらのやり取りは、ボタンのクリックや入力へのフォーカス、モバイル端末の振動など様々です。すべての`Event`オブジェクトは`type`プロパティを持ちます。このプロパティはkeydownやclickなど、ペイロードを発生させたイベントの種類を示します。これらの値は`addEventListener()`に渡す値と対応しており、`Event`オブジェクトをキャプチャして利用できます。

## `addEventListener()`と`removeEventListener()`メソッド

- **`addEventListener`メソッド**: イベントを監視するために使います。2つの引数を取り、1つ目は監視したいイベント、2つ目はイベント発生時に呼び出される関数です。よくあるイベントの例はクリックイベント、入力イベント、変更イベントです。

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

- **`removeEventListener()`メソッド**: 以前に`addEventListener()`メソッドで追加したイベントリスナーを削除するために使います。特定の要素でイベントの監視を停止したい場合に便利です。

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

- **インラインイベントハンドラ**: インラインイベントハンドラは、イベント発生時にJavaScriptコードを実行するためのHTML要素の特別な属性です。現代のJavaScriptでは、インラインイベントハンドラはベストプラクティスとは見なされません。代わりに`addEventListener`メソッドを使うことが推奨されます。

:::interactive_editor

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

:::

## changeイベント

- **定義**: changeイベントは、ユーザーが特定の入力要素の値を変更したときに発生する特別なイベントです。例としては、チェックボックスやラジオボタンの選択、日付ピッカーやドロップダウンメニューからの選択があります。

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

## イベントバブリング

- **定義**: イベントバブリング（伝播）は、イベントが発生したときに親オブジェクトへ「バブルアップ」する仕組みを指します。
- **`stopPropagation()`メソッド**: このメソッドはイベントのさらなる伝播を防ぎます。

## イベントデリゲーション

- **定義**: イベントデリゲーションは、イベントがバブルアップして親で監視されるのを利用し、イベント発生元の要素で直接処理するのではなく親で処理する方法です。

## DOMContentLoaded

- **定義**: `DOMContentLoaded`イベントは、HTMLドキュメントのすべてが読み込みと解析を終えたときに発生します。外部スタイルシートや画像がある場合、`DOMContentLoaded`イベントはそれらの読み込みを待ちません。HTMLの読み込み完了のみを待ちます。

## `style`と`classList`の操作

- **`Element.style`プロパティ**: このプロパティは読み取り専用で、要素のインラインスタイルを表します。要素のスタイルを取得または設定するために使えます。

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

- **`Element.classList`プロパティ**: このプロパティは読み取り専用で、要素のクラスを追加、削除、切り替えするために使えます。

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

## `setTimeout()`と`setInterval()`メソッドの操作

- **`setTimeout()`メソッド**: 指定した時間だけ処理を遅延させるために使います。

:::interactive_editor

```js
setTimeout(() => {
 console.log('This runs after 3 seconds'); 
}, 3000);
```

:::

- **`setInterval()`メソッド**: 指定した間隔でコードを繰り返し実行します。`setInterval()`は指定した間隔で関数を実行し続けるため、停止したい場合は`clearInterval()`メソッドを使います。

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

## `requestAnimationFrame()`メソッド

- **定義**: このメソッドは次の画面再描画の前にアニメーションの次のステップをスケジュールでき、滑らかで視覚的に魅力的な体験を実現します。次の画面再描画とは、ブラウザがウェブページの表示を更新する瞬間のことで、通常は1秒間に約60回（60fps）行われます。

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

- **定義**: Web Animations APIはJavaScript内で直接アニメーションを作成・制御できるAPIです。

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

- **定義**: Canvas APIはJavaScriptファイル内でグラフィックスを操作できる強力なツールです。Canvas APIを使うには、まずHTMLに`canvas`要素を用意します。この要素は描画面として機能し、Canvas APIのインターフェースのメソッドやプロパティで操作できます。このAPIには`HTMLCanvasElement`、`CanvasRenderingContext2D`、`CanvasGradient`、`CanvasPattern`、`TextMetrics`などのインターフェースがあり、JavaScriptファイル内でグラフィックスを作成するためのメソッドやプロパティを含みます。

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

## JavaScriptでのダイアログとモーダルの開閉

- **モーダルとダイアログの定義**: ダイアログはユーザーに重要な情報や操作を表示するためのものです。HTMLの組み込みdialog要素を使うと、ウェブアプリで簡単にモーダルおよび非モーダルダイアログを作成できます。モーダルダイアログは、ユーザーがそれとやり取りしないと他のアプリやウェブページの部分にアクセスできないタイプのダイアログです。一方、非モーダルダイアログは開いていても他の部分とやり取りを続けられ、他のコンテンツへのアクセスを妨げません。
- **`showModal()`メソッド**: モーダルを開くために使います。

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

- **`close()`メソッド**: モーダルを閉じるために使います。

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

JavaScriptによるDOM操作とクリックイベントのトピックと概念を復習してください。
