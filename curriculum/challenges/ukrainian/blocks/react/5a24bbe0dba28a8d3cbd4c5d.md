---
id: 5a24bbe0dba28a8d3cbd4c5d
title: Create a Complex JSX Element
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

Останнє завдання було простим прикладом JSX, але JSX може також представляти більш складний HTML.

Важливо знати, що вкладений JSX повинен повертати один єдиний елемент.

Цей один батьківський елемент обгортає всі інші рівні вкладених елементів.

Наприклад, кілька JSX-елементів, написаних як братські без батьківського обгортального елемента, не будуть транспілюватися.

Ось приклад:

**Valid JSX:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**Invalid JSX:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

Оголосіть нову константу `JSX`, яка відтворює `div`, що містить наступні елементи в порядку:

`h1`, `p` та невпорядкований список, який містить три `li` елементи. Ви можете додати будь-який текст у кожен елемент.

**Примітка:** Коли ви відтворюєте кілька елементів таким чином, ви можете обгорнути їх усі в круглі дужки, але це не є обов’язковим. Також зверніть увагу, що в цьому завданні використовується тег `div` для обгортання всіх дочірніх елементів у єдиний батьківський елемент. Якщо ви видалите `div`, JSX більше не транспілюватиметься. Запам’ятайте це, оскільки це також стосується повернення JSX-елементів у React-компонентах.

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

`div` має містити тег `ul` як третій елемент.

```js
assert(JSX.props.children[2].type === 'ul');
```

`ul` має містити три елементи `li`.

```js
assert(
  JSX.props.children
    .filter((ele) => ele.type === 'ul')[0]
    .props.children.filter((ele) => ele.type === 'li').length === 3
);
```

# --seed--

## --seed-contents--

```jsx

```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello JSX!</h1>
  <p>Some info</p>
  <ul>
    <li>An item</li>
    <li>Another item</li>
    <li>A third item</li>
  </ul>
</div>);
```
