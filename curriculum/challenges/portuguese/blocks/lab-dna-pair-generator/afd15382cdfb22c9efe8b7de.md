---
id: afd15382cdfb22c9efe8b7de
title: Implemente um Gerador de Pares de DNA
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

Na dupla hélice do DNA, as bases estão sempre pareadas: se em uma fita há uma base <em>A</em>, na outra fita diretamente à frente há uma base <em>T</em>, o outro par é <em>C</em> e <em>G</em>.

Neste laboratório, você escreverá uma função para corresponder aos pares de bases ausentes da cadeia de DNA fornecida. Para cada caractere na string fornecida, encontre o caractere do par de base.

Por exemplo, para a entrada `ATCG`, retorne `[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]`

A base <em>A</em> se emparelha com uma base <em>T</em>, a base <em>T</em> se emparelha com uma base <em>A</em>, a base <em>C</em> se emparelha com a base <em>G</em> e finalmente a base <em>G</em> se emparelha com uma base <em>C</em>.

**Objetivo**: Cumprir as user stories abaixo e fazer com que todos os testes passem para completar o laboratório.

**Histórias de Usuário:**

1. Você deve ter uma função `pairElement` que recebe uma string de qualquer comprimento como argumento.
1. A função `pairElement` deve retornar um array 2d, onde cada array interno tem duas strings dentro, a primeira string é uma base da entrada e a segunda string é a base pareada.
1. Quando dado `A`, a função deve emparelhá-lo com `T`.
1. Quando receber `T`, a função deve emparelhá-lo com `A`.
1. Quando receber `C`, a função deve emparelhá-lo com `G`.
1. Quando dado `G`, a função deve emparelhá-lo com `C`.

# --hints--

Você deve criar uma função chamada `pairElement`.

```js
assert.isFunction(pairElement);
```

`pairElement` deve receber um único argumento.

```js
assert.lengthOf(pairElement, 1);
```

`pairElement("ATCGA")` deve retornar `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`.

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` deve retornar `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`.

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` deve retornar `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`.

```js
assert.deepEqual(pairElement('CTCTA'), [
  ['C', 'G'],
  ['T', 'A'],
  ['C', 'G'],
  ['T', 'A'],
  ['A', 'T']
]);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var lookup = Object.create(null);
lookup.A = 'T';
lookup.T = 'A';
lookup.C = 'G';
lookup.G = 'C';

function pairElement(str) {
 return str.split('').map(function(p) {return [p, lookup[p]];});
}
```
