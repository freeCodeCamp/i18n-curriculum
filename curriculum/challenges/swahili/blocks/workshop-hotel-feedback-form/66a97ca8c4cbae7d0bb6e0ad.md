---
id: 66a97ca8c4cbae7d0bb6e0ad
title: Hatua 29
challengeType: 0
dashedName: step-29
---

# --description--

Ndani ya kipengele chako cha `select`, ongeza vipengele vitano vya `option` na thamani zinazolingana za maandishi ya `option` na sifa ya `value`:

**Sifa za thamani:**

- duni
- ya kuridhisha
- nzuri
- nzuri sana
- bora

**Maandishi ya kipengele cha chaguo:**

- Duni
- Ya kuridhisha
- Nzuri
- Nzuri sana
- Bora


Usisahau kuongeza sifa ya `selected` kwenye kipengele cha `option` kwa thamani ya `"excellent"`.

# --hints--

Unapaswa kuwa na kipengele cha `option` chenye `value` iliyowekwa kuwa `"poor"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="poor"]'));
```

Kipengele chako cha `option` chenye `value` ya `"poor"` kinapaswa kuwa na maandishi `Poor`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="poor"]')?.textContent.trim(), 'Poor');
```

Unapaswa kuwa na kipengele cha `option` chenye `value` iliyowekwa kuwa `"satisfactory"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="satisfactory"]'));
```

Kipengele chako cha `option` chenye `value` ya `"satisfactory"` kinapaswa kuwa na maandishi `Satisfactory`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="satisfactory"]')?.textContent.trim(), 'Satisfactory');
```

Unapaswa kuwa na kipengele cha `option` chenye `value` iliyowekwa kuwa `"good"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="good"]'));
```

Kipengele chako cha `option` chenye `value` ya `"good"` kinapaswa kuwa na maandishi `Good`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="good"]')?.textContent.trim(), 'Good');
```

Unapaswa kuwa na kipengele cha `option` chenye `value` iliyowekwa kuwa `"very-good"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="very-good"]'));
```

Kipengele chako cha `option` chenye `value` ya `"very-good"` kinapaswa kuwa na maandishi `Very Good`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="very-good"]')?.textContent.trim(), 'Very Good');
```

Unapaswa kuwa na kipengele cha `option` chenye `value` iliyowekwa kuwa `"excellent"`.

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"]'));
```

Kipengele chako cha `option` chenye `value` ya `"excellent"` kinapaswa kuwa na maandishi `Excellent`.

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"]')?.textContent.trim(), 'Excellent');
```

Kipengele chako cha `option` chenye `value` ya `"excellent"` kinapaswa kuwa na sifa ya kipengele `selected`.

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
