---
id: 69b2c970cb02ddaafff1c0e7
title: Hatua 10
challengeType: 0
dashedName: step-10
---

# --description--

Menyu yako ya kuchagua inahitaji chaguo kwa kila moja ya vipengele vya `fieldset` vya barua pepe ulivyotengeneza katika hatua zilizopita. Tumia kipengele cha `option` kuunda chaguo jipya kwa kila `fieldset`. Sifa ya `value` ya kila chaguo inapaswa kuwa `id` ya `fieldset`, na maandishi ya kila chaguo yanapaswa kuwa maandishi ya `legend`.

Weka chaguo la `Food` kama chaguo lililochaguliwa (`selected`).

# --hints--

Unapaswa kuunda vipengele vitatu vya `option` ndani ya kipengele chako cha `select`.

```js
assert.equal(document.querySelectorAll('.controls select option')?.length, 3);
```

Chaguo lako la kwanza la `option` linapaswa kuwa na maandishi `Food`.

```js
assert.equal(document.querySelectorAll('.controls select option')?.[0]?.textContent?.trim(), 'Food');
```

Chaguo lako la kwanza la `option` linapaswa kuwa na sifa ya `value` iliyowekwa kuwa `food`.

```js
assert.equal(document.querySelectorAll('.controls select option')?.[0]?.value, 'food');
```

Chaguo lako la pili la `option` linapaswa kuwa na maandishi `Utilities`.

```js
assert.equal(document.querySelectorAll('.controls select option')?.[1]?.textContent?.trim(), 'Utilities');
```

Chaguo lako la pili la `option` linapaswa kuwa na sifa ya `value` iliyowekwa kuwa `utilities`.

```js
assert.equal(document.querySelectorAll('.controls select option')?.[1]?.value, 'utilities');
```

Chaguo lako la tatu la `option` linapaswa kuwa na maandishi `Entertainment`.

```js
assert.equal(document.querySelectorAll('.controls select option')?.[2]?.textContent?.trim(), 'Entertainment');
```

Chaguo lako la tatu la `option` linapaswa kuwa na sifa ya `value` iliyowekwa kuwa `entertainment`.

```js
assert.equal(document.querySelectorAll('.controls select option')?.[2]?.value, 'entertainment');
```

Chaguo lako la kwanza la `option` linapaswa kuwekwa kama chaguo lililochaguliwa.

```js
const isFirstOptionSelected = document.querySelectorAll('.controls select option')?.[0]?.getAttributeNames()?.includes('selected');
const selectedOptions = document.querySelectorAll('.controls select option[selected]');
assert.isTrue(isFirstOptionSelected && selectedOptions.length === 1);
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
--fcc-editable-region--
                
--fcc-editable-region--
              </select>
              <button type="button" id="add-entry">Add Entry</button>
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
