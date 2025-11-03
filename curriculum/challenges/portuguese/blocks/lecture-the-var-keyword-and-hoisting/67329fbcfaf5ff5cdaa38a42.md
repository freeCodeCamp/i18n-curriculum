---
id: 67329fbcfaf5ff5cdaa38a42
title: O que é a palavra-chave var e por que não é mais recomendada para uso?
challengeType: 19
dashedName: what-is-the-var-keyword-and-why-is-it-no-longer-suggested-to-use-it
---

# --interactive--

A palavra-chave `var` em JavaScript é uma das formas originais de declarar variáveis. Faz parte da linguagem desde o seu início e por muitos anos permaneceu o método principal para criar variáveis. No entanto, à medida que o JavaScript evoluiu e os desenvolvedores ganharam mais experiência com a linguagem, certas desvantagens de usar `var` tornaram-se aparentes, levando à introdução de `let` e `const` em 2015.

Quando você declara uma variável com `var`, ela se torna com escopo de função ou escopo global. Isso significa que se você declarar uma variável dentro de uma função usando `var` ela será acessível apenas dentro dessa função. No entanto, se você declará-lo fora de qualquer função, ele se torna uma variável global acessível em todo o seu script.  This behavior can sometimes lead to unexpected results and make your code harder to understand.

Um problema com `var` é que ele permite que você redeclare a mesma variável várias vezes sem gerar um erro. Isso pode levar a sobrescritas acidentais e tornar a depuração mais difícil.

:::interactive_editor

```js
var num = 5;
console.log(num); // 5

// This is allowed and doesn't throw an error
var num = 10;
console.log(num); // 10
```

:::

O problema mais significativo com `var` é a falta de escopo de bloco. Variáveis declaradas com `var` dentro de um bloco como uma instrução `if` ou um loop `for` ainda são acessíveis fora desse bloco. 

:::interactive_editor

```js
if (true) {
  var num = 5;
}
console.log(num); // 5
```

:::

Esse comportamento pode levar a vazamentos de variáveis não intencionais e tornar seu código mais propenso a bugs.

Devido a esses problemas, o desenvolvimento moderno em JavaScript migrou amplamente do `var` em favor de `let` e `const`. Essas palavras-chave fornecem escopo de bloco que se alinha mais de perto com o funcionamento do escopo em muitas outras linguagens de programação.

Eles também não permitem redeclaração dentro do mesmo escopo ajudando a prevenir substituições acidentais.

Embora `var` ainda faça parte do JavaScript e funcione em todos os navegadores, geralmente é recomendado usar `let` e `const` no desenvolvimento moderno em JavaScript. Eles fornecem regras claras de escopo, ajudam a evitar armadilhas comuns e tornam o comportamento do seu código mais previsível.

# --questions--

## --text--

Qual é o escopo de uma variável declarada com `var` fora de qualquer função?

## --answers--

Escopo de bloco.

### --feedback--

Pense em onde uma variável `var` declarada fora de uma função pode ser acessada.

---

Escopo da função.

### --feedback--

Pense em onde uma variável `var` declarada fora de uma função pode ser acessada.

---

Escopo global.

---

Escopo do módulo.

### --feedback--

Pense em onde uma variável `var` declarada fora de uma função pode ser acessada.

## --video-solution--

3

## --text--

Como será a saída do seguinte código?

```js
var x = 10;

if (true) {
  var x = 20;
  console.log(x);
}

console.log(x);
```

## --answers--

```js
10
10
```

### --feedback--

Lembre-se que `var` tem escopo de função ou escopo global e permite redeclaração dentro do mesmo escopo.

---

```js
20
20
```

---

```js
10
20
```

### --feedback--

Lembre-se que `var` tem escopo de função ou escopo global e permite redeclaração dentro do mesmo escopo.

---

```js
20
10
```

### --feedback--

Lembre-se que `var` tem escopo de função ou escopo global e permite redeclaração dentro do mesmo escopo.

## --video-solution--

2

## --text--

Qual das seguintes opções NÃO é uma razão para evitar o uso de `var` no JavaScript moderno?

## --answers--

`var` permite a redeclaração de variáveis no mesmo escopo.

### --feedback--

Considere qual afirmação é falsa sobre o comportamento ou suporte de `var`.

---

`var` não é suportado em navegadores modernos.

---

Variáveis `var` têm escopo de função, não de bloco.

### --feedback--

Considere qual afirmação é falsa sobre o comportamento ou suporte de `var`.

---

Variáveis `var` são içadas.

### --feedback--

Considere qual afirmação é falsa sobre o comportamento ou suporte de `var`.

## --video-solution--

2
