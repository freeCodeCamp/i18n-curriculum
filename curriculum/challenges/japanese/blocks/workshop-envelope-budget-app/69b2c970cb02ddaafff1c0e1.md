---
id: 69b2c970cb02ddaafff1c0e1
title: ステップ 4
challengeType: 0
dashedName: step-4
---

# --description--

アプリは支出をカテゴリ（または「封筒」）に整理します。まずは家賃の封筒を追加してください。

`form` の中に、`id` が `rent` に設定された `fieldset` 要素を作成してください。

その `fieldset` の中に：

- テキストが `Rent` の `legend` 要素を追加してください。
- `for` 属性が `rent-amount` に設定され、テキストが `Amount` の `label` を追加してください。
- 次の属性を持つ `input` 要素を追加してください：
  - `type` が `number`
  - `min` が `0`
  - `id` が `rent-amount`
  - `placeholder` が `e.g. 1000`

# --hints--

`fieldset` の中に `form` 要素を作成してください。

```js
assert.exists(document.querySelector('form fieldset'));
```

`fieldset` 要素の後に `input` 要素が来るようにしてください。

```js
assert.equal(document.querySelector('form fieldset')?.previousElementSibling?.tagName, "INPUT");
```

`fieldset` 要素には `id` が `rent` に設定されている必要があります。

```js
assert.equal(document.querySelector('form fieldset')?.id, "rent");
```

`legend` の中に `fieldset` 要素を作成してください。

```js
assert.exists(document.querySelector('form fieldset legend'));
```

`legend` 要素にはテキスト `Rent` が含まれている必要があります。

```js
assert.equal(document.querySelector('form fieldset legend')?.innerText, "Rent");
```

`fieldset` の中に `label` 要素を作成してください。

```js
assert.exists(document.querySelector('form fieldset label'));
```

`label` 要素は `legend` 要素の後に配置してください。

```js
assert.equal(document.querySelector('form fieldset label')?.previousElementSibling?.tagName, "LEGEND");
```

`label` 要素には `for` 属性が `rent-amount` に設定されている必要があります。

```js
assert.equal(document.querySelector('form fieldset label')?.getAttribute('for'), "rent-amount");
```

`label` 要素にはテキスト `Amount` が含まれている必要があります。

```js
assert.equal(document.querySelector('form fieldset label')?.innerText, "Amount");
```

`fieldset` の中に `input` 要素を作成してください。

```js
assert.exists(document.querySelector('form fieldset input'));
```

`input` 要素は `label` 要素の後に配置してください。

```js
assert.equal(document.querySelector('form fieldset input')?.previousElementSibling?.tagName, "LABEL");
```

あなたの `input` 要素には `type` 属性を `number` に設定してください。

```js
assert.equal(document.querySelector('form fieldset input')?.type, 'number');
```

`input`要素には`min`属性を`0`に設定してください。

```js
assert.equal(document.querySelector('form fieldset input')?.getAttribute('min'), '0');
```

`input` 要素には `id` 属性が `rent-amount` に設定されている必要があります。

```js
assert.equal(document.querySelector('form fieldset input')?.id, 'rent-amount');
```

`input` 要素には `placeholder` 属性が `e.g. 1000` に設定されている必要があります。

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
