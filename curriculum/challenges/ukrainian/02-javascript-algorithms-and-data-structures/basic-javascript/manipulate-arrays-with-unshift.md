---
id: 56bbb991ad1ed5201cd392ce
title: Маніпулювання масивами за допомогою методу unshift
challengeType: 1
videoUrl: 'https://scrimba.com/c/ckNDESv'
forumTopicId: 18239
dashedName: manipulate-arrays-with-unshift
---

# --description--

Not only can you `shift` elements off of the beginning of an array, you can also `unshift` elements to the beginning of an array i.e. add elements in front of the array.

`.unshift()` працює в точності як `.push()`, але замість додавання елемента в кінець масиву, `unshift()` додає елемент на початку масиву.

Наприклад:

```js
const ourArray = ["Stimpson", "J", "cat"];
ourArray.shift();
ourArray.unshift("Happy");
```

Після `shift`, `ourArray` матиме значення `["J", "cat"]`. Після `unshift`, `ourArray` матиме значення `["Happy", "J", "cat"]`.

# --instructions--

Додайте `["Paul", 35]` на початок змінної `myArray`, використовуючи `unshift()`.

# --hints--

Тепер `myArray` має дорівнювати `[["Paul", 35], ["dog", 3]]`.

```js
assert(
  (function (d) {
    if (
      typeof d[0] === 'object' &&
      d[0][0] == 'Paul' &&
      d[0][1] === 35 &&
      d[1][0] != undefined &&
      d[1][0] == 'dog' &&
      d[1][1] != undefined &&
      d[1][1] == 3
    ) {
      return true;
    } else {
      return false;
    }
  })(myArray)
);
```

# --seed--

## --after-user-code--

```js
(function(y, z){return 'myArray = ' + JSON.stringify(y);})(myArray);
```

## --seed-contents--

```js
// Setup
const myArray = [["John", 23], ["dog", 3]];
myArray.shift();

// Only change code below this line

```

# --solutions--

```js
const myArray = [["John", 23], ["dog", 3]];
myArray.shift();
myArray.unshift(["Paul", 35]);
```
