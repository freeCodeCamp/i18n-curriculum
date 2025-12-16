---
id: 66a97ca8c4cbae7d0bb6e0ad
title: Step 29
challengeType: 0
dashedName: step-29
---

# --description--

在你的 `select` 元素中，添加以下五個 `option` 元素，併爲 `option` 文本和 `value` 屬性添加相應的值：

**值屬性：**

- poor
- satisfactory
- good
- very-good
- excellent

**選項文本：**

- Poor
- Satisfactory
- Good
- Very Good
- Excellent


不要忘記在值爲 `"excellent"` 的 `option` 元素中添加 `selected` 屬性。

# --hints--

你應該有一個值設置爲 `"poor"` 的 `option` 元素。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="poor"]'));
```

`value` 爲 `"poor"` 的 `option` 應包含文本 `"Poor"`。

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="poor"]')?.textContent.trim(), 'Poor');
```

你應該有一個 `value` 設置爲 `"satisfactory"` 的 `option` 元素。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="satisfactory"]'));
```

`value` 爲 `"satisfactory"` 的 `option` 應包含文本 `"Satisfactory"`。

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="satisfactory"]')?.textContent.trim(), 'Satisfactory');
```

你應該有一個 `value` 設置爲 `"good"` 的 `option` 元素。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="good"]'));
```

`value` 爲 `"good"` 的 `option` 應包含文本 `"Good"`。

```js

assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="good"]')?.textContent.trim(), 'Good');
```

你應該有一個值設置爲 `"very-good"` 的 `option` 元素。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="very-good"]'));
```

`value` 爲 `"very-good"` 的 `option` 應包含文本 `"Very Good"`。

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="very-good"]')?.textContent.trim(), 'Very Good');
```

你應該有一個值設置爲 `"excellent"` 的 `option` 元素。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"]'));
```

`value` 爲 `"excellent"` 的 `option` 應包含文本 `"Excellent"`。

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"]')?.textContent.trim(), 'Excellent');
```

你應將具有`selected` 屬性的 `option` 元素設置爲 `"excellent"`。

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
          <input id="yes-option" type="radio" name="hotel-stay" />
          <label for="yes-option">Yes</label>
          <input id="no-option" type="radio" name="hotel-stay" />
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

          --fcc-editable-region--
          <select name="food" id="food">

          </select>
          --fcc-editable-region--
        </fieldset>
      </form>
    </main>
  </body>
</html>
```
