---
id: 69b2c970cb02ddaafff1c0e2
title: الخطوة 5
challengeType: 0
dashedName: step-5
---

# --description--

بعد ذلك، أنشئ عنصر `fieldset` ثاني مع تعيين `id` إلى `food`.

داخل ذلك العنصر، أنشئ عنصر `legend` بالنص `Food`، و`div` فارغ مع تعيين `class` إلى `input-container`.

# --hints--

يجب أن تنشئ عنصر `fieldset` ثاني داخل نموذج `form` الخاص بك.

```js
assert.exists(document.querySelectorAll('form fieldset')[1]);
```

يجب أن يأتي عنصر `fieldset` الثاني بعد عنصر `fieldset` الأول.

```js
assert.equal(document.querySelectorAll('form fieldset')[1]?.previousElementSibling?.tagName, "FIELDSET");
```

يجب أن يحتوي عنصر `fieldset` الثاني على `id` معين إلى `food`.

```js
assert.equal(document.querySelectorAll('form fieldset')[1]?.id, "food");
```

يجب أن يحتوي عنصر `fieldset` الثاني على عنصر `legend`.

```js
assert.exists(document.querySelectorAll('form fieldset')[1]?.querySelector('legend'));
```

يجب أن يحتوي عنصر `legend` الجديد على النص `Food`.

```js
assert.equal(document.querySelectorAll('form fieldset')[1]?.querySelector('legend')?.innerText, "Food");
```

يجب أن يحتوي عنصر `fieldset` الثاني على عنصر `div`.

```js
assert.exists(document.querySelectorAll('form fieldset')[1]?.querySelector('div'));
```

يجب أن يحتوي عنصر `div` الجديد على `class` مضبوط على `input-container`.

```js
assert.equal(document.querySelectorAll('form fieldset')[1]?.querySelector('div')?.className, "input-container");
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
