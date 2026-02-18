---
id: 62a8ae85fcaedc0fddc7ca4f
title: 步骤 59
challengeType: 0
dashedName: step-59
---

# --description--

将第二个对象添加到你的 `locations` 数组（记得用逗号分隔它们）。 按照你在第一个对象中使用的模式，创建相同的属性，但使用 `goStore` 函数中的值。 将 `name` 属性设置为 `store`。

# --hints--

你的 `locations` 数组应该有两个值。

```js
assert.lengthOf(locations, 2);
```

两个 `locations` 值都应该是对象。


```js
assert.isObject(locations[0]);
assert.isObject(locations[1]);
```

你的第二个 `locations` 对象应该具有一个 `name` 属性，其值为 `store`。

```js
assert.equal(locations[1].name, "store");
```

你的第二个 `locations` 对象应该有一个 `button text` 属性，它是一个数组。

```js
assert.isArray(locations[1]["button text"]);
```

你的 `button text` 属性应具有字符串值 `"Buy 10 health (10 gold)"`、`"Buy weapon (30 gold)"` 和 `"Go to town square"`。

```js
assert.equal(locations[1]["button text"][0], "Buy 10 health (10 gold)");
assert.equal(locations[1]["button text"][1], "Buy weapon (30 gold)");
assert.equal(locations[1]["button text"][2], "Go to town square");
```

你的第二个 `locations` 对象应该有一个 `button functions` 属性，它是一个数组。

```js
assert.isArray(locations[1]["button functions"]);
```

你的 `button functions` 属性应具有函数值 `buyHealth`、`buyWeapon` 和 `goTown`。

```js
assert.equal(locations[1]["button functions"][0], buyHealth);
assert.equal(locations[1]["button functions"][1], buyWeapon);
assert.equal(locations[1]["button functions"][2], goTown);
```

你的第二个 `locations` 对象应该有一个 `text` 属性，它是一个字符串。

```js
assert.isString(locations[1].text);
```

你的第二个 `locations` 对象应该具有一个 `text` 属性，其值为 `"You enter the store."`。

```js
assert.equal(locations[1].text, "You enter the store.");
```

你不应修改第一个 `locations` 对象。

```js
assert.deepEqual(locations[0], {
  name: "town square",
  "button text": ["Go to store", "Go to cave", "Fight dragon"],
  "button functions": [goStore, goCave, fightDragon],
  text: "You are in the town square. You see a sign that says \"Store\"."
});
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
      <div id="monsterStats">
        <span class="stat">Monster Name: <strong><span id="monsterName"></span></strong></span>
        <span class="stat">Health: <strong><span id="monsterHealth"></span></strong></span>
      </div>
      <div id="text">
        Welcome to Dragon Repeller. You must defeat the dragon that is preventing people from leaving the town. You are in the town square. Where do you want to go? Use the buttons above.
      </div>
    </div>
    <script src="./script.js"></script>
  </body>
</html>
```

```css
body {
  background-color: #0a0a23;
}

#text {
  background-color: #0a0a23;
  color: #ffffff;
  padding: 10px;
}

#game {
  max-width: 500px;
  max-height: 400px;
  background-color: #ffffff;
  color: #ffffff;
  margin: 30px auto 0px;
  padding: 10px;
}

#controls,
#stats {
  border: 1px solid #0a0a23;
  padding: 5px;
  color: #0a0a23;
}

#monsterStats {
  display: none;
  border: 1px solid #0a0a23;
  padding: 5px;
  color: #ffffff;
  background-color: #c70d0d;
}

.stat {
  padding-right: 10px;
}

button {
  cursor: pointer;
  color: #0a0a23;
  background-color: #feac32;
  background-image: linear-gradient(#fecc4c, #ffac33);
  border: 3px solid #feac32;
}
```

```js
let xp = 0;
let health = 100;
let gold = 50;
let currentWeaponIndex = 0;
let fighting;
let monsterHealth;
let inventory = ["stick"];

const button1 = document.querySelector('#button1');
const button2 = document.querySelector("#button2");
const button3 = document.querySelector("#button3");
const text = document.querySelector("#text");
const xpText = document.querySelector("#xpText");
const healthText = document.querySelector("#healthText");
const goldText = document.querySelector("#goldText");
const monsterStats = document.querySelector("#monsterStats");
const monsterName = document.querySelector("#monsterName");
const monsterHealthText = document.querySelector("#monsterHealth");
--fcc-editable-region--
const locations = [
  {
    name: "town square",
    "button text": ["Go to store", "Go to cave", "Fight dragon"],
    "button functions": [goStore, goCave, fightDragon],
    text: "You are in the town square. You see a sign that says \"Store\"."
  }
];
--fcc-editable-region--

// initialize buttons
button1.onclick = goStore;
button2.onclick = goCave;
button3.onclick = fightDragon;

function update(location) {

}

function goTown() {
  button1.innerText = "Go to store";
  button2.innerText = "Go to cave";
  button3.innerText = "Fight dragon";
  button1.onclick = goStore;
  button2.onclick = goCave;
  button3.onclick = fightDragon;
  text.innerText = "You are in the town square. You see a sign that says \"Store\".";
}

function goStore() {
  button1.innerText = "Buy 10 health (10 gold)";
  button2.innerText = "Buy weapon (30 gold)";
  button3.innerText = "Go to town square";
  button1.onclick = buyHealth;
  button2.onclick = buyWeapon;
  button3.onclick = goTown;
  text.innerText = "You enter the store.";
}

function goCave() {
  console.log("Going to cave.");
}

function fightDragon() {
  console.log("Fighting dragon.");
}

function buyHealth() {

}

function buyWeapon() {

}
```
