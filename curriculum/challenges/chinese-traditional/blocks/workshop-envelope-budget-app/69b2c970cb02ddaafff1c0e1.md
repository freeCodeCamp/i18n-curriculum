---
id: 69b2c970cb02ddaafff1c0e1
title: 第 4 步
challengeType: 0
dashedName: step-4
---

# --description--

你的應用程式會將支出分類（或稱為「信封」）。先從添加租金信封開始。

在你的 `form` 裡，創建一個 `fieldset` 元素，並將 `id` 設為 `rent`。

在該 `fieldset` 裡：

- 添加一個 `legend` 元素，文字為 `Rent`
- 添加一個 `label`，其 `for` 屬性設為 `rent-amount`，文字為 `Amount`。
- 添加一個 `input` 元素，並設置以下屬性：
  - `type` 設為 `number`
  - `min` 設為 `0`
  - `id` 設為 `rent-amount`
  - `placeholder` 設為 `e.g. 1000`

# --hints--

你應該在你的 `form` 中創建一個 `fieldset` 元素。

```js
assert.exists(document.querySelector('form fieldset'));
```

你的 `fieldset` 元素應該放在你的 `input` 元素之後。

```js
assert.equal(document.querySelector('form fieldset')?.previousElementSibling?.tagName, "INPUT");
```

你的 `fieldset` 元素應該有一個 `id`，設為 `rent`。

```js
assert.equal(document.querySelector('form fieldset')?.id, "rent");
```

你應該在你的 `fieldset` 中創建一個 `legend` 元素。

```js
assert.exists(document.querySelector('form fieldset legend'));
```

你的 `legend` 元素應該有文字 `Rent`。

```js
assert.equal(document.querySelector('form fieldset legend')?.innerText, "Rent");
```

你應該在你的 `fieldset` 裡創建一個 `label` 元素。

```js
assert.exists(document.querySelector('form fieldset label'));
```

你的 `label` 元素應該在你的 `legend` 元素之後。

```js
assert.equal(document.querySelector('form fieldset label')?.previousElementSibling?.tagName, "LEGEND");
```

你的 `label` 元素應該有一個 `for` 屬性，設為 `rent-amount`。

```js
assert.equal(document.querySelector('form fieldset label')?.getAttribute('for'), "rent-amount");
```

你的 `label` 元素應該有文字 `Amount`。

```js
assert.equal(document.querySelector('form fieldset label')?.innerText, "Amount");
```

你應該在你的 `fieldset` 裡創建一個 `input` 元素。

```js
assert.exists(document.querySelector('form fieldset input'));
```

你的 `input` 元素應該放在你的 `label` 元素之後。

```js
assert.equal(document.querySelector('form fieldset input')?.previousElementSibling?.tagName, "LABEL");
```

你的 `input` 元素應該有一個 `type` 屬性設定為 `number`。

```js
assert.equal(document.querySelector('form fieldset input')?.type, 'number');
```

你的 `input` 元素應該有一個設定為 `0` 的 `min` 屬性。

```js
assert.equal(document.querySelector('form fieldset input')?.getAttribute('min'), '0');
```

你的 `input` 元素應該有一個 `id` 屬性，設為 `rent-amount`。

```js
assert.equal(document.querySelector('form fieldset input')?.id, 'rent-amount');
```

你的 `input` 元素應該有一個 `placeholder` 屬性，設為 `e.g. 1000`。

```js
assert.equal(document.querySelector('form fieldset input')?.getAttribute('placeholder'), 'e.g. 1000');
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

--fcc-editable-region--
          
--fcc-editable-region--
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
