---
id: afd15382cdfb22c9efe8b7de
title: Implemente um Gerador de Pares de DNA
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

Os pares de fileiras de DNA são constituídos por pares de bases nitrogenadas.As bases pareadas são representadas pelos caracteres <em>AT</em> e <em>CG</em>, que formam os blocos de construção da dupla hélice do DNA.

Neste laboratório, você escreverá uma função para corresponder aos pares de bases ausentes da cadeia de DNA fornecida. Para cada caractere na string fornecida, encontre o caractere do par de base.

Por exemplo, para a entrada `GCG`, retorne `[["G", "C"], ["C", "G"], ["G", "C"]]`

O caractere e seu par estão emparelhados em um array, e todos os arrays estão agrupados em um array encapsulador.

**Objetivo**: Cumprir as user stories abaixo e fazer com que todos os testes passem para completar o laboratório.

**Histórias de Usuário:**

1. Você deve ter uma função `pairElement` que recebe uma string como argumento.
1. A função `pairElement` deve retornar um array 2d.
1. Quando dado `A`, a função deve emparelhá-lo com `T`.
1. Quando dado `T`, a função deve emparelhá-lo com `A`.
1. Quando receber `C`, a função deve emparelhá-lo com `G`.
1. Quando dado `G`, a função deve emparelhá-lo com `C`.
1. Cada par deve ser retornado como um array com o caractere original primeiro e seu complemento segundo.

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
