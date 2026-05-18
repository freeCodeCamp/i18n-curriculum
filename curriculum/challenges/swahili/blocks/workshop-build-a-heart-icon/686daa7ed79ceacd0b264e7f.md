---
id: 686daa7ed79ceacd0b264e7f
title: Hatua 4
challengeType: 0
dashedName: step-4
---

# --description--

Hatua inayofuata ni kuweka sifa za kipengele za `width` na `height` kwa kipengele cha `svg`. Kwa kuwa unaunda ikoni, thamani zote mbili zinapaswa kuwekwa ndogo.

Weka thamani zote mbili kuwa `24`.

# --hints--

Kipengele chako cha `svg` kinapaswa kuwa na sifa ya kipengele ya `width` yenye thamani `24`.

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('width'), '24');
```

Kipengele chako cha `svg` kinapaswa kuwa na sifa ya kipengele ya `height` yenye thamani `24`.

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('height'), '24');
```

# --seed--

## --seed-contents--

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Heart Icon</title>
  </head>
  <body>
    --fcc-editable-region--
    <svg>
    --fcc-editable-region--
      <path
        d="M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z"
      ></path>
    </svg>
  </body>
</html>
```
