---
id: 62a3bb9aeefe4b3fc43c6d7b
title: ステップ 17
challengeType: 0
dashedName: step-17
---

# --description--

`button1` は再代入されない変数です。変数に新しい値を代入しない場合は、`const` キーワードの代わりに `let` キーワードを使って宣言することがベストプラクティスです。こうすることで、誤って再代入した場合に JavaScript がエラーをスローします。

`button1` 変数を `const` キーワードで宣言するように変更してください。

# --hints--

`button1` 変数は `const` で宣言する必要があります。

```js
assert.match(code, /const\s+button1/);
```

`button1` 変数は `#button1` 要素の値のままである必要があります。

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
