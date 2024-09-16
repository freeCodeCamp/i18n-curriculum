---
id: 661e27578602567c118451d3
title: Lição C de Aprenda arrays e laços
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-c
---

# --description--

Uma das maneiras mais comuns de adicionar um novo elemento a um array é usando o método `push()`. O método `push()` adiciona um ou mais elementos ao final de um array e retorna o novo comprimento do array.

Por exemplo, para adicionar um novo elemento ao array `pet`, você pode usar o seguinte código:

```javascript
const pet = ['cat', 'dog', 'bunny'];
pet.push('parrot');
console.log(pet); // Output: ['cat', 'dog', 'bunny', 'parrot']
```

Para remover o último elemento de um array, você pode usar o método `pop()`. O método `pop()` remove o último elemento de um array e retorna aquele elemento.

Por exemplo, para remover o último elemento do array `pet`, você pode usar o seguinte código:

```javascript
const pet = ['cat', 'dog', 'tiger'];
pet.pop();
console.log(pet); // Output: ['cat', 'dog']
```


# --question--

## --text--

Dado o seguinte código em JavaScript, qual será a saída após a execução do trecho de código?

```javascript
const animals = ['deer', 'whale', 'frog'];
animals.push('shark', 'bear');
const removed = animals.pop();

console.log(animals);
console.log(removed);
```

## --answers--

`['deer', 'whale', 'frog', 'shark', 'bear']` e `'bear'`

---

`['deer', 'whale', 'frog', 'shark']` e `'bear'`

---

`['deer', 'whale', 'frog', 'shark', 'bear']` e `null`

---

`['deer', 'whale', 'frog', 'shark', 'bear']` e `['deer', 'whale', 'frog', 'shark']`

## --video-solution--

2
