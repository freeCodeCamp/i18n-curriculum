---
id: 587d7dae367417b2b2512b7a
title: 使用 instanceof 驗證對象的構造函數
challengeType: 1
forumTopicId: 301337
dashedName: verify-an-objects-constructor-with-instanceof
---

# --description--

Anytime a constructor function creates a new object, that object is said to be an <dfn>instance</dfn> of its constructor. JavaScript gives a convenient way to verify this with the `instanceof` operator. `instanceof` allows you to compare an object to a constructor, returning `true` or `false` based on whether or not that object was created with the constructor. 如下所示：

```js
let Bird = function(name, color) {
  this.name = name;
  this.color = color;
  this.numLegs = 2;
}

let crow = new Bird("Alexis", "black");

crow instanceof Bird;
```

`instanceof` 方法會返回 `true`。

如果一個對象不是使用構造函數創建的，那麼 `instanceof` 將會驗證這個對象不是構造函數的實例：

```js
let canary = {
  name: "Mildred",
  color: "Yellow",
  numLegs: 2
};

canary instanceof Bird;
```

`instanceof` 方法會返回 `false`。

# --instructions--

給 `House` 構造函數創建一個新實例，取名爲 `myHouse`，並且傳遞一個數字給 bedrooms 參數。 然後使用 `instanceof` 操作符驗證這個對象是否爲 `House` 的實例。

# --hints--

`myHouse` 應該有一個 `numBedrooms` 屬性值被賦爲一個數字。

```js
assert(typeof myHouse.numBedrooms === 'number');
```

應該使用 `instanceof` 操作符驗證 `myHouse` 這個對象是 `House` 構造函數的一個實例。

```js
assert(/myHouse\s*instanceof\s*House/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function House(numBedrooms) {
  this.numBedrooms = numBedrooms;
}

// Only change code below this line
```

# --solutions--

```js
function House(numBedrooms) {
  this.numBedrooms = numBedrooms;
}
const myHouse = new House(4);
console.log(myHouse instanceof House);
```
