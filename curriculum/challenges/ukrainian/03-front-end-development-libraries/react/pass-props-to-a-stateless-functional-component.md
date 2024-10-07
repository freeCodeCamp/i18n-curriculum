---
id: 5a24c314108439a4d4036169
title: Передайте пропси до функціонального компонента без стану
challengeType: 6
forumTopicId: 301402
dashedName: pass-props-to-a-stateless-functional-component
---

# --description--

The previous challenges covered a lot about creating and composing JSX elements, functional components, and ES6 style class components in React. With this foundation, it's time to look at another feature very common in React: **props**. In React, you can pass props, or properties, to child components. Say you have an `App` component which renders a child component called `Welcome` which is a stateless functional component. You can pass `Welcome` a `user` property by writing:

```jsx
<App>
  <Welcome user='Mark' />
</App>
```

Ви використовуєте **власні атрибути HTML**, створені вами та підтримувані React, для передачі до компонента. У цьому випадку, створена властивість `user` передається компоненту `Welcome`. Оскільки `Welcome` є функціональним компонентом без стану, він має доступ до значення:

```jsx
const Welcome = (props) => <h1>Hello, {props.user}!</h1>
```

Як правило, це значення називають пропсом (`props`), а при роботі з функціональними компонентами без стану його вважають аргументом функції, яка повертає JSX. Можна отримати доступ до значення аргументу в тілі функції. Це трішки відрізняється від класових компонентів.

# --instructions--

У редакторі коду є компоненти `Calendar` та `CurrentDate`. При відтворенні `CurrentDate` з компонента `Calendar`, передайте властивість `date`, призначену поточній даті об’єкта JavaScript `Date`. Потім отримайте доступ до `prop` в компоненті `CurrentDate`, показавши значення в межах тегів `p`. Зверніть увагу: щоб значення `prop` оцінювались як JavaScript, вони мають бути у фігурних дужках (наприклад, `date={Date()}`).

# --hints--

Компонент `Calendar` має повернути єдиний елемент `div`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().type() === 'div';
  })()
);
```

Другим дочірнім компонентом компонента `Calendar` має бути компонент `CurrentDate`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).name() === 'CurrentDate';
  })()
);
```

Компонент `CurrentDate` повинен мати пропс під назвою `date`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).props().date;
  })()
);
```

Пропс `date` компонента `CurrentDate` повинен містити рядок тексту.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    const prop = mockedComponent.children().childAt(1).props().date;
    return typeof prop === 'string' && prop.length > 0;
  })()
);
```

Пропс `date` має бути створеним завдяки виклику `Date()`

```js
assert(/<CurrentDatedate={Date\(\)}\/>/.test(__helpers.removeWhiteSpace(code)));
```

Компонент `CurrentDate` має відтворити значення пропсу `date` в тегу `p`.

```js
let date = 'dummy date';
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(CurrentDate, { date })
    );
    return mockedComponent.find('p').html().includes(date);
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Calendar />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: </p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```

# --solutions--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: {props.date}</p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate date={Date()} />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
