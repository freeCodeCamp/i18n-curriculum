---
id: 69b2c970cb02ddaafff1c0e1
title: Passaggio 4
challengeType: 0
dashedName: step-4
---

# --description--

La tua app organizzerà le spese in categorie (o “buste”). Inizia aggiungendo la busta per l'affitto.

All'interno del tuo `form`, crea un elemento `fieldset` con l'`id` impostato su `rent`.

All'interno di quel `fieldset`:

- Aggiungi un elemento `legend` con il testo `Rent`
- Aggiungi un `label` per un input con l'attributo `for` impostato su `rent-amount` e il testo `Amount`.
- Aggiungi un elemento `input` con i seguenti attributi:
  - `type` impostato su `number`
  - `min` impostato su `0`
  - `id` impostato su `rent-amount`
  - `placeholder` impostato su `e.g. 1000`

# --hints--

Dovresti creare un elemento `fieldset` nel tuo `form`.

```js
assert.exists(document.querySelector('form fieldset'));
```

Il tuo elemento `fieldset` dovrebbe venire dopo il tuo elemento `input`.

```js
assert.equal(document.querySelector('form fieldset')?.previousElementSibling?.tagName, "INPUT");
```

Il tuo elemento `fieldset` dovrebbe avere un `id` impostato su `rent`.

```js
assert.equal(document.querySelector('form fieldset')?.id, "rent");
```

Dovresti creare un elemento `legend` all'interno del tuo `fieldset`.

```js
assert.exists(document.querySelector('form fieldset legend'));
```

Il tuo elemento `legend` dovrebbe avere il testo `Rent`.

```js
assert.equal(document.querySelector('form fieldset legend')?.innerText, "Rent");
```

Dovresti creare un elemento `label` all'interno del tuo `fieldset`.

```js
assert.exists(document.querySelector('form fieldset label'));
```

Il tuo elemento `label` dovrebbe venire dopo il tuo elemento `legend`.

```js
assert.equal(document.querySelector('form fieldset label')?.previousElementSibling?.tagName, "LEGEND");
```

Il tuo elemento `label` dovrebbe avere un attributo `for` impostato su `rent-amount`.

```js
assert.equal(document.querySelector('form fieldset label')?.getAttribute('for'), "rent-amount");
```

Il tuo elemento `label` dovrebbe avere il testo `Amount`.

```js
assert.equal(document.querySelector('form fieldset label')?.innerText, "Amount");
```

Dovresti creare un elemento `input` all'interno del tuo `fieldset`.

```js
assert.exists(document.querySelector('form fieldset input'));
```

Il tuo elemento `input` dovrebbe venire dopo il tuo elemento `label`.

```js
assert.equal(document.querySelector('form fieldset input')?.previousElementSibling?.tagName, "LABEL");
```

Il tuo elemento `input` dovrebbe avere un attributo `type` impostato su `number`.

```js
assert.equal(document.querySelector('form fieldset input')?.type, 'number');
```

Il tuo elemento `input` dovrebbe avere un attributo `min` impostato su `0`.

```js
assert.equal(document.querySelector('form fieldset input')?.getAttribute('min'), '0');
```

Il tuo elemento `input` dovrebbe avere un attributo `id` impostato su `rent-amount`.

```js
assert.equal(document.querySelector('form fieldset input')?.id, 'rent-amount');
```

Il tuo elemento `input` dovrebbe avere un attributo `placeholder` impostato su `e.g. 1000`.

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
