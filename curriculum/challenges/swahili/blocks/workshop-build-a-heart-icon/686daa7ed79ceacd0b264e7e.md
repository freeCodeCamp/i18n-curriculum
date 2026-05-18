---
id: 686daa7ed79ceacd0b264e7e
title: Hatua 3
challengeType: 0
dashedName: step-3
---

# --description--

Kipengele cha `path` kinahitaji umbo lake lifafanuliwe. Hapo ndipo sifa ya kipengele ya `d` inapoingia. Inatumika kuunda mfululizo wa herufi za amri na nambari zinazochora umbo.

Herufi hizi zinawakilisha amri kama kusogea, kuchora mstari, na kufunga, wakati nambari zinawakilisha kuratibu.

Weka sifa ya kipengele ya `d` ya umbo la moyo kuwa `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`.

# --hints--

Unapaswa kuwa na sifa ya kipengele ya `d` kwenye kipengele chako cha `path`.

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.exists(d);
```

Unapaswa kuweka sifa ya kipengele ya `d` kuwa `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.strictEqual(
  d,
  'M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z'
);
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
    <svg>
      <path
      --fcc-editable-region--
        
      --fcc-editable-region--
      ></path>
    </svg>
  </body>
</html>
```
