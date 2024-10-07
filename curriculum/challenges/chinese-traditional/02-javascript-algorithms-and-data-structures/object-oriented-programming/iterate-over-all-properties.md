---
id: 587d7daf367417b2b2512b7d
title: 迭代所有屬性
challengeType: 1
forumTopicId: 301320
dashedName: iterate-over-all-properties
---

# --description--

You have now seen two kinds of properties: <dfn>own properties</dfn> and `prototype` properties. Own properties are defined directly on the object instance itself. And prototype properties are defined on the `prototype`.

```js
function Bird(name) {
  this.name = name;  //own property
}

Bird.prototype.numLegs = 2; // prototype property

let duck = new Bird("Donald");
```

這個示例會告訴你如何將 `duck` 的自身屬性和 `prototype` 屬性分別添加到 `ownProps` 數組和 `prototypeProps` 數組裏面：

```js
let ownProps = [];
let prototypeProps = [];

for (let property in duck) {
  if(duck.hasOwnProperty(property)) {
    ownProps.push(property);
  } else {
    prototypeProps.push(property);
  }
}

console.log(ownProps);
console.log(prototypeProps);
```

`console.log(ownProps)` 將在控制檯中顯示 `["name"]` ，`console.log(prototypeProps)` 將顯示 `["numLegs"]`。

# --instructions--

將 `beagle` 的自身屬性都添加到 `ownProps` 數組裏面去。 將 `Dog` 中所有的 `prototype` 屬性都添加到 `prototypeProps` 數組中。

# --hints--

`ownProps` 數組應該包含 `name`。

```js
assert.deepEqual(ownProps, ['name']);
```

`prototypeProps` 數組應該包含 `numLegs`。

```js
assert.deepEqual(prototypeProps, ['numLegs']);
```

在不使用內置方法 `Object.keys()` 的前提下完成這個挑戰。

```js
assert(!/\Object.keys/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function Dog(name) {
  this.name = name;
}

Dog.prototype.numLegs = 4;

let beagle = new Dog("Snoopy");

let ownProps = [];
let prototypeProps = [];

// Only change code below this line
```

# --solutions--

```js
function Dog(name) {
  this.name = name;
}

Dog.prototype.numLegs = 4;

let beagle = new Dog("Snoopy");

let ownProps = [];
let prototypeProps = [];
for (let prop in beagle) {
  if (beagle.hasOwnProperty(prop)) {
    ownProps.push(prop);
  } else {
    prototypeProps.push(prop);
  }
}
```
