---
id: 67d1ad82cff954a854bcbcaa
title: O que é Prop Drilling?
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

Prop drilling é a abordagem mais básica para gerenciamento de estado em aplicações React. Parece simples, mas pode ficar confuso rapidamente e é muito difícil de escalar.

Vamos ver o que é prop drilling, por que é um problema e uma boa alternativa para ele conforme uma aplicação cresce.

Prop drilling é o processo de passar props de um componente pai para componentes filhos profundamente aninhados, mesmo quando alguns dos componentes filhos não precisam dos props.

Por exemplo, digamos que você tenha três componentes chamados `Parent`, `Child` e `Grandchild`. Se você quiser usar alguns dados no componente `Grandchild`, mas eles estiverem no componente `Parent`, você precisará passá-los do `Parent` para o componente `Child` e depois do `Child` para o componente `Grandchild`.

Ou se os dados estiverem ainda mais acima na cadeia, os dados também podem ter que ser passados para o componente `Parent`.

Aqui, os dados que quero exibir são a string `Hello, Prop Drilling!`. É atribuído à variável `greeting` no componente raiz `App`:

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

Você pode ver que o componente `Parent` também está recebendo a variável `greeting` como o valor de uma prop `greeting`. Aqui está o componente `Parent` passando-o para o componente `Child` como o valor de outra prop `greeting` no `Child`:

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

E aqui está o componente `Child` que o passa para o componente `Grandchild`:

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

E finalmente o componente `Grandchild` recebe a saudação e a usa como o conteúdo de um elemento `h1`:

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

No navegador, você verá uma página com um único elemento `h1` que contém o texto `Hello, Prop Drilling!`.

A princípio, prop drilling pode não parecer um problema tão grande. Mas à medida que seu app cresce, fica mais difícil de entender, depurar e manter.

Se você precisar passar props, tente mantê-los todos em um único componente pai. Essa abordagem de centralizar todos os dados necessários é chamada de "single source of truth".

Por exemplo, digamos que você queira adicionar uma nova `response` para acompanhar seu `greeting` e que queira usar ambos no componente `Grandchild`. Como `greeting` já está no componente `App`, faz sentido colocar `response` lá também e passar ambos pela cadeia:

```jsx
function App() {
  const greeting = "Hello, Prop Drilling!";
  const response = "I'm not here to play!";

  return <Parent greeting={greeting} response={response} />;
}

const Parent = ({ greeting, response }) => {
  return <Child greeting={greeting} response={response} />;
};

const Child = ({ greeting, response }) => {
  return <Grandchild greeting={greeting} response={response} />;
};

const Grandchild = ({ greeting, response }) => {
  return (
    <>
      <h1>{greeting}</h1>
      <h2>{response}</h2>
    </>
  );
};

export default App;
```

No navegador, você verá uma página com um elemento `h1` que tem o texto `Hello, Prop Drilling!` e um elemento `h2` que tem o texto `I'm not here to play!`.

Para evitar prop drilling, especialmente em aplicações grandes e complexas, considere usar a Context API ou bibliotecas de gerenciamento de estado como Redux e Redux Toolkit, Zustand, Recoil e outras.

Você aprenderá mais sobre isso nas próximas lições.

# --questions--

## --text--

Como uma prop fluiria de um componente pai para um componente neto?

## --answers--

Definindo a prop dentro do componente neto.

### --feedback--

A prop deve passar pelo child antes de chegar ao grandchild.

---

Passando-o do pai para o filho, depois do filho para o neto.

---

Ao usar o hook `useEffect` para buscar a prop dinamicamente.

### --feedback--

A prop deve passar pelo child antes de chegar ao grandchild.

---

Ao usar o hook `useState` no bisneto.

### --feedback--

A prop deve passar pelo child antes de chegar ao grandchild.

## --video-solution--

2

## --text--

O que é prop drilling em React?

## --answers--

Passando props diretamente apenas para os componentes que precisam deles.

### --feedback--

Isso acontece quando props são passados por vários níveis desnecessariamente.

---

Usando contexto para compartilhar estado entre componentes.

### --feedback--

Isso acontece quando props são passados por vários níveis desnecessariamente.

---

Passando props de um componente pai para componentes filhos profundamente aninhados.

---

Aprofundando no estado do componente usando hooks.

### --feedback--

Isso acontece quando props são passados por vários níveis desnecessariamente.

## --video-solution--

3

## --text--

Por que o prop drilling é considerado um problema em aplicações maiores?

## --answers--

Facilita o gerenciamento de estado.

### --feedback--

Muitas props passando por vários componentes podem deixar o código bagunçado.

---

Ele melhora o desempenho reduzindo re-renderizações.

### --feedback--

Muitas props passando por vários componentes podem deixar o código bagunçado.

---

Isso torna o código mais difícil de ler, depurar e manter.

---

Ele elimina a necessidade de bibliotecas de gerenciamento de estado.

### --feedback--

Muitas props passando por vários componentes podem deixar o código bagunçado.

## --video-solution--

3
