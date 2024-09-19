---
id: 65e1b46e500d930ce8ed90ad
title: Lição I de Aprenda variáveis e operadores
challengeType: 15
dashedName: learn-variables-and-operators-lesson-i
---

# --description--

Aumentar ou diminuir um número em um é uma das operações numéricas mais comuns.

Então, existem operadores especiais para isso:

- Incremento `++` aumenta uma variável em 1:

```js
let counter = 2;

// works the same as counter = counter + 1, but is shorter
counter++;      

console.log(counter); // 3
```

- Decremento `--` diminui uma variável em 1:

```js
let counter = 2;

// works the same as counter = counter - 1, but is shorter
counter--;

console.log(counter); // 1
```

Os operadores `++` e `--` podem ser colocados antes ou depois de uma variável.

- Quando o operador vai depois da variável, está na "forma de pós-fixo": `counter++`.

- A "forma de prefixo" é quando o operador vai antes da variável: `++counter`.

Ambas as instruções fazem a mesma coisa: aumentam `counter` em `1`.

Há alguma diferença? Sim, mas você só pode vê-la se usar o valor retornado de `++/--`.

Vamos esclarecer. Como você sabe, todos os operadores retornam um valor. Incremento/decremento não é exceção. A forma prefixada retorna o novo valor enquanto a forma pós-fixada retorna o valor antigo (antes do incremento/decremento).

Para ver a diferença, aqui está um exemplo:

```js
let counter = 1;
let a = ++counter; // (*)

console.log(a); // 2
```

Para resumir:

- Se o resultado do incremento/decremento não for usado, não há diferença em qual forma usar:

```js
let counter = 0;
counter++;
++counter;

console.log( counter ); // 2, the lines above did the same
```

- Se você quiser aumentar um valor e usar imediatamente o resultado do operador, você precisa da forma prefixada:

```js
let counter = 0;
console.log( ++counter ); // 1
```

- Se você quiser incrementar um valor mas usar seu valor anterior, você precisa da forma pós-fixada:

```js 
let counter = 0;
console.log( counter++ ); // 0
```

# --questions--

## --text--

Qual é a diferença no resultado das duas instruções de registro no console no código JavaScript abaixo?

```js
let counter = 1;
console.log(2 * ++counter); // Statement A

let counter = 1;
console.log(2 * counter++); // Statement B
```

## --answers--

Não há diferença. As duas instruções de alerta mostrarão o mesmo resultado.

---

A instrução A registrará `4` porque `++counter` incrementa o valor antes da multiplicação. A instrução B registrará `2` porque `counter++` incrementa o valor após a multiplicação.

---

A instrução A registrará `2` porque `++counter` é um erro de sintaxe. A instrução B registrará `4` porque `counter++` é a maneira correta de incrementar um contador.

---

As duas instruções registrarão `3`, pois o contador é incrementado em ambos os casos antes de `console.log`.


## --video-solution--

2
