---
id: 69b2c970cb02ddaafff1c0ee
title: 第 17 步
challengeType: 0
dashedName: step-17
---

# --description--

在程式設計中，為變數加上 `is` 或 `has` 的前置式是一種常見做法，用以表述該變數為布林值。

以下是幾個範例：

```js
let isRunning = true;
let hasCompleted = false;
```

使用 `let` 宣告一個名為 `isError` 的變數並以 `false` 初始化，允許之後重新指定。

在專案後期，如果使用者提供無效輸入，你將更新 `isError` 的值。

# --hints--

你應該宣告一個 `isError` 變數。

```js
assert.isDefined(isError);
```

你的 `isError` 變數應該設為 `false`。

```js
assert.isFalse(isError);
```

你應該使用 `let` 來宣告你的 `isError` 變數。

```js
const explorer = await __helpers.Explorer(code);
assert.isTrue(explorer.variables.isError?.matches('let isError = false'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" />
    <title>Envelope Budgeter</title>
  </head>

  <body>
    <main>
      <h1>Envelope Budgeter</h1>
      <div class="container">
        <form id="budget-form">
          <label for="income">Total Monthly Income</label>
          <input 
            type="number" 
            min="0" 
            id="income" 
            placeholder="e.g. 2000" 
            required 
          />

          <fieldset id="rent">
            <legend>Rent</legend>
            <label for="rent-amount">Amount</label>
            <input type="number" min="0" id="rent-amount" placeholder="e.g. 1000" />
          </fieldset>

          <fieldset id="food">
            <legend>Food</legend>
            <div class="input-container"></div>
          </fieldset>

          <fieldset id="utilities">
            <legend>Utilities</legend>
            <div class="input-container"></div>
          </fieldset>

          <fieldset id="entertainment">
            <legend>Entertainment</legend>
            <div class="input-container"></div>
          </fieldset>

          <div class="controls">
            <span>
              <label for="entry-dropdown">Add expense to:</label>
              <select id="entry-dropdown" name="options">
                <option value="food" selected>Food</option>
                <option value="utilities">Utilities</option>
                <option value="entertainment">Entertainment</option>
              </select>
              <button type="button" id="add-entry">Add Entry</button>
            </span>
          </div>

          <div>
            <button type="submit">
              Calculate Remaining Budget
            </button>
            <button type="button" id="clear">Clear</button>
          </div>
        </form>

        <div id="output" class="output hide"></div>
      </div>
    </main>
    <script src="./script.js"></script>
  </body>
</html>
```

```css
:root {
  --light-grey: #f5f6f7;
  --dark-blue: #0a0a23;
  --fcc-blue: #1b1b32;
  --light-yellow: #fecc4c;
  --dark-yellow: #feac32;
  --light-pink: #ffadad;
  --dark-red: #850000;
  --light-green: #acd157;
}

body {
  font-family: "Lato", Helvetica, Arial, sans-serif;
  font-size: 18px;
  background-color: var(--fcc-blue);
  color: var(--light-grey);
  margin: 0;
  padding: 0;
  line-height: 1.5;
}

h1 {
  text-align: center;
  margin-top: 30px;
  font-size: 2em;
}

.container {
  width: 90%;
  max-width: 680px;
  margin: 20px auto;
  padding: 20px;
  background-color: var(--dark-blue);
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

label,
legend {
  font-weight: bold;
  margin-bottom: 5px;
}

fieldset {
  border: 1px solid var(--light-grey);
  border-radius: 4px;
  padding: 10px 15px;
  margin-bottom: 20px;
}

legend {
  padding: 0 8px;
}

.input-container {
  display: flex;
  flex-direction: column;
  gap: 8px;
  margin-top: 10px;
}

input,
select,
button {
  font-size: 16px;
  padding: 6px 10px;
  border-radius: 4px;
  border: 1px solid #ccc;
  min-height: 32px;
  box-sizing: border-box;
}

input:focus,
select:focus,
button:focus {
  outline: 2px solid var(--light-yellow);
  border-color: var(--dark-yellow);
}

button {
  cursor: pointer;
  text-decoration: none;
  background-color: var(--light-yellow);
  border: 2px solid var(--dark-yellow);
  transition: background-color 0.2s ease, border 0.2s ease;
}

button:hover {
  background-color: var(--dark-yellow);
  color: white;
}

.controls {
  margin-bottom: 20px;
}

.controls span {
  display: flex;
  align-items: center;
  gap: 10px;
  flex-wrap: wrap;
}

.output {
  border: 2px solid var(--light-grey);
  padding: 15px;
  text-align: center;
  background-color: var(--dark-blue);
  border-radius: 6px;
  margin-top: 20px;
}

.output span {
  font-weight: bold;
  font-size: 1.4em;
}

.surplus {
  color: var(--light-green);
}

.deficit {
  color: var(--light-pink);
}

.hide {
  display: none;
}

@media (max-width: 600px) {
  body {
    font-size: 16px;
  }

  .controls span {
    flex-direction: column;
    align-items: stretch;
  }

  button,
  input,
  select {
    width: 100%;
  }
}
```

```js
const budgetForm = document.getElementById("budget-form");
const incomeInput = document.getElementById("income");
const rentInput = document.getElementById("rent-amount");
const entryDropdown = document.getElementById("entry-dropdown");
const addEntryButton = document.getElementById("add-entry");
const clearButton = document.getElementById("clear");
const output = document.getElementById("output");
--fcc-editable-region--

--fcc-editable-region--
```
