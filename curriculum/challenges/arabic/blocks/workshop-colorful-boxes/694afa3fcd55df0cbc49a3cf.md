---
id: 694afa3fcd55df0cbc49a3cf
title: الخطوة 2
challengeType: 0
dashedName: step-2
---

# --description--

اربط الآن ملف `styles.css` بوثيقة HTML.

# --hints--

يجب أن يحتوي عنصر `link` داخل عنصر `head`.

```js
assert.exists(document.querySelector('head > link'));
```

يجب أن يحتوي عنصر `link` على خاصية `rel`.

```js
const linkEl = document.querySelector('head > link');
assert.exists(linkEl?.getAttribute('rel'));
```

يجب أن تكون خاصية `rel` في عنصر `link` مضبوطة على `stylesheet`.

```js
const linkEl = document.querySelector('head > link');
assert.equal(linkEl?.getAttribute('rel'), 'stylesheet');
```

يجب أن تكون خاصية `href` في عنصر `link` مضبوطة على `styles.css`.

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
