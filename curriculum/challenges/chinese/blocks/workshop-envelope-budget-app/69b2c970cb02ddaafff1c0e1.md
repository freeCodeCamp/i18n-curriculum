---
id: 69b2c970cb02ddaafff1c0e1
title: 第 4 步
challengeType: 0
dashedName: step-4
---

# --description--

你的应用将把开销组织到不同的类别（或“信封”）中。先添加租金信封。

在你的 `form` 中，创建一个 `fieldset` 元素，并将其 `id` 设置为 `rent`。

在该 `fieldset` 中：

- 添加一个文本为 `Rent` 的 `legend` 元素
- 添加一个 `label`，其 `for` 属性设置为 `rent-amount`，文本为 `Amount`。
- 添加一个具有以下属性的 `input` 元素：
  - `type` 设置为 `number`
  - `min` 设置为 `0`
  - `id` 设置为 `rent-amount`
  - `placeholder` 设置为 `e.g. 1000`

# --hints--

你应该在 `form` 中创建一个 `fieldset` 元素。

```js
assert.exists(document.querySelector('form fieldset'));
```

你的 `fieldset` 元素应位于 `input` 元素之后。

```js
assert.equal(document.querySelector('form fieldset')?.previousElementSibling?.tagName, "INPUT");
```

你的 `fieldset` 元素应有一个 `id`，设置为 `rent`。

```js
assert.equal(document.querySelector('form fieldset')?.id, "rent");
```

你应该在 `fieldset` 内创建一个 `legend` 元素。

```js
assert.exists(document.querySelector('form fieldset legend'));
```

你的 `legend` 元素应包含文本 `Rent`。

```js
assert.equal(document.querySelector('form fieldset legend')?.innerText, "Rent");
```

你应该在你的 `fieldset` 中创建一个 `label` 元素。

```js
assert.exists(document.querySelector('form fieldset label'));
```

你的 `label` 元素应位于你的 `legend` 元素之后。

```js
assert.equal(document.querySelector('form fieldset label')?.previousElementSibling?.tagName, "LEGEND");
```

你的 `label` 元素应有一个 `for` 属性，设置为 `rent-amount`。

```js
assert.equal(document.querySelector('form fieldset label')?.getAttribute('for'), "rent-amount");
```

你的 `label` 元素应包含文本 `Amount`。

```js
assert.equal(document.querySelector('form fieldset label')?.innerText, "Amount");
```

你应该在你的 `fieldset` 中创建一个 `input` 元素。

```js
assert.exists(document.querySelector('form fieldset input'));
```

你的 `input` 元素应位于 `label` 元素之后。

```js
assert.equal(document.querySelector('form fieldset input')?.previousElementSibling?.tagName, "LABEL");
```

你的 `input` 元素应将 `type` 属性设置为 `number`。

```js
assert.equal(document.querySelector('form fieldset input')?.type, 'number');
```

你的 `input` 元素应将 `min` 属性设置为 `0`。

```js
assert.equal(document.querySelector('form fieldset input')?.getAttribute('min'), '0');
```

你的 `input` 元素应有一个 `id` 属性，设置为 `rent-amount`。

```js
assert.equal(document.querySelector('form fieldset input')?.id, 'rent-amount');
```

你的 `input` 元素应有一个 `placeholder` 属性，设置为 `e.g. 1000`。

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
