---
id: 618a0b2befb143baefab632b
title: Step 32
challengeType: 0
dashedName: step-32
---

# --description--

Tambua kwamba rangi nyekundu na cyan ni angavu sana zikikumbatiana. Tofauti hii inaweza kuvuruga ikiwa itatumika kupita kiasi kwenye tovuti, na inaweza kufanya maandishi kuwa magumu kusoma ikiwa yamewekwa kwenye asili yenye rangi ya nyongeza.

Ni desturi bora kuchagua rangi moja kama rangi kuu, na kutumia rangi yake ya nyongeza kama msisitizo kuleta umakini kwa maudhui fulani kwenye ukurasa.

Kwanza, katika kanuni ya `h1`, tumia kitendakazi cha `rgb` kuweka `background-color` yake kuwa cyan.

# --hints--

Haupaswi kuondoa au kubadilisha sifa ya `text-align` au thamani yake.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign, 'center');
```

Kanuni yako ya `h1` ya CSS inapaswa kuwa na sifa ya `background-color` iliyowekwa kuwa `rgb(0, 255, 255)`.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.backgroundColor, 'rgb(0, 255, 255)');
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Markers</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
      <div class="marker one">
      </div>
      <div class="marker two">
      </div>
      <div class="marker three">
      </div>
    </div>
  </body>
</html>
```

```css
h1 {
  text-align: center;
--fcc-editable-region--
  
--fcc-editable-region--
}

.container {
  background-color: rgb(255, 255, 255);
  padding: 10px 0;
}

.marker {
  width: 200px;
  height: 25px;
  margin: 10px auto;
}

.one {
  background-color: rgb(255, 0, 0);
}

.two {
  background-color: rgb(0, 255, 255);
}

.three {
  background-color: rgb(0, 0, 0);
}

```
