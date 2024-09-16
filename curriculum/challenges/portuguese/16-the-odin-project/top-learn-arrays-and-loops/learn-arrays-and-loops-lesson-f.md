---
id: 661e27598602567c118451d6
title: Lição F de Aprenda arrays e laços
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-f
---

# --description--

O laço `for` é outro tipo de laço usado para executar um bloco de código várias vezes. O laço `for` é usado quando o número de iterações é conhecido. A sintaxe do laço `for` é a seguinte:

```javascript
for (initialization; condition; increment/decrement) {
  // code block to be executed
}
```

Por exemplo, o seguinte trecho de código imprime os números de 1 a 5:

```javascript
for (let i = 1; i <= 5; i++) {
  console.log(i);
}
```

Para iterar sobre um array usando um laço `for`, você pode usar a propriedade length do array. Por exemplo, o seguinte trecho de código imprime os elementos de um array:

```javascript
const arr = [1, 2, 3, 4, 5];
for (let i = 0; i < arr.length; i++) {
  console.log(arr[i]);
}
```

# --question--

## --text--

Qual será a saída do seguinte trecho de código JavaScript?

```javascript
const items = ['apple', 'banana', 'cherry', 'date'];
for (let i = 1; i < items.length; i++) {
  console.log(items[i]);
}
```

## --answers--

```bash
apple
banana
cherry
date
```

---

```bash
banana
cherry
```

---

```bash
apple
banana
cherry
```

---

```bash
banana
cherry
date
```

## --video-solution--

4
