---
id: 69b2c970cb02ddaafff1c11e
title: 65단계
challengeType: 0
dashedName: step-65
---

# --description--

`return`이 함수 실행을 종료한다는 것을 기억하세요. `if` 블록 뒤에는 입력이 유효할 때의 로직을 처리해야 합니다. if 문이 값을 반환하므로 `else` 문은 필요하지 않습니다.

덧셈 대입 연산자를 사용해 `currVal`을 `total`에 더하세요. `currVal`을 숫자로 변환하려면 `Number` 생성자를 사용해야 합니다.

`Number` 생성자는 값을 숫자로 변환하는 함수입니다. 변환할 수 없으면 "숫자가 아님"을 뜻하는 `NaN`를 반환합니다.

예시는 다음과 같습니다:

```js
Number('10'); // returns the number 10
Number('abc'); // returns NaN
```

# --hints--

`else` 문을 추가하지 마세요.

```js
assert.notMatch(getTotalFromInputs.toString(), /else/);
```

`if` 문 뒤에 `total`에 덧셈 대입 연산자를 사용하세요.

```js
assert.match(getTotalFromInputs.toString(), /if.*}\s*total\s*\+=/s);
```

`currVal`을 `Number()` 생성자에 전달해야 합니다.

```js
assert.match(getTotalFromInputs.toString(), /Number\(\s*currVal\s*\)/);
```

`Number(currVal)`의 값을 `total`에 더해야 합니다.

```js
assert.match(getTotalFromInputs.toString(), /total\s*\+=\s*Number\(\s*currVal\s*\)/);
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
let isError = false;

function cleanInputString(str) {
  const regex = /[+-\s]/g;
  return str.replace(regex, "");
}

function isInvalidInput(str) {
  const regex = /\d+e\d+/i;
  return str.match(regex);
}

function addEntry() {
  const category = entryDropdown.value;
  const targetInputContainer = document.querySelector(`#${category} .input-container`);
  const entryNumber = targetInputContainer.querySelectorAll('input[type="text"]').length + 1;

  const HTMLString = `
  <label for="${category}-${entryNumber}-name">Expense ${entryNumber} Name</label>
  <input type="text" id="${category}-${entryNumber}-name" placeholder="Name" />
  <label for="${category}-${entryNumber}-amount">Expense ${entryNumber} Amount</label>
  <input 
    type="number" 
    min="0" 
    id="${category}-${entryNumber}-amount" placeholder="Amount" 
    />`;
  targetInputContainer.insertAdjacentHTML("beforeend", HTMLString);
}

function getTotalFromInputs(list) {
  let total = 0;

  for (const item of list) {
    const currVal = cleanInputString(item.value);
    const invalidInputMatch = isInvalidInput(currVal);

    if (invalidInputMatch) {
      alert(`Invalid Input: ${invalidInputMatch[0]}`);
      isError = true;
      return null;
    }
    --fcc-editable-region--
    
    --fcc-editable-region--
  }
}

addEntryButton.addEventListener("click", addEntry);
```
