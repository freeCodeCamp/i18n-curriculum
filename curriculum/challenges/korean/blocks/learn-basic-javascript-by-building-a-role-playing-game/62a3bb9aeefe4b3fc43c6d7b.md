---
id: 62a3bb9aeefe4b3fc43c6d7b
title: 17단계
challengeType: 0
dashedName: step-17
---

# --description--

`button1`는 다시 할당하지 않을 변수입니다. 변수에 새 값을 할당하지 않을 경우, `const` 키워드 대신 `let` 키워드를 사용해 선언하는 것이 모범 사례입니다. 이렇게 하면 실수로 다시 할당할 경우 JavaScript가 오류를 발생시킵니다.

`button1` 변수를 `const` 키워드로 선언하도록 변경하세요.

# --hints--

`button1` 변수는 `const`로 선언해야 합니다.

```js
assert.match(code, /const\s+button1/);
```

`button1` 변수는 여전히 `#button1` 요소의 값을 가져야 합니다.

```js
assert.deepEqual(button1, document.querySelector("#button1"));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./styles.css">
    <title>RPG - Dragon Repeller</title>
  </head>
  <body>
    <div id="game">
      <div id="stats">
        <span class="stat">XP: <strong><span id="xpText">0</span></strong></span>
        <span class="stat">Health: <strong><span id="healthText">100</span></strong></span>
        <span class="stat">Gold: <strong><span id="goldText">50</span></strong></span>
      </div>
      <div id="controls">
        <button id="button1">Go to store</button>
        <button id="button2">Go to cave</button>
        <button id="button3">Fight dragon</button>
      </div>
      <div id="monsterStats"></div>
      <div id="text"></div>
    </div>
    <script src="./script.js"></script>
  </body>
</html>
```

```js
let xp = 0;
let health = 100;
let gold = 50;
let currentWeaponIndex = 0;
let fighting;
let monsterHealth;
let inventory = ["stick"];

--fcc-editable-region--
let button1 = document.querySelector("#button1");
--fcc-editable-region--
```
