---
id: 5a24c314108439a4d4036189
title: Cambia el CSS inline condicionalmente según el estado del componente
challengeType: 6
forumTopicId: 301380
dashedName: change-inline-css-conditionally-based-on-component-state
---

# --description--

At this point, you've seen several applications of conditional rendering and the use of inline styles. Here's one more example that combines both of these topics. You can also render CSS conditionally based on the state of a React component. To do this, you check for a condition, and if that condition is met, you modify the styles object that's assigned to the JSX elements in the render method.

Este paradigma es importante entenderlo porque es un cambio dramático del enfoque más tradicional de aplicar estilos modificando elementos del DOM directamente (muy común con jQuery, por ejemplo). Con ese enfoque, debes hacer un seguimiento de cuándo cambian los elementos y también manejar directamente la manipulación. Puede resultar difícil hacer un seguimiento de los cambios, lo que podría hacer que tu interfaz de usuario sea impredecible. Cuando configuras un objeto de estilo en función de una condición, estás describiendo cómo debería verse la interfaz de usuario en función del estado de la aplicación. Existe un flujo claro de información que sólo se mueve en una dirección. Este es el método preferido para escribir aplicaciones con React.

# --instructions--

El editor de código tiene un simple componente de entrada controlado, con un estilo de borde. Quieres aplicar un estilo rojo a este borde si el usuario escribe más de 15 caracteres de texto en la casilla de entrada. Agrega una condición para verificarlo y, si la condición es válida, establece el estilo del borde de la casilla de entrada como `3px solid red`. Puedes probarlo introduciendo texto en la casilla de entrada.

# --hints--

El componente `GateKeeper` debe renderizar un elemento `div`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return mockedComponent.find('div').length === 1;
  })()
);
```

El componente `GateKeeper` debe inicializarse con una clave de estado `input` establecida con una cadena vacía.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return mockedComponent.state().input === '';
  })()
);
```

El componente `GateKeeper` debe renderizar una etiqueta `h3` y una etiqueta `input`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return (
      mockedComponent.find('h3').length === 1 &&
      mockedComponent.find('input').length === 1
    );
  })()
);
```

La etiqueta `input`, inicialmente debe tener un estilo `1px solid black` para la propiedad `border`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return (
      mockedComponent.find('input').props().style.border === '1px solid black'
    );
  })()
);
```

La etiqueta `input` debe tener un estilo de borde de `3px solid red` si el valor de entrada en el estado tiene más de 15 caracteres.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 100));
  const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
  const simulateChange = (el, value) =>
    el.simulate('change', { target: { value } });
  let initialStyle = mockedComponent.find('input').props().style.border;
  const state_1 = () => {
    mockedComponent.setState({ input: 'this is 15 char' });
    return waitForIt(() => mockedComponent.find('input').props().style.border);
  };
  const state_2 = () => {
    mockedComponent.setState({
      input: 'A very long string longer than 15 characters.'
    });
    return waitForIt(() => mockedComponent.find('input').props().style.border);
  };
  const style_1 = await state_1();
  const style_2 = await state_2();
  assert(
    initialStyle === '1px solid black' &&
      style_1 === '1px solid black' &&
      style_2 === '3px solid red'
  );
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<GateKeeper />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class GateKeeper extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({ input: event.target.value })
  }
  render() {
    let inputStyle = {
      border: '1px solid black'
    };
    // Change code below this line

    // Change code above this line
    return (
      <div>
        <h3>Don't Type Too Much:</h3>
        <input
          type="text"
          style={inputStyle}
          value={this.state.input}
          onChange={this.handleChange} />
      </div>
    );
  }
};
```

# --solutions--

```jsx
class GateKeeper extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({ input: event.target.value })
  }
  render() {
    let inputStyle = {
      border: '1px solid black'
    };
    if (this.state.input.length > 15) {
      inputStyle.border = '3px solid red';
    };
    return (
      <div>
        <h3>Don't Type Too Much:</h3>
        <input
          type="text"
          style={inputStyle}
          value={this.state.input}
          onChange={this.handleChange} />
      </div>
    );
  }
};
```
