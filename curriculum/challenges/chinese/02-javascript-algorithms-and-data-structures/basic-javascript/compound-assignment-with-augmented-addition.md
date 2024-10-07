---
id: 56533eb9ac21ba0edf2244af
title: 复合赋值之 +=
challengeType: 1
videoUrl: 'https://scrimba.com/c/cDR6LCb'
forumTopicId: 16661
dashedName: compound-assignment-with-augmented-addition
---

# --description--

In programming, it is common to use assignments to modify the contents of a variable. Remember that everything to the right of the equals sign is evaluated first, so we can say:

```js
myVar = myVar + 5;
```

给 `myVar` 加上 `5`。 这是最常见的运算赋值语句，即先运算、再赋值。还有一类操作符是一步到位，既做运算也赋值的。

其中一种就是 `+=` 运算符。

```js
let myVar = 1;
myVar += 5;
console.log(myVar);
```

控制台将会显示 `6`。

# --instructions--

使用 `+=` 操作符对 `a`、`b` 和 `c` 赋值。

# --hints--

`a` 应该等于 `15`。

```js
assert(a === 15);
```

`b` 应该等于 `26`。

```js
assert(b === 26);
```

`c` 应该等于 `19`。

```js
assert(c === 19);
```

应该对每个变量使用 `+=` 操作符。

```js
assert(__helpers.removeJSComments(code).match(/\+=/g).length === 3);
```

不要修改注释上面的代码。

```js
assert(
  /let a = 3;/.test(__helpers.removeJSComments(code)) &&
    /let b = 17;/.test(__helpers.removeJSComments(code)) &&
    /let c = 12;/.test(__helpers.removeJSComments(code))
);
```

# --seed--

## --after-user-code--

```js
(function(a,b,c){ return "a = " + a + ", b = " + b + ", c = " + c; })(a,b,c);
```

## --seed-contents--

```js
let a = 3;
let b = 17;
let c = 12;

// Only change code below this line
a = a + 12;
b = 9 + b;
c = c + 7;
```

# --solutions--

```js
let a = 3;
let b = 17;
let c = 12;

a += 12;
b += 9;
c += 7;
```
