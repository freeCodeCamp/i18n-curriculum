---
id: 67d2f4ddb4a4306fdf5bbaee
title: O que é Memoization e Como o Hook `useMemo` Funciona?
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

À medida que sua aplicação React cresce, re-renderizações desnecessárias e cálculos caros podem diminuir o desempenho, levando a atualizações lentas da UI e aumento no uso de recursos.

Isso pode ser especialmente problemático em aplicativos com gerenciamento de estado complexo, listas grandes, funções que exigem cálculos pesados e muitos componentes com um único pai.

Isso gera a necessidade de otimizar seu app React para melhor desempenho, minimizando cálculos redundantes e garantindo interações mais suaves.

React resolve esse problema com um processo chamado memoization, uma técnica que armazena em cache valores e funções para evitar recálculos desnecessários, para que seu app possa ser mais rápido e responsivo.

Por definição, memoization é uma técnica de otimização na qual o resultado de chamadas de função caras é armazenado em cache (lembrado) com base em argumentos específicos. Quando os mesmos argumentos são fornecidos novamente, o resultado em cache é retornado em vez de recalcular a função.

O processo de memoização acontece desta forma:

- Armazene os resultados das chamadas de função junto com seus argumentos de entrada.

- Antes de executar a função, verifique se o resultado para os argumentos atuais já existe no cache.

- Se existir, retorne o resultado em cache em vez de executar o cálculo novamente.

- Se não existir, calcule o resultado, armazene-o no cache e então retorne-o.

Para melhorar a experiência do desenvolvedor com memoização, o React fornece três ferramentas – `React.memo` (ou `memo`), `useMemo` e `useCallback`. 

Como você pode imaginar, tanto `useMemo` e `useCallback` são hooks, mas `React.memo` é um wrapper de componente, um componente de ordem superior (HOC).

Na próxima lição, vamos ver como o hook `useCallback` e `React.memo` funcionam.

`useMemo` permite que você memorize valores computados enquanto `useCallback` faz o mesmo para referências de função.

Se você está se perguntando o que são valores computados e referências de função, valores computados referem-se ao resultado da execução de uma função, enquanto referências de função são os ponteiros para funções – o objeto da função na memória.

Vamos ver como usar o hook `useMemo` primeiro. Aqui está a sintaxe básica do hook `useMemo`:

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

Você pode ver que tudo o que é necessário é envolver o hook `useMemo` em torno da função.

Este componente `ExpensiveSquare` receberá uma prop `num` que ele usará para calcular o quadrado:

```jsx
function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  const squared = calculateSquare(num);
  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}
export default ExpensiveSquare;
```

Aqui está o componente `App` onde o `ExpensiveSquare` está sendo usado:

```jsx
import { useState, useEffect } from "react";
import ExpensiveSquare from "./components/ExpensiveSquare";

function App() {
 const [timer, setTimer] = useState(0);
 const [num, setNum] = useState(0);

 useEffect(() => {
   const interval = setInterval(() => setTimer((c) => c + 1), 1000);
   return () => clearInterval(interval);
 }, []);

 return (
   <div>
     <h1>Timer: {timer} seconds gone</h1>
     <ExpensiveSquare num={num} />
     <button onClick={() => setNum((n) => n + 1)}>Increase Number</button>
   </div>
 );
}

export default App;
```

O `timer` no `useEffect`, executando a cada segundo, fará com que a função `calculateSquare` seja executada toda vez que ele rodar, mesmo quando você não aumentar a variável de estado `num`.

Para resolver esse problema, podemos usar o hook `useMemo` envolvendo a chamada da função nele e especificando a variável `num` como dependência:

```jsx
// import the useMemo hook
import { useMemo } from "react";

function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  // const squared = calculateSquare(num);
  // Wrap the function call in useMemo instead
  const squared = useMemo(() => calculateSquare(num), [num]);

  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}

export default ExpensiveSquare;
```

Isso garantirá que a função seja memorizada armazenando em cache o resultado, para que o cálculo aconteça apenas quando a variável `num` mudar, não quando qualquer coisa mudar no componente em que está sendo usada.

A chamada da função `calculateSquare` não está mais sendo executada toda vez que `timer` muda, apenas na renderização inicial e quando `num` muda.

# --questions--

## --text--

O que é memoization em React?

## --answers--

Uma técnica que armazena em cache valores e funções para evitar recálculos desnecessários.

---

Uma técnica que permite gerenciar atualizações de estado do componente para evitar recálculos desnecessários.

### --feedback--

Ele ajuda a otimizar o desempenho armazenando resultados previamente calculados.

---

Um processo de conciliação do Virtual DOM com o DOM real.

### --feedback--

Ele ajuda a otimizar o desempenho armazenando resultados previamente calculados.

---

Uma forma de lidar com efeitos colaterais em componentes funcionais.

### --feedback--

Ele ajuda a otimizar o desempenho armazenando resultados previamente calculados.

## --video-solution--

1

## --text--

Qual é a diferença entre valores computados e referências de função?

## --answers--

Valores computados são objetos de função, enquanto referências de função são resultados de execução.

### --feedback--

Um é a saída de uma função, enquanto o outro é apenas um ponteiro para ela.

---

Valores computados são o resultado da execução de uma função, enquanto referências de função são os objetos de função na memória.

---

Valores computados e referências de função são a mesma coisa.

### --feedback--

Um é a saída de uma função, enquanto o outro é apenas um ponteiro para ela.

---

Referências de função armazenam valores computados.

### --feedback--

Um é a saída de uma função, enquanto o outro é apenas um ponteiro para ela.

## --video-solution--

2

## --text--

Qual destes NÃO é uma das ferramentas que o React fornece para memoização?

## --answers--

`React.memo`

### --feedback--

Ferramentas de memoização focam em armazenar em cache valores e funções, enquanto esta opção lida com efeitos colaterais.

---

`useMemo`

### --feedback--

Ferramentas de memoização focam em armazenar em cache valores e funções, enquanto esta opção lida com efeitos colaterais.

---

`useCallback`

### --feedback--

Ferramentas de memoização focam em armazenar em cache valores e funções, enquanto esta opção lida com efeitos colaterais.

---

`useEffect`

## --video-solution--

4
