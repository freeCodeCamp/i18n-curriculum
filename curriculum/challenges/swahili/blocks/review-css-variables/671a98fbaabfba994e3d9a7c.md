---
id: 671a98fbaabfba994e3d9a7c
title: Ukagua wa vigezo vya CSS
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## Sifa maalum za CSS (vigezo vya CSS)

- **Ufafanuzi**: Sifa maalum za CSS, zinazojulikana pia kama vigezo vya CSS, ni vitu vilivyoainishwa na waandishi wa CSS vinavyoshikilia thamani maalum zinazotumika tena katika hati nzima. Ni kipengele chenye nguvu kinachoruhusu mitindo kuwa na ufanisi zaidi, rahisi kudumishwa, na yenye kubadilika. Sifa maalum ni muhimu hasa katika kuunda miundo inayoweza kubadilishwa mandhari. Unaweza kuainisha seti ya sifa kwa mandhari tofauti:

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## Sheria ya `@property`

- **Ufafanuzi**: Sheria ya `@property` ni kipengele chenye nguvu cha CSS kinachomruhusu msanidi programu kuainisha sifa maalum kwa udhibiti mkubwa juu ya tabia zao, ikiwa ni pamoja na jinsi zinavyobadilika kwa uhuishaji na thamani zao za awali.

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: Huu ni jina la sifa maalum unayoainisha. Kama sifa zote maalum, lazima ianze na alama mbili za mnyororo.
**`syntax`**: Hii inaainisha aina ya sifa, ambayo inaweza kuwa vitu kama `<color>`, `<length>`, `<number>`, `<percentage>`, au aina ngumu zaidi.
- **`inherits`**: Hii inaeleza kama sifa inapaswa kurithi thamani yake kutoka kwa kipengele mzazi.
- **`initial-value`**: Hii inaweka thamani ya msingi ya sifa.
- **Mfano wa mwelekeo wa rangi ukitumia Sheria ya `@property`**: Mfano huu huunda mwelekeo wa rangi unaobadilika kwa uhuishaji taratibu wakati kipengele kinapobofyanwa.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">

<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

:::

- **Njia mbadala**: Unapotumia sifa maalum, unaweza kutoa thamani ya njia mbadala kwa kutumia kitendakazi cha `var()`, kama unavyofanya na sifa maalum za kawaida:

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

Kagua mada na dhana za vigezo vya CSS.
