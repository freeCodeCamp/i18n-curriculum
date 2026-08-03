---
id: 69b2c970cb02ddaafff1c0e1
title: Passo 4
challengeType: 0
dashedName: step-4
---

# --description--

Seu app vai organizar despesas em categorias (ou “envelopes”). Comece adicionando o envelope de aluguel.

Dentro do seu `form`, crie um elemento `fieldset` com o `id` definido como `rent`.

Dentro desse `fieldset`:

- Adicione um elemento `legend` com o texto `Rent`
- Adicione um `label` para uma entrada com o atributo `for` definido como `rent-amount` e o texto `Amount`.
- Adicione um elemento `input` com os seguintes atributos:
  - `type` definido como `number`
  - `min` definido como `0`
  - `id` definido como `rent-amount`
  - `placeholder` definido como `e.g. 1000`

# --hints--

Você deve criar um elemento `fieldset` no `form`.

```js
assert.exists(document.querySelector('form fieldset'));
```

O elemento `fieldset` deve vir depois do elemento `input`.

```js
assert.equal(document.querySelector('form fieldset')?.previousElementSibling?.tagName, "INPUT");
```

Seu elemento `fieldset` deve ter um `id` definido como `rent`.

```js
assert.equal(document.querySelector('form fieldset')?.id, "rent");
```

Você deve criar um elemento `legend` no `fieldset`.

```js
assert.exists(document.querySelector('form fieldset legend'));
```

Seu elemento `legend` deve ter o texto `Rent`.

```js
assert.equal(document.querySelector('form fieldset legend')?.innerText, "Rent");
```

Você deve criar um elemento `label` dentro do seu `fieldset`.

```js
assert.exists(document.querySelector('form fieldset label'));
```

Seu elemento `label` deve vir depois do seu elemento `legend`.

```js
assert.equal(document.querySelector('form fieldset label')?.previousElementSibling?.tagName, "LEGEND");
```

Seu elemento `label` deve ter um atributo `for` definido como `rent-amount`.

```js
assert.equal(document.querySelector('form fieldset label')?.getAttribute('for'), "rent-amount");
```

Seu elemento `label` deve ter o texto `Amount`.

```js
assert.equal(document.querySelector('form fieldset label')?.innerText, "Amount");
```

Você deve criar um elemento `input` dentro do seu `fieldset`.

```js
assert.exists(document.querySelector('form fieldset input'));
```

O elemento `input` deve vir depois do elemento `label`.

```js
assert.equal(document.querySelector('form fieldset input')?.previousElementSibling?.tagName, "LABEL");
```

O elemento `input` deve ter o atributo `type` definido como `number`.

```js
assert.equal(document.querySelector('form fieldset input')?.type, 'number');
```

O elemento `input` deve ter o atributo `min` definido como `0`.

```js
assert.equal(document.querySelector('form fieldset input')?.getAttribute('min'), '0');
```

Seu elemento `input` deve ter um atributo `id` definido como `rent-amount`.

```js
assert.equal(document.querySelector('form fieldset input')?.id, 'rent-amount');
```

Seu elemento `input` deve ter um atributo `placeholder` definido como `e.g. 1000`.

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
