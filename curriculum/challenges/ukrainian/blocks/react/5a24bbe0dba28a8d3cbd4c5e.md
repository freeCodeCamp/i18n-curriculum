---
id: 5a24bbe0dba28a8d3cbd4c5e
title: додати коментарі в JSX
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX — це синтаксис, який компілюється у валідний JavaScript. Іноді, щоб покращити читабельність, потрібно додати коментарі до свого коду. Як і більшість мов програмування, JSX має свій спосіб це робити.

Щоб вставити коментарі всередину JSX, використовуйте синтаксис `{/* */}`, щоб обгорнути текст коментаря.

# --instructions--

У редакторі коду є JSX-елемент, схожий на той, що ви створили в останньому завданні. Додайте коментар десь всередині наданого елемента `div`, не змінюючи існуючі елементи `h1` або `p`.

# --hints--

Константа `JSX` має повертати елемент `div`.

```js
assert(JSX.type === 'div');
```

Елемент `div` повинен містити тег `h1` як перший елемент.

```js
assert(JSX.props.children[0].type === 'h1');
```

Елемент `div` повинен містити тег `p` як другий елемент.

```js
assert(JSX.props.children[1].type === 'p');
```

Існуючі елементи `h1` та `p` не повинні бути змінені.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

Елемент `JSX` має використовувати валідний синтаксис коментаря.

```js
assert(/<div>[\s\S]*{\s*\/\*[\s\S]*\*\/\s*}[\s\S]*<\/div>/.test(code));
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(JSX, document.getElementById('root'))
```

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>This is a block of JSX</h1>
    <p>Here's a subtitle</p>
  </div>
);
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>This is a block of JSX</h1>
  { /* this is a JSX comment */ }
  <p>Here's a subtitle</p>
</div>);
```
