---
id: 661e27588602567c118451d5
title: Lição E de Aprenda arrays e laços
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-e
---

# --description--

Agora que você tem um entendimento básico sobre arrays, vamos falar sobre laços. Laços são usados para executar um bloco de código várias vezes. Um desses laços é o laço `while`. O laço `while` executa um bloco de código enquanto a condição for verdadeira. A sintaxe do laço `while` é a seguinte:

```javascript
while (condition) {
  // code block to be executed
}
```

Por exemplo, o seguinte trecho de código imprime os números de 1 a 5:

```javascript
let i = 1;
while (i <= 5) {
  console.log(i);
  i++;
}
```

O trecho de código acima inicializa uma variável `i` com o valor `1`. O laço `while` executa o bloco de código enquanto o valor de `i` for menor ou igual a `5`. O valor de `i` é incrementado em `1` em cada iteração.

# --questions--

## --text--

Qual será a saída do seguinte trecho de código JavaScript?

```javascript
let i = 5;
while (i >= 0) {
  console.log(i);
  i--;
}
```


## --answers--

`5`, `4`, `3`, `2`, `1`, `0`

---

`5`, `4`, `3`, `2`, `1`

---

`5`, `4`, `3`, `2`, `1`, `0`, `-1`

---

`1`, `2`, `3`, `4`, `5`

## --video-solution--

1
