---
id: 69b2c970cb02ddaafff1c0e1
title: الخطوة 4
challengeType: 0
dashedName: step-4
---

# --description--

سيرتب تطبيقك النفقات ضمن فئات (أو "مظاريف"). ابدأ بإضافة مظروف الإيجار.

داخل `form`، أنشئ عنصر `fieldset` مع تعيين `id` إلى `rent`.

داخل ذلك الـ `fieldset`:

- أضف عنصر `legend` بالنص `Rent`
- أضف `label` لمُدخَل مع تعيين الخاصية `for` إلى `rent-amount` والنص `Amount`.
- أضف عنصر `input` بالخصائص التالية:
  - `type` مع القيمة `number`
  - `min` مع القيمة `0`
  - `id` مع القيمة `rent-amount`
  - `placeholder` مع القيمة `e.g. 1000`

# --hints--

يجب أن تنشئ عنصر `fieldset` داخل الـ `form`.

```js
assert.exists(document.querySelector('form fieldset'));
```

يجب أن يأتي عنصر `fieldset` بعد عنصر `input` الخاص بك.

```js
assert.equal(document.querySelector('form fieldset')?.previousElementSibling?.tagName, "INPUT");
```

يجب أن يحتوي عنصر `fieldset` على خاصية `id` بقيمة `rent`.

```js
assert.equal(document.querySelector('form fieldset')?.id, "rent");
```

يجب أن تنشئ عنصر `legend` داخل عنصر `fieldset` الخاص بك.

```js
assert.exists(document.querySelector('form fieldset legend'));
```

يجب أن يحتوي عنصر `legend` على النص `Rent`.

```js
assert.equal(document.querySelector('form fieldset legend')?.innerText, "Rent");
```

يجب إنشاء عنصر `label` داخل `fieldset`.

```js
assert.exists(document.querySelector('form fieldset label'));
```

يجب أن يأتي عنصر `label` بعد عنصر `legend`.

```js
assert.equal(document.querySelector('form fieldset label')?.previousElementSibling?.tagName, "LEGEND");
```

يجب أن يحتوي عنصر `label` على خاصية `for` بقيمة `rent-amount`.

```js
assert.equal(document.querySelector('form fieldset label')?.getAttribute('for'), "rent-amount");
```

يجب أن يحتوي عنصر `label` على النص `Amount`.

```js
assert.equal(document.querySelector('form fieldset label')?.innerText, "Amount");
```

يجب إنشاء عنصر `input` داخل `fieldset`.

```js
assert.exists(document.querySelector('form fieldset input'));
```

يجب أن يأتي عنصر `input` بعد عنصر `label`.

```js
assert.equal(document.querySelector('form fieldset input')?.previousElementSibling?.tagName, "LABEL");
```

يجب أن يحتوي عنصر `input` على خاصية `type` بقيمة `number`.

```js
assert.equal(document.querySelector('form fieldset input')?.type, 'number');
```

يجب أن يحتوي عنصر `input` على خاصية `min` بقيمة `0`.

```js
assert.equal(document.querySelector('form fieldset input')?.getAttribute('min'), '0');
```

يجب أن يحتوي عنصر `input` على خاصية `id` بقيمة `rent-amount`.

```js
assert.equal(document.querySelector('form fieldset input')?.id, 'rent-amount');
```

يجب أن يحتوي عنصر `input` على خاصية `placeholder` بقيمة `e.g. 1000`.

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
