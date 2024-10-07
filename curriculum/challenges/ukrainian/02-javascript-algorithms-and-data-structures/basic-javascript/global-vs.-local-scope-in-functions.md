---
id: 56533eb9ac21ba0edf2244c0
title: Глобальна та локальна області видимості у функціях
challengeType: 1
videoUrl: 'https://scrimba.com/c/c2QwKH2'
forumTopicId: 18194
dashedName: global-vs--local-scope-in-functions
---

# --description--

It is possible to have both <dfn>local</dfn> and <dfn>global</dfn> variables with the same name. When you do this, the local variable takes precedence over the global variable.

У цьому прикладі:

```js
const someVar = "Hat";

function myFun() {
  const someVar = "Head";
  return someVar;
}
```

Функція `myFun` поверне рядок `Head`, оскільки присутній локальний варіант змінної.

# --instructions--

Додайте локальну змінну до функції `myOutfit`, щоб змінити значення `outerWear` на рядок `sweater`.

# --hints--

Ви не повинні змінювати значення глобальної `outerWear`.

```js
assert(outerWear === 'T-Shirt');
```

`myOutfit` повинна повертати рядок `sweater`.

```js
assert(myOutfit() === 'sweater');
```

Ви не повинні змінювати інструкцію повернення.

```js
assert(/return outerWear/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
// Setup
const outerWear = "T-Shirt";

function myOutfit() {
  // Only change code below this line

  // Only change code above this line
  return outerWear;
}

myOutfit();
```

# --solutions--

```js
const outerWear = "T-Shirt";
function myOutfit() {
  const outerWear = "sweater";
  return outerWear;
}
```
