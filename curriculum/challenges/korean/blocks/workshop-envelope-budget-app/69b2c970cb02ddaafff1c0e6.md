---
id: 69b2c970cb02ddaafff1c0e6
title: 9단계
challengeType: 0
dashedName: step-9
---

# --description--

`span` 요소 안에 `for` 속성이 `entry-dropdown`으로 설정된 `label` 요소를 만들고 텍스트로 `Add expense to:`를 넣으세요. 그런 다음 `id`가 `entry-dropdown`이고 `name`이 `options`인 `select` 요소를 만드세요. 그 아래에 `id`가 `add-entry`이고 텍스트가 `Add Entry`인 `button` 요소를 추가하세요.

자동 폼 제출을 막기 위해 `button` 요소에 `type` 속성을 `button`로 설정하세요.

# --hints--

`label` 요소에 `span` 요소를 추가해야 합니다.

```js
assert.exists(document.querySelector('.controls > span > label'));
```

새로운 `label` 요소에 `for` 속성을 `entry-dropdown`로 설정해야 합니다.

```js
assert.equal(document.querySelector('.controls > span > label')?.getAttribute('for'), 'entry-dropdown');
```

새로운 `label` 요소에는 텍스트 `Add expense to:`가 있어야 합니다.

```js
assert.equal(document.querySelector('.controls > span > label')?.innerText, 'Add expense to:');
```

`select` 요소에 `span` 요소를 추가해야 합니다.

```js
assert.exists(document.querySelector('.controls > span > select'));
```

`select` 요소는 `label` 요소 다음에 와야 합니다.

```js
assert(document.querySelector('.controls > span > select')?.previousElementSibling?.tagName === 'LABEL');
```

새로운 `select` 요소에 `id` 속성을 `entry-dropdown`로 설정해야 합니다.

```js
assert.equal(document.querySelector('.controls > span > select')?.getAttribute('id'), 'entry-dropdown');
```

새로운 `select` 요소에 `name` 속성을 `options`로 설정해야 합니다.

```js
assert.equal(document.querySelector('.controls > span > select')?.getAttribute('name'), 'options');
```

`select` 요소는 비어 있어야 하며 닫는 `</select>` 태그가 있어야 합니다.

```js
assert.equal(document.querySelector('.controls > span > select')?.innerHTML?.trim(), '');
```

`button` 요소에 `span` 요소를 추가해야 합니다.

```js
assert.exists(document.querySelector('.controls > span > button'));
```

`button` 요소는 `select` 요소 다음에 와야 합니다.

```js
assert(document.querySelector('.controls > span > button')?.previousElementSibling?.tagName === 'SELECT');
```

새로운 `button` 요소에 `id` 속성을 `add-entry`로 설정해야 합니다.

```js
assert.equal(document.querySelector('.controls > span > button')?.getAttribute('id'), 'add-entry');
```

새로운 `button` 요소에는 `type` 속성이 `button`으로 설정되어 있어야 합니다.

```js
assert.equal(document.querySelector('.controls > span > button')?.getAttribute('type'), 'button');
```

새로운 `button` 요소에 텍스트 `Add Entry`를 넣어야 합니다.

```js
assert.equal(document.querySelector('.controls > span > button')?.innerText, 'Add Entry');
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
--fcc-editable-region--
              
--fcc-editable-region--
            </span>
          </div>
        </form>
      </div>
    </main>
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

```
