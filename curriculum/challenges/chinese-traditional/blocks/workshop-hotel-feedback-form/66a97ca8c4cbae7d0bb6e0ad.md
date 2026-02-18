---
id: 66a97ca8c4cbae7d0bb6e0ad
title: 第 29 步
challengeType: 0
dashedName: step-29
---

# --description--

在你的 `select` 元素內，為你的 `option` 元素添加以下五個 `option` 元素，並為 `option` 文字和 `value` 屬性設定相對應的值：

**值屬性：**

- 差
- 令人滿意的
- 良好
- 非常好
- 優秀

**選項文字：**

- 差
- 令人滿意
- 良好
- 非常好
- 優秀


別忘了為 `option` 元素添加值為 `"excellent"` 的 `selected` 屬性。

# --hints--

你應該有一個 `option` 元素，其值設定為 `"poor"`。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="poor"]'));
```

你的 `option` 其 `value` 為 `"poor"` 應該有 `text` 為 `"Poor"`。

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="poor"]')?.textContent.trim(), 'Poor');
```

你應該有一個 `option` 元素，其 `value` 設定為 `"satisfactory"`。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="satisfactory"]'));
```

你的 `option` 其 `value` 為 `"satisfactory"` 應該有 `text` 為 `"Satisfactory"`。

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="satisfactory"]')?.textContent.trim(), 'Satisfactory');
```

你應該有一個 `option` 元素，其 `value` 設定為 `"good"`。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="good"]'));
```

你的 `option` 具有 `value` 為 `"good"` 的 `option` 應該有 `text` 為 `"Good"`。

```js

assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="good"]')?.textContent.trim(), 'Good');
```

你應該有一個 `option` 元素，其值設為 `"very-good"`。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="very-good"]'));
```

你的 `option` 其 `value` 為 `"very-good"` 應該有文字 `"Very Good"`。

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="very-good"]')?.textContent.trim(), 'Very Good');
```

你應該有一個 `option` 元素，其值設定為 `"excellent"`。

```js
assert.exists(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"]'));
```

你的 `option` 其 `value` 為 `"excellent"` 應該有 `text` 為 `"Excellent"`。

```js
assert.strictEqual(document.querySelector('fieldset:nth-of-type(4) select#food option[value="excellent"]')?.textContent.trim(), 'Excellent');
```

你應該有一個 `option` 元素，其 `selected` 屬性設為 `"excellent"`。

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
