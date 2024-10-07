---
id: 587d7db0367417b2b2512b81
title: Entender de onde vem o protótipo de um objeto
challengeType: 1
forumTopicId: 301330
dashedName: understand-where-an-objects-prototype-comes-from
---

# --description--

Just like people inherit genes from their parents, an object inherits its `prototype` directly from the constructor function that created it. For example, here the `Bird` constructor creates the `duck` object:

```js
function Bird(name) {
  this.name = name;
}

let duck = new Bird("Donald");
```

`duck` herda seu `prototype` da função construtora de `Bird`. Você pode mostrar a relação com o método `isPrototypeOf`:

```js
Bird.prototype.isPrototypeOf(duck);
```

Isso retornaria `true`.

# --instructions--

Utilize `isPrototypeOf` para verificar o `prototype` de `beagle`.

# --hints--

Você deve mostrar que o `Dog.prototype` é um `protótipo` de `beagle`

```js
assert(/Dog\.prototype\.isPrototypeOf\(beagle\)/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function Dog(name) {
  this.name = name;
}

let beagle = new Dog("Snoopy");

// Only change code below this line
```

# --solutions--

```js
function Dog(name) {
  this.name = name;
}
let beagle = new Dog("Snoopy");
Dog.prototype.isPrototypeOf(beagle);
```
