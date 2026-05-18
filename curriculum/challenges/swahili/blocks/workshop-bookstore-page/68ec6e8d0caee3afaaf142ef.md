---
id: 68ec6e8d0caee3afaaf142ef
title: Hatua 8
challengeType: 0
dashedName: step-8
---

# --description--

Unaweza kuongeza vipengele vingi ndani ya kipengele cha `div` ili kupanga pamoja maudhui yanayohusiana. Ndani ya kipengele chenye `class` ya `card-container`, tengeneza kipengele kingine cha `div`. `div` hii itawakilisha kadi ya kitabu cha kwanza.

Ongeza sifa ya kipengele ya `class` kwa kipengele hiki kipya cha `div` na weka thamani ya sifa ya kipengele ya `class` kuwa `card`.

# --hints--

Unapaswa kuwa na kipengele cha `div` kilichopangwa ndani ya kipengele chenye darasa la vitu la `card-container`.

```js
assert.exists(document.querySelector('.card-container div'));
```

Kipengele chako kipya cha `div` kinapaswa kuwa na sifa ya kipengele ya `class`.

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

Kipengele chako kipya cha `div` kinapaswa kuwa na sifa ya kipengele ya `class` yenye thamani ya `card`.

```js
assert.exists(document.querySelector('.card-container div.card'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>XYZ Bookstore Page</title>
</head>

<body>
  <h1>XYZ Bookstore</h1>
  <p>Browse our collection of amazing books!</p>
  
  <div class="card-container">
--fcc-editable-region--
    
--fcc-editable-region--
  </div>
</body>

</html>
```
