---
id: 5a24c314108439a4d403618d
title: Presentare React nel server con renderToString
challengeType: 6
forumTopicId: 301407
dashedName: render-react-on-the-server-with-rendertostring
---

# --description--

So far, you have been rendering React components on the client. Normally, this is what you will always do. However, there are some use cases where it makes sense to render a React component on the server. Since React is a JavaScript view library and you can run JavaScript on the server with Node, this is possible. In fact, React provides a `renderToString()` method you can use for this purpose.

Ci sono due ragioni chiave per cui il rendering sul server può essere utilizzato in un'app del mondo reale. In primo luogo, senza fare questo, le tue applicazioni React consisterebbero in un file HTML relativamente vuoto e in un grande pacchetto di JavaScript da caricare inizialmente sul browser. Questo potrebbe non essere ideale per i motori di ricerca che stanno cercando di indicizzare il contenuto delle tue pagine in modo che le persone possano trovarti. Se si esegue il rendering del markup HTML iniziale sul server e lo si invia al client, il caricamento iniziale della pagina conterrà tutti i markup della pagina che possono essere letti dai motori di ricerca. In secondo luogo, questo crea un'esperienza di caricamento iniziale della pagina più veloce perché l'HTML presentato è più piccolo del codice JavaScript dell'intera app. React sarà comunque in grado di riconoscere la tua app e gestirla dopo il caricamento iniziale.

# --instructions--

Il metodo `renderToString()` è fornito su `ReactDOMServer`, disponibile qui come oggetto globale. Il metodo richiede un argomento che è un elemento di React. Usa questo per presentare `App` in una stringa.

# --hints--

Il componente `App` dovrebbe fare il rendering in una stringa usando `ReactDOMServer.renderToString`.

```js
() =>
  assert(
    code.replace(/ /g, '')
      .includes('ReactDOMServer.renderToString(<App/>)') &&
      Enzyme.mount(React.createElement(App)).children().name() === 'div'
  );
```

# --seed--

## --before-user-code--

```jsx
var ReactDOMServer = { renderToString(x) { return null; } };
```

## --after-user-code--

```jsx
ReactDOM.render(<App />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class App extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <div/>
  }
};

// Change code below this line
```

# --solutions--

```jsx
class App extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <div/>
  }
};

// Change code below this line
ReactDOMServer.renderToString(<App/>);
```
