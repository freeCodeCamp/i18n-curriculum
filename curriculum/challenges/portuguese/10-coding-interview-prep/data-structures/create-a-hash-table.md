---
id: 587d825b367417b2b2512c8e
title: Criar uma tabela hash
challengeType: 1
forumTopicId: 301627
dashedName: create-a-hash-table
---

# --description--

In this challenge we will learn about hash tables. A Hash table is used to implement associative arrays, or mappings of key-value pairs, like the objects and Maps we have just been studying. A JavaScript object could be implemented as a hash table, for instance (its actual implementation will depend on the environment it's running in). The way a hash table works is that it takes a key input and hashes this key in a deterministic way to some numerical value. This numerical value is then used as the actual key the associated value is stored by. Then, if you try to access the same key again, the hashing function will process the key, return the same numerical result, which will then be used to look up the associated value. This provides very efficient O(1) lookup time on average.

As tabelas hash podem ser implementadas como arrays com funções de hash produzindo índices de array dentro de um intervalo especificado. Nesse método, a escolha do tamanho do array é importante, assim como a função de hashing. Por exemplo, o que aconteceria se a função de hashing produzisse o mesmo valor para duas chaves diferentes? A isso chamamos de colisão. Uma maneira de lidar com colisões é apenas armazenar os dois pares chave-valor naquele índice. Então, ao consultar qualquer um, você teria que iterar através do grupo de itens para encontrar a chave que está procurando. Uma boa função de hashing minimizará colisões para manter o tempo de busca eficiente.

Aqui, não nos preocuparemos com os detalhes da implementação do hashing e das tabelas hash. Tentaremos apenas ter uma noção geral de como funcionam.

# --instructions--

Vamos criar a funcionalidade básica de uma tabela hash. Criamos uma função de hashing simples para sua utilização. Você pode passar um valor de string para a função `hash` e ele retornará um valor de hash que você pode usar como chave para o armazenamento. Armazene itens baseados neste valor de hash no objeto `this.collection`. Crie esses três métodos: `add`, `remove` e `lookup`. O primeiro deve aceitar um par de chave-valor para adicionar à tabela hash. O segundo deve remover um par de chave-valor quando recebe uma chave. O terceiro deve aceitar uma chave e retornar o valor associado ou `null` se a chave não estiver presente.

Não se esqueça de escrever seu código para levar em conta as colisões!

**Observação:** os testes do método `remove` não passarão até que os métodos `add` e `lookup` sejam corretamente implementados.

# --hints--

The `hash` function should be valid.

```js
let calls = 0;
const ourHash = string => {
  calls++;
  let hashCode = 0;
  for (let i = 0; i < string.length; i++) {
    hashCode += string.charCodeAt(i);
  }
  return hashCode;
};

assert.strictEqual(hash('yek'),ourHash('yek'));

assert.strictEqual(hash('key'),ourHash('key'));
assert.strictEqual(hash('key1'),ourHash('key1'));
assert.strictEqual(hash('key2'),ourHash('key2'));
assert.strictEqual(hash('key3'),ourHash('key3'));

assert.strictEqual(hash('1key'),ourHash('1key'));
assert.strictEqual(hash('ke1y'),ourHash('ke1y'));
assert.strictEqual(hash('altKey'),ourHash('altKey'));

assert.strictEqual(called,calls); 
```

A estrutura de dados `HashTable` deve existir.

```js
assert.isDefined(HashTable); 
let newHashTable = new HashTable(); 
assert.isObject(newHashTable); 
```

`HashTable` deve ter o método `add`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.add); 
```

`HashTable` deve ter o método `lookup`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.lookup); 
```

`HashTable` deve ter o método `remove`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.remove); 
```

O método `add` deve adicionar pares chave-valor e o método `lookup` deve retornar os valores associados a uma determinada chave.

```js
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
assert.strictEqual(newHashTable.lookup('key'),'value'); 
```

O método `remove` deve aceitar uma chave como entrada e deve remover o par chave-valor associado.

```js
let hashValue = hash('key');
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
newHashTable.remove('key'); 
assert.notProperty(newHashTable.collection,hashValue); 
```

O método `remove` só deve remover o par chave-valor correto.

```js
let newHashTable = new HashTable(); 
let hashValue = hash('key');
newHashTable.add('key','value');
newHashTable.add('yek','value');
newHashTable.add('altKey','value');
newHashTable.remove('yek');

assert.notExists(newHashTable.lookup('yek'));
assert.exists(newHashTable.lookup('altKey'));
assert.exists(newHashTable.lookup('key'));

newHashTable.remove('key');

assert.notProperty(newHashTable.collection,hashValue); 
assert.exists(newHashTable.lookup('altKey'));

```

Os itens devem ser adicionados usando a função de hash.

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1', 'value1')
newHashTable.add('key2', 'value2');
newHashTable.add('key3', 'value3');
assert.strictEqual(called,3); 
```

A tabela hash deve tratar de colisões.

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1','value1');
newHashTable.add('1key', 'value2'); 
newHashTable.add('ke1y', 'value3'); 
assert.strictEqual(newHashTable.lookup('key1'),'value1');
assert.strictEqual(newHashTable.lookup('1key'),'value2');
assert.strictEqual(newHashTable.lookup('ke1y'),'value3');
```

# --seed--

## --seed-contents--

```js
var called = 0;
var hash = string => {
  called++;
  var hashed = 0;
  for (var i = 0; i < string.length; i++) {
    hashed += string.charCodeAt(i);
  }
  return hashed;
};
var HashTable = function() {
  this.collection = {};
  // Only change code below this line

  // Only change code above this line
};
```

# --solutions--

```js
var called = 0;
var hash = (string) => {
  called++;
  var hash = 0;
  for (var i = 0; i < string.length; i++) { hash += string.charCodeAt(i); }
  return hash;
};
var HashTable = function() {
  this.collection = {};
  // Only change code below this line

  this.add = function(key, val) {
    var theHash = hash(key);
    if (!this.collection.hasOwnProperty(theHash)) {
      this.collection[theHash] = {};
    }
    this.collection[theHash][key] = val;
  }

  this.remove = function(key) {
    var theHash = hash(key);
    var hashedObj = this.collection[theHash];
    if (hashedObj.hasOwnProperty(key)) {
      delete hashedObj[key];
    }
    if (!Object.keys(hashedObj).length) {
      delete this.collection[theHash];
    }
  }

  this.lookup = function(key) {
    var theHash = hash(key);
    if (this.collection.hasOwnProperty(theHash)) {
      return this.collection[theHash][key];
    }
    return null
  }
  // Only change code above this line
};
```
