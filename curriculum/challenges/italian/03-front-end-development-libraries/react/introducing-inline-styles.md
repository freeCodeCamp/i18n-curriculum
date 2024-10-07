---
id: 5a24c314108439a4d4036181
title: Gli stili inline
challengeType: 6
forumTopicId: 301395
dashedName: introducing-inline-styles
---

# --description--

There are other complex concepts that add powerful capabilities to your React code. But you may be wondering about the more simple problem of how to style those JSX elements you create in React. You likely know that it won't be exactly the same as working with HTML because of <a href="/learn/front-end-development-libraries/react/define-an-html-class-in-jsx" target="_blank" rel="noopener noreferrer nofollow">the way you apply classes to JSX elements</a>.

Se importi degli stili da un foglio di stile, non è poi così diverso. Applichi una classe al tuo elemento JSX usando l'attributo `className` e applichi gli stili alla classe nel tuo foglio di stile. Un'altra opzione è quella di applicare degli stili in linea, che sono molto comuni nello sviluppo di ReactJS.

Puoi applicare degli stili in linea a elementi JSX in modo simile a come faresti in HTML, ma con alcune differenze JSX. Ecco un esempio di uno stile in linea in HTML:

```jsx
<div style="color: yellow; font-size: 16px">Mellow Yellow</div>
```

Gli elementi JSX usano l'attributo `style`, ma a causa del modo in cui JSX è transcodificato, non puoi impostare il valore su una `string`. Invece, gli assegnerai un `object` JavaScript. Ecco un esempio:

```jsx
<div style={{color: "yellow", fontSize: 16}}>Mellow Yellow</div>
```

Vedi come abbiamo usato camelCase nella proprietà `fontSize`? Questo perché React non accetterà le chiavi kebab-case nell'oggetto style. React applicherà per noi il nome di proprietà corretto in HTML.

# --instructions--

Aggiungi un attributo `style` al `div`nell'editor di codice per dare al testo un colore rosso e una dimensione del carattere di `72px`.

Nota che è possibile impostare facoltativamente la dimensione del carattere come un numero, omettendo le unità `px` o scrivendole come `"72px"`.
# --hints--

Il componente dovrebbe mostrare un elemento `div`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Colorful));
    return mockedComponent.children().type() === 'div';
  })()
);
```

L'elemento `div` dovrebbe avere un colore `red`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Colorful));
    return mockedComponent.children().props().style.color === 'red';
  })()
);
```

L'elemento `div` dovrebbe avere una dimensione del carattere di `72px`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Colorful));
    return (
      mockedComponent.children().props().style.fontSize === 72 ||
      mockedComponent.children().props().style.fontSize === '72' ||
      mockedComponent.children().props().style.fontSize === '72px'
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Colorful />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class Colorful extends React.Component {
  render() {
    return (
      <div>Big Red</div>
    );
  }
};
```

# --solutions--

```jsx
class Colorful extends React.Component {
  render() {
    return (
      <div style={{color: "red", fontSize: 72}}>Big Red</div>
    );
  }
};
```
