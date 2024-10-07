---
id: 5cdafbc32913098997531680
title: Виконання промісу за допомогою resolve та reject
challengeType: 1
forumTopicId: 301196
dashedName: complete-a-promise-with-resolve-and-reject
---

# --description--

A promise has three states: `pending`, `fulfilled`, and `rejected`. The promise you created in the last challenge is forever stuck in the `pending` state because you did not add a way to complete the promise. The `resolve` and `reject` parameters given to the promise argument are used to do this. `resolve` is used when you want your promise to succeed, and `reject` is used when you want it to fail. These are methods that take an argument, as seen below.

```js
const myPromise = new Promise((resolve, reject) => {
  if(condition here) {
    resolve("Promise was fulfilled");
  } else {
    reject("Promise was rejected");
  }
});
```

Вищеподаний приклад використовує рядки для аргументу цих функцій, але це може бути чим завгодно. Часто це може бути об’єкт, дані якого ви використаєте для розміщення на своєму сайті чи в іншому місці.

# --instructions--

Запрограмуйте проміс так, щоб він міг обробити успіх та поразку. Якщо `responseFromServer` виявиться `true`, викличте метод `resolve`, щоб успішно виконати проміс. Додайте до `resolve` рядок зі значенням `We got the data`. Якщо `responseFromServer` виявиться `false`, використайте метод `reject` та передайте йому рядок `Data not received`.

# --hints--

`resolve` має викликатися за допомогою очікуваного рядка, коли умовою `if` є `true`.

```js
assert(
  __helpers.removeJSComments(code).match(/if\s*\(\s*responseFromServer\s*\)\s*{\s*resolve\s*\(\s*('|"|`)We got the data\1\s*\)(\s*|\s*;\s*)}/g)
);
```

`reject` має викликатися за допомогою очікуваного рядка, коли умовою `if` є `false`.

```js
assert(
  __helpers.removeJSComments(code).match(/}\s*else\s*{\s*reject\s*\(\s*('|"|`)Data not received\1\s*\)(\s*|\s*;\s*)}/g)
);
```

# --seed--

## --seed-contents--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;

  if(responseFromServer) {
    // Change this line
  } else {  
    // Change this line
  }
});
```

# --solutions--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;

  if(responseFromServer) {
    resolve("We got the data");
  } else {  
    reject("Data not received");
  }
});
```
