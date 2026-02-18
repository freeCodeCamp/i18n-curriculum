---
id: 62a3bb9aeefe4b3fc43c6d7b
title: 第 17 步
challengeType: 0
dashedName: step-17
---

# --description--

`button1` 是一個不會被重新指定的變數。如果你不打算為變數指定新值，最佳做法是使用 `const` 關鍵字來宣告它，而不是使用 `let` 關鍵字。這會告訴 JavaScript 如果你不小心重新指定它，就丟出錯誤。

將你的 `button1` 變數改為使用 `const` 關鍵字宣告。

# --hints--

你的 `button1` 變數應該使用 `const` 宣告。

```js
assert.match(code, /const\s+button1/);
```

你的 `button1` 變數應該仍然具有你的 `#button1` 元素的值。

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
