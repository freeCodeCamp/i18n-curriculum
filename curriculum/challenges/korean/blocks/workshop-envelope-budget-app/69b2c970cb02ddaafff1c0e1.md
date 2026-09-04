---
id: 69b2c970cb02ddaafff1c0e1
title: 4단계
challengeType: 0
dashedName: step-4
---

# --description--

앱이 지출을 카테고리(또는 “봉투”)로 정리합니다. 먼저 임대료 봉투를 추가하세요.

`form` 안에 `id`가 `rent`로 설정된 `fieldset` 요소를 만드세요.

그 `fieldset` 안에:

- 텍스트가 `Rent`인 `legend` 요소를 추가하세요
- `for` 속성이 `rent-amount`이고 텍스트가 `Amount`인 입력용 `label`을 추가하세요.
- 다음 속성을 가진 `input` 요소를 추가하세요:
  - `type`은 `number`
  - `min`은 `0`
  - `id`는 `rent-amount`
  - `placeholder`는 `e.g. 1000`

# --hints--

`fieldset` 안에 `form` 요소를 만들어야 합니다.

```js
assert.exists(document.querySelector('form fieldset'));
```

`fieldset` 요소 다음에 `input` 요소가 와야 합니다.

```js
assert.equal(document.querySelector('form fieldset')?.previousElementSibling?.tagName, "INPUT");
```

`fieldset` 요소에 `id`가 `rent`로 설정되어 있어야 합니다.

```js
assert.equal(document.querySelector('form fieldset')?.id, "rent");
```

`legend` 안에 `fieldset` 요소를 만들어야 합니다.

```js
assert.exists(document.querySelector('form fieldset legend'));
```

`legend` 요소에 텍스트 `Rent`가 있어야 합니다.

```js
assert.equal(document.querySelector('form fieldset legend')?.innerText, "Rent");
```

`fieldset` 안에 `label` 요소를 만드세요.

```js
assert.exists(document.querySelector('form fieldset label'));
```

`label` 요소는 `legend` 요소 다음에 와야 합니다.

```js
assert.equal(document.querySelector('form fieldset label')?.previousElementSibling?.tagName, "LEGEND");
```

`label` 요소에 `for` 속성이 `rent-amount`로 설정되어 있어야 합니다.

```js
assert.equal(document.querySelector('form fieldset label')?.getAttribute('for'), "rent-amount");
```

`label` 요소에 텍스트 `Amount`가 있어야 합니다.

```js
assert.equal(document.querySelector('form fieldset label')?.innerText, "Amount");
```

`fieldset` 안에 `input` 요소를 만드세요.

```js
assert.exists(document.querySelector('form fieldset input'));
```

`input` 요소는 `label` 요소 다음에 와야 합니다.

```js
assert.equal(document.querySelector('form fieldset input')?.previousElementSibling?.tagName, "LABEL");
```

`input` 요소에 `type` 속성을 `number`로 설정하세요.

```js
assert.equal(document.querySelector('form fieldset input')?.type, 'number');
```

`input` 요소는 `min` 속성을 `0`로 설정해야 합니다.

```js
assert.equal(document.querySelector('form fieldset input')?.getAttribute('min'), '0');
```

`input` 요소에 `id` 속성이 `rent-amount`로 설정되어 있어야 합니다.

```js
assert.equal(document.querySelector('form fieldset input')?.id, 'rent-amount');
```

`input` 요소에 `placeholder` 속성이 `e.g. 1000`으로 설정되어 있어야 합니다.

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
