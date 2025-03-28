---
id: 5a24c314108439a4d4036141
title: Початок роботи з React Redux
challengeType: 6
forumTopicId: 301430
dashedName: getting-started-with-react-redux
---

# --description--

This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

Хоча компоненти React можуть керувати своїм станом локально, але якщо у вас складний застосунок, то краще зберігати стан застосунку в одному місці за допомогою Redux. Існують винятки, коли окремі компоненти можуть мати локальний стан, створений конкретно лише для них. Зрештою, Redux не створений для роботи з React з коробки, тому вам потрібно використовувати пакет `react-redux`. Він дає можливість передавати стан Redux та відправляти їх до компонентів React як пропси.

У декількох наступних завданнях ви створите простий компонент React, який дозволяє вводити нові текстові повідомлення. Вони додаються до масиву, що відображається в огляді. Це має бути хороший огляд того, що ви вивчили на уроках React. Далі ви створите сховище Redux та дії, які керують станом масиву повідомлень. Вкінці ви використаєте `react-redux`, щоб з’єднати сховище Redux з компонентом, таким чином додаючи локальний стан в сховище Redux.

# --instructions--

Почніть з компоненту `DisplayMessages`. Додайте конструктор до цього компонента та ініціалізуйте його станом, який має дві властивості: `input` зі значенням порожнього рядка та `messages` зі значенням порожнього масиву.

# --hints--

Компонент `DisplayMessages` має відтворити порожній елемент `div`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    return mockedComponent.find('div').text() === '';
  })()
);
```

Конструктор `DisplayMessages` має викликатись за допомогою `super`, передаючи `props`.

```js
assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(code);
      return (
        noWhiteSpace.includes('constructor(props)') &&
        noWhiteSpace.includes('super(props')
      );
    })()
  );
```

Компонент `DisplayMessages` повинен мати початковий стан, який дорівнює `{input: "", messages: []}`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' &&
      initialState.input === '' &&
      Array.isArray(initialState.messages) &&
      initialState.messages.length === 0
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<DisplayMessages />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class DisplayMessages extends React.Component {
  // Change code below this line

  // Change code above this line
  render() {
    return <div />
  }
};
```

# --solutions--

```jsx
class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }
  }
  render() {
    return <div/>
  }
};
```
