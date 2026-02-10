---
id: 66a97ca8c4cbae7d0bb6e0ad
title: Paso 29
challengeType: 0
dashedName: step-29
---

# --description--

Dentro de tu elemento `select`, añade los siguientes cinco elementos `option` con estos valores correspondientes para el texto `option` y el atributo `value`:

**Atributo Value:**

- pobre
- satisfactorio
- bueno
- muy bueno
- excelente

**Texto de la opción:**

- Pobre
- Satisfactorio
- Bueno
- Muy Bueno
- Excelente


No olvides agregar el atributo `selected` al elemento `option` con el valor de `"excellent"`.

# --hints--

Deberías tener un elemento `option` con el valor configurado a `"poor"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="poor"]'));
```

Tu `option` con el `value` de `"poor"` debería tener el texto `"Poor"`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="poor"]')?.textContent.trim(), 'Poor');
```

Deberías tener un elemento `option` con el valor configurado a `"satisfactory"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="satisfactory"]'));
```

Tu `option` con el `value` de `"satisfactory"` debería tener el texto `"Satisfactory"`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="satisfactory"]')?.textContent.trim(), 'Satisfactory');
```

Deberías tener un elemento `option` con el valor configurado a `"good"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="good"]'));
```

Tu `option` con el `value` de `"good"` debería tener el texto `"Good"`.

```js

assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="good"]')?.textContent.trim(), 'Good');
```

Deberías tener un elemento `option` con el valor configurado a `"very-good"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="very-good"]'));
```

Tu `option` con el `value` de `"very-good"` debería tener el texto `"Very Good"`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="very-good"]')?.textContent.trim(), 'Very Good');
```

Deberías tener un elemento `option` con el valor configurado a `"excellent"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"]'));
```

Tu `option` con el `value` de `"excellent"` debería tener el texto `"Excellent"`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"]')?.textContent.trim(), 'Excellent');
```

Deberías tener un elemento `option` con el atributo `selected` establecido en `"excellent"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"][selected]'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Hotel Feedback Form</title>
  </head>
  <body>
    <header>
      <h1>Hotel Feedback Form</h1>
      <p>
        Thank you for staying with us. Please provide feedback on your recent
        stay.
      </p>
    </header>
    <main>
      <form method="POST" action="https://hotel-feedback.freecodecamp.org">
        <fieldset>
          <legend>Personal Information</legend>
          <label for="full-name">Name (required):</label>
          <input type="text" id="full-name" name="name" placeholder="e.g., John Doe" required size="20">

          <label for="email">Email address (required):</label>
          <input
            placeholder="example@email.com"
            required
            id="email"
            type="email"
            name="email"
            size="20"
          />
          <label for="age">Age (optional):</label>
          <input type="number" name="age" id="age" min="3" max="100" />
        </fieldset>

        <fieldset>
          <legend>Was this your first time at our hotel?</legend>
          <input id="yes-option" type="radio" name="hotel-stay" value="yes" />
          <label for="yes-option">Yes</label>
          <input id="no-option" type="radio" name="hotel-stay" value="no" />
          <label for="no-option">No</label>
        </fieldset>

        <fieldset>
          <legend>
            Why did you choose to stay at our hotel? (Check all that apply)
          </legend>

          <input type="checkbox" id="ads" name="choice" value="ads" />
          <label for="ads">Social Media Ads</label>

          <input
            type="checkbox"
            id="recommendation"
            name="choice"
            value="recommendation"
          />
          <label for="recommendation">Personal Recommendation</label>
          
          <input type="checkbox" id="location" name="choice" value="location" />
          <label for="location">Location</label>

          <input
            checked
            type="checkbox"
            id="reputation"
            name="choice"
            value="reputation"
          />
          <label for="reputation">Reputation</label>
          
          <input type="checkbox" id="price" name="choice" value="price" />
          <label for="price">Price</label>
        </fieldset>

        <fieldset>
          <legend>Ratings</legend>

          <label for="service">How was the service?</label>

          <select name="service" id="service">
            <option value="poor">Poor</option>
            <option value="satisfactory">Satisfactory</option>
            <option value="good">Good</option>
            <option value="very-good">Very Good</option>
            <option selected value="excellent">Excellent</option>
          </select>

          <label for="food">How was the food?</label>

          <select name="food" id="food">
          --fcc-editable-region--
            
          --fcc-editable-region--
          </select>
        </fieldset>
      </form>
    </main>
  </body>
</html>
```
