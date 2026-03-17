---
id: 5a24bbe0dba28a8d3cbd4c5f
title: Відтворення HTML-елементів у DOM
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

До цього моменту ви дізналися, що JSX — це зручний інструмент для написання читабельного HTML всередині JavaScript. За допомогою React ми можемо відтворювати цей JSX безпосередньо в HTML DOM, використовуючи API відтворення React, відомий як ReactDOM.

ReactDOM пропонує простий метод для відтворення React-елементів у DOM, який виглядає так: `ReactDOM.render(componentToRender, targetNode)`, де перший аргумент — це React-елемент або компонент, який ви хочете відтворити, а другий аргумент — це DOM-вузол, у який ви хочете відтворити компонент.

Як і очікується, `ReactDOM.render()` має бути викликаний після оголошень JSX-елементів, так само, як ви повинні оголосити змінні перед їх використанням.

# --instructions--

У редакторі коду є простий JSX-компонент. Використайте метод `ReactDOM.render()`, щоб відтворити цей компонент на сторінці. Ви можете передати визначені JSX-елементи безпосередньо як перший аргумент і використати `document.getElementById()`, щоб вибрати DOM-вузол, у який їх відтворити. Для вас доступний `div` з `id='challenge-node'`. Переконайтеся, що не змінюєте константу `JSX`.

# --hints--

Константа `JSX` має повертати елемент `div`.

```js
assert(JSX.type === 'div');
```

`div` має містити тег `h1` як перший елемент.

```js
assert(JSX.props.children[0].type === 'h1');
```

`div` має містити тег `p` як другий елемент.

```js
assert(JSX.props.children[1].type === 'p');
```

Наданий JSX-елемент має відтворюватися у DOM-вузол з ідентифікатором `challenge-node`.

```js
assert(
  document.getElementById('challenge-node').childNodes[0].innerHTML ===
    '<h1>Hello World</h1><p>Lets render this to the DOM</p>'
);
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>Hello World</h1>
    <p>Lets render this to the DOM</p>
  </div>
);
// Add your code below this line
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello World</h1>
  <p>Lets render this to the DOM</p>
</div>
);
// Add your code below this line
ReactDOM.render(JSX, document.getElementById('challenge-node'));
```
