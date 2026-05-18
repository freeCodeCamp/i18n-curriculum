---
id: 60f85a62fb30c80bcea0cedb
title: Hatua 20
challengeType: 0
dashedName: step-20
---

# --description--

Watumiaji wataweza kuchagua kama akaunti yao ni kwa madhumuni ya `Personal` au `Business`.

Ili kufanya hivyo, ndani ya kila mojawapo ya vipengele viwili vya kwanza vya `label`, ongeza kipengele kimoja cha `input` chenye `type="radio"`.

# --hints--

Unapaswa kuongeza vipengele viwili vya `input`.

```js
assert.lengthOf(document.querySelectorAll('fieldset:nth-child(2) input'), 2);
```

Unapaswa kuongeza kipengele kimoja cha `input` kwa kila mojawapo ya vipengele viwili vya kwanza vya `label`.

```js
assert.exists(document.querySelector('fieldset:nth-child(2) > label:nth-child(1) > input'));
assert.exists(document.querySelector('fieldset:nth-child(2) > label:nth-child(2) > input'));
```

Unapaswa kuwapa vipengele vyote vya `input` `type` ya `radio`.

```js
assert.lengthOf(document.querySelectorAll('fieldset:nth-child(2) input[type="radio"]'), 2);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Registration Form</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <h1>Registration Form</h1>
  <p>Please fill out this form with the required information</p>
  <form method="post" action='https://register-demo.freecodecamp.org'>
    <fieldset>
      <label for="first-name">Enter Your First Name: <input id="first-name" type="text" required /></label>
      <label for="last-name">Enter Your Last Name: <input id="last-name" type="text" required /></label>
      <label for="email">Enter Your Email: <input id="email" type="email" required /></label>
      <label for="new-password">Create a New Password: <input id="new-password" type="password" pattern="[a-z0-5]{8,}" required /></label>
    </fieldset>
    <fieldset>
--fcc-editable-region--
      <label></label>
      <label></label>
--fcc-editable-region--
    </fieldset>
    <fieldset></fieldset>
    <input type="submit" value="Submit" />
  </form>
</body>
</html>
```

```css
body {
  width: 100%;
  height: 100vh;
  margin: 0;
  background-color: #1b1b32;
  color: #f5f6f7;
}

label {
  display: block;
  margin: 0.5rem 0;
}

```
