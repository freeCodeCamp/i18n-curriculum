---
id: 66581a7db1eb2281159492ff
title: Lição F de Aprenda a resolver problemas e a entender erros
challengeType: 15
dashedName: learn-to-solve-problems-and-understand-errors-lesson-f
---

# --description--

Outra parte importante de um erro é o rastreamento da pilha. Ele ajuda você a entender quando o erro foi lançado em sua aplicação, bem como as funções que foram chamadas e que levaram ao erro. Por exemplo, se você tiver o seguinte código:

```javascript
const a = 5;
const b = 10;

function add() {
  return c;
}

function print() {
  add();
}

print();
```

Nossa função `print()` deve chamar `add()`, que retorna uma variável chamada `c`, que atualmente não foi declarada. O erro correspondente é o seguinte:

<img src="https://cdn.statically.io/gh/TheOdinProject/curriculum/284f0cdc998be7e4751e29e8458323ad5d320303/foundations/javascript_basics/understanding_errors/imgs/01.png" width="100%" alt="Um erro mostrando um rastreamento de pilha no console do desenvolvedor" />

O rastreamento de pilha nos diz que:

1. `c is not defined` no escopo de `add()`, que é declarado na linha 5.
1. `add()` foi chamada por `print()`, que foi declarada na linha 9.
1. `print()`, por sua vez, foi chamada na linha 12.

Assim, o rastreamento de pilha permite que você rastreie a evolução de um erro de volta à sua origem, que aqui é a declaração de `add()`.

# --questions--

## --text--

Como o rastreamento de pilha ajuda a depurar o erro no código em JavaScript fornecido?

## --answers--

O rastreamento de pilha mostra que a função `add()` retorna corretamente o valor de `c`.

---

O rastreamento de pilha indica qual linha no código precisa ser editada para corrigir um erro de sintaxe.

---

O rastreamento de pilha fornece um caminho detalhado de chamadas de funções que levam ao erro, ajudando a identificar onde `c` é referenciado incorretamente.

---

O rastreamento de pilha apenas indica que `print()` foi chamada, mas não fornece detalhes sobre o erro em `add()`.

## --video-solution--

3
