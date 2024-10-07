---
id: 5a24c314108439a4d4036169
title: Pasa "props" a un componente funcional sin estado
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

Puedes utilizar **atributos personalizados de HTML** creados por ti y soportados por React para ser pasados por props a tu componente. En este caso, la propiedad creada `user` es pasada como atributo al componente `Welcome`. Dado que `Welcome` es un componente funcional sin estado, tiene acceso a este valor de la siguiente manera:

```jsx
const Welcome = (props) => <h1>Hello, {props.user}!</h1>
```

Este valor es llamado `props` por convención y, cuando se trata de componentes funcionales sin estado, se lo considera como un argumento pasado a una función que retorna JSX. Puedes acceder el valor del argumento en el cuerpo de la función. En los componentes de clase, verás que esto es un poco diferente.

# --instructions--

Hay componentes `Calendar` y `CurrentDate` en el editor de código. Al prensentar `CurrentDate` desde el componente `Calendar`, pasa una propiedad de `date` asignada a la fecha actual desde el objeto `Date` de JavaScript. Luego, accede a este `prop` dentro del componente `CurrentDate`, mostrando su valor dentro de las etiquetas `p`. Tenga en cuenta que los valores `prop` se evalúen como JavaScript, deben estar encerrados dentro de corchetes, por ejemplo `date={Date()}`.

# --hints--

El componente `Calendar` debe devolver un único elemento `div`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().type() === 'div';
  })()
);
```

El segundo componente hijo del componente `Calendar` debe ser el componente `CurrentDate`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).name() === 'CurrentDate';
  })()
);
```

El componente `CurrentDate` debe tener una propiedad llamada `date`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).props().date;
  })()
);
```

La propiedad `date` del componente `CurrentDate` debe contener una cadena de texto.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    const prop = mockedComponent.children().childAt(1).props().date;
    return typeof prop === 'string' && prop.length > 0;
  })()
);
```

La propiedad `date` debe ser generada invocando el método `Date()`

```js
assert(/<CurrentDatedate={Date\(\)}\/>/.test(__helpers.removeWhiteSpace(code)));
```

El componente `CurrentDate` debe mostrar el valor del prop `date` dentro de la etiqueta `p`.

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
