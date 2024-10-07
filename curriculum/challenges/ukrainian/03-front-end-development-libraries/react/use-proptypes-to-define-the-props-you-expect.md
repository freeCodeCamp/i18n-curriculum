---
id: 5a24c314108439a4d403616d
title: Використайте PropTypes, щоб визначити очікувані пропси
challengeType: 6
forumTopicId: 301419
dashedName: use-proptypes-to-define-the-props-you-expect
---

# --description--

React provides useful type-checking features to verify that components receive props of the correct type. For example, your application makes an API call to retrieve data that you expect to be in an array, which is then passed to a component as a prop. You can set `propTypes` on your component to require the data to be of type `array`. This will throw a useful warning when the data is of any other type.

Краще встановити `propTypes`, якщо ви знаєте тип пропсів заздалегідь. Ви можете визначити властивість `propTypes` для компонента так само, як і `defaultProps`. Таким чином ви перевірите, чи пропс наданого ключа має наданий тип. Ось приклад запиту типу `function` для пропсу `handleClick`:

```js
MyComponent.propTypes = { handleClick: PropTypes.func.isRequired }
```

У прикладі вище частина `PropTypes.func` перевіряє, чи `handleClick` є функцією. `isRequired` повідомляє React, що `handleClick` є обов’язковою властивістю цього компонента. Ви побачите попередження, якщо цього пропсу немає. Також зверніть увагу, що `func` означає `function`. Серед семи примітивних типів JavaScript, лише `function` та `boolean` (пишеться як `bool`) пишуться незвично. Окрім цих примітивних типів існують й інші. Наприклад, ви можете перевірити, чи пропс є елементом React. Будь ласка, зверніться до <a href="https://reactjs.org/docs/typechecking-with-proptypes.html#proptypes" target="_blank" rel="noopener noreferrer nofollow">документації</a>, щоб дізнатися про інші варіанти.

**Примітка:** `PropTypes` в React v15.5.0 імпортується незалежно з React, ось так: `import PropTypes from 'prop-types';`

# --instructions--

Визначте `propTypes` для компонента `Items`, щоб вимагати `quantity` як пропс та переконатись, що він є типом `number`.

# --hints--

Компонент `ShoppingCart` має відтворюватись.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(ShoppingCart));
    return mockedComponent.find('ShoppingCart').length === 1;
  })()
);
```

Компонент `Items` має відтворюватись.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(ShoppingCart));
    return mockedComponent.find('Items').length === 1;
  })()
);
```

Компонент `Items` має містити перевірку `propTypes`, щоб вимагати значення `quantity` та переконатись, що це значення є числом.

```js
(getUserInput) =>
  assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(getUserInput('index'));
      return (
        noWhiteSpace.includes('quantity:PropTypes.number.isRequired') &&
        noWhiteSpace.includes('Items.propTypes=')
      );
    })()
  );
```

# --seed--

## --before-user-code--

```jsx
var PropTypes = {
  number: { isRequired: true }
};
```

## --after-user-code--

```jsx
ReactDOM.render(<ShoppingCart />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const Items = (props) => {
  return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
};

// Change code below this line

// Change code above this line

Items.defaultProps = {
  quantity: 0
};

class ShoppingCart extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <Items />
  }
};
```

# --solutions--

```jsx
const Items = (props) => {
  return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
};

// Change code below this line
Items.propTypes = {
  quantity: PropTypes.number.isRequired
};
// Change code above this line

Items.defaultProps = {
  quantity: 0
};

class ShoppingCart extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <Items />
  }
};
```
