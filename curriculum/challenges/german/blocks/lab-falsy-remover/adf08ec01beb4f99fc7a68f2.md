---
id: adf08ec01beb4f99fc7a68f2
title: Falsy-Entferner implementieren
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

In diesem Labor erstellen Sie eine Funktion, die alle falsy-Werte aus einem Array entfernt.

Falsy-Werte in JavaScript sind `false`, `null`, `0`, `""`, `undefined` und `NaN`.

**Ziel**: Erfüllen Sie die untenstehenden User Stories und bringen Sie alle Tests zum Bestehen, um das Labor abzuschließen.

**User Stories:**

1. Sie sollten eine `bouncer`-Funktion haben, die ein Array als Argument entgegennimmt.
1. Die `bouncer`-Funktion sollte ein neues Array zurückgeben, das dieselben Elemente wie das übergebene Array enthält, jedoch ohne die falsy-Elemente.
1. Die `bouncer`-Funktion sollte das als Argument übergebene Array nicht verändern.

Hinweis: Versuchen Sie, jeden Wert in einen Boolean umzuwandeln.

# --hints--

Sie sollten eine `bouncer`-Funktion haben.

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` sollte `[7, "ate", 9]` zurückgeben.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` sollte `["a", "b", "c"]` zurückgeben.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` sollte `[]` zurückgeben.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` sollte `[1, 2]` zurückgeben.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

Die `bouncer`-Funktion sollte das als Argument übergebene Array nicht verändern.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` sollte `[]` zurückgeben.  

```js  
assert.deepEqual(bouncer([]), []);  
```  

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}
```
