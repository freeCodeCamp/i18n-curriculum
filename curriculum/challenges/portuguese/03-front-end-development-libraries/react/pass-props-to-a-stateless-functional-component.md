---
id: 5a24c314108439a4d4036169
title: Passar props para um componente funcional sem estado
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

Você usa **atributos HTML personalizados** criados por você e suportados por React para serem passados ao componente. Neste caso, a propriedade criada `user` é passada para o componente `Welcome`. Uma vez que `Welcome` é um componente funcional sem estado, ele tem acesso a esse valor assim:

```jsx
const Welcome = (props) => <h1>Hello, {props.user}!</h1>
```

É padrão chamar esse valor `props` e, quando lidar com componentes funcionais sem estado, você basicamente considera isso como um argumento para uma função que retorna JSX. Você pode acessar o valor do argumento no corpo da função. Com componentes de classe, você verá que isto é um pouco diferente.

# --instructions--

Existe no editor de código os componentes `Calendar` e `CurrentDate`. Ao renderizar `CurrentDate` do componente `Calendar`, passe em uma propriedade `date` atribuída à data atual a partir do objeto `Date` do JavaScript. Em seguida, acesse essa `prop` no componente `CurrentDate`, mostrando seu valor dentro das tags `p`. Note que para que os valores de `prop` sejam avaliados como JavaScript, eles devem ser colocados entre chaves, por exemplo, `date={Date()}`.

# --hints--

O componente `Calendar` deve retornar um único elemento `div`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().type() === 'div';
  })()
);
```

O segundo filho do componente `Calendar` deve ser o componente `CurrentDate`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).name() === 'CurrentDate';
  })()
);
```

O componente `CurrentDate` deve ter uma prop chamada `date`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).props().date;
  })()
);
```

A propriedade `date` de `CurrentDate` deve conter uma string de texto.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    const prop = mockedComponent.children().childAt(1).props().date;
    return typeof prop === 'string' && prop.length > 0;
  })()
);
```

A propriedade `date` deve ser gerada chamando `Date()`

```js
assert(/<CurrentDatedate={Date\(\)}\/>/.test(__helpers.removeWhiteSpace(code)));
```

O componente `CurrentDate` deve renderizar o valor da prop `date` na tag `p`.

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
