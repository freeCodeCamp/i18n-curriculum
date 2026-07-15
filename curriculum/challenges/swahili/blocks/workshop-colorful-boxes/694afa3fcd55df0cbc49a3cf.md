---
id: 694afa3fcd55df0cbc49a3cf
title: Hatua 2
challengeType: 0
dashedName: step-2
---

# --description--

Sasa unganisha faili lako la `styles.css` na hati ya HTML.

# --hints--

Unapaswa kuwa na kipengele cha `link` ndani ya kipengele cha `head`.

```js
assert.exists(document.querySelector('head > link'));
```

Kipengele chako cha `link` kinapaswa kuwa na sifa ya kipengele ya `rel`.

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

Kipengele chako cha `link` kinapaswa kuwa na sifa ya kipengele ya `rel` iliyowekwa kuwa `stylesheet`.

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

Kipengele chako cha `link` kinapaswa kuwa na sifa ya kipengele ya `href` iliyowekwa kuwa `styles.css`.

```js
const linkHrefValue = document.querySelector('head > link')?.dataset?.href;
assert.match(linkHrefValue, /^(\.\/)?styles\.css$/);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Colored Boxes</title>
--fcc-editable-region--
  
--fcc-editable-region-- 
</head> 
<body>
  <header>
    <h1>Colored Boxes Layout</h1>
  </header>
</body>
</html>
```
