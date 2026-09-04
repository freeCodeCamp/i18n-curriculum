---
id: 69b2c970cb02ddaafff1c0e6
title: ステップ 9
challengeType: 0
dashedName: step-9
---

# --description--

`span`要素の中に、`for`属性が`entry-dropdown`に設定された`label`要素を作成し、テキストに`Add expense to:`を設定してください。次に、`id`が`entry-dropdown`、`name`が`options`に設定された`select`要素を作成します。その下に、`id`が`add-entry`でテキストが`Add Entry`の`button`要素を追加してください。

自動フォーム送信を防ぐために、`button`要素に`type`属性を`button`に設定してください。

# --hints--

`label`要素に`span`要素を追加してください。

```js
assert.exists(document.querySelector('.controls > span > label'));
```

新しい`label`要素には、`for`属性を`entry-dropdown`に設定してください。

```js
assert.equal(document.querySelector('.controls > span > label')?.getAttribute('for'), 'entry-dropdown');
```

新しい`label`要素にはテキスト`Add expense to:`を設定してください。

```js
assert.equal(document.querySelector('.controls > span > label')?.innerText, 'Add expense to:');
```

`select`要素に`span`要素を追加してください。

```js
assert.exists(document.querySelector('.controls > span > select'));
```

`select`要素は`label`要素の後に配置してください。

```js
assert(document.querySelector('.controls > span > select')?.previousElementSibling?.tagName === 'LABEL');
```

新しい`select`要素には、`id`属性を`entry-dropdown`に設定してください。

```js
assert.equal(document.querySelector('.controls > span > select')?.getAttribute('id'), 'entry-dropdown');
```

新しい`select`要素には、`name`属性を`options`に設定してください。

```js
assert.equal(document.querySelector('.controls > span > select')?.getAttribute('name'), 'options');
```

`select`要素は空で、閉じる`</select>`タグを持つ必要があります。

```js
assert.equal(document.querySelector('.controls > span > select')?.innerHTML?.trim(), '');
```

`button`要素に`span`要素を追加してください。

```js
assert.exists(document.querySelector('.controls > span > button'));
```

`button`要素は`select`要素の後に配置してください。

```js
assert(document.querySelector('.controls > span > button')?.previousElementSibling?.tagName === 'SELECT');
```

新しい`button`要素には、`id`属性を`add-entry`に設定してください。

```js
assert.equal(document.querySelector('.controls > span > button')?.getAttribute('id'), 'add-entry');
```

新しい`button`要素には`type`属性を`button`に設定してください。

```js
assert.equal(document.querySelector('.controls > span > button')?.getAttribute('type'), 'button');
```

新しい`button`要素には、テキスト`Add Entry`を設定してください。

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
