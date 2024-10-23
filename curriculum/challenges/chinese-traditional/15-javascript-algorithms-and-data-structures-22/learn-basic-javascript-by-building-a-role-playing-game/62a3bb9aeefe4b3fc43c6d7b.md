---
id: 62a3bb9aeefe4b3fc43c6d7b
title: Step 17
challengeType: 0
dashedName: step-17
---

# --description--

`button1` 是一個不會被重新分配的變量。 如果你不想給一個變量分配一個新的值， 那麼最好是使用 `const` 關鍵字來聲明這個變量，而不是使用 `let` 關鍵字來聲明這個變量。 這會指示 JavaScript 在你意外重新分配它時拋出一個錯誤。

將你的 `button1` 變量更改爲用 `const` 關鍵字聲明。

# --hints--

你的 `button1` 變量應該以 `const` 聲明。

```js
assert.match(code, /const\s+button1/);
```

你的 `button1` 變量仍然應該有你的 `#button1` 元素。

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
