---
id: 587d778f367417b2b2512aac
title: Epuka Masuala ya Upofu wa Rangi kwa Kutumia Utofautishaji wa Kutosha
challengeType: 0
videoUrl: 'https://scrimba.com/c/cmzMEUw'
forumTopicId: 301012
dashedName: avoid-colorblindness-issues-by-using-sufficient-contrast
---

# --description--

Color is a large part of visual design, but its use introduces two accessibility issues. First, color alone should not be used as the only way to convey important information because screen reader users won't see it. Second, foreground and background colors need sufficient contrast so colorblind users can distinguish them.

Changamoto za awali zilihusu kuwa na njia mbadala za maandishi kushughulikia suala la kwanza. Changamoto ya mwisho ilianzisha zana za kukagua utofautishaji ili kusaidia na ya pili. Uwiano wa utofautishaji unaopendekezwa na WCAG wa 4.5:1 unatumika kwa matumizi ya rangi pamoja na michanganyiko ya kijivu.

Watumiaji wasioona rangi wanatatizika kutofautisha baadhi ya rangi na nyingine - kwa kawaida katika rangi lakini wakati mwingine wepesi pia. Unaweza kukumbuka uwiano wa utofautishaji hukokotolewa kwa kutumia thamani za mwangaza (au wepesi) za rangi ya mandharimbele na mandharinyuma.

Kwa mazoezi, uwiano wa utofautishaji wa 4.5:1 unaweza kufikiwa kwa kukoleza (kuongeza nyeusi kwa) rangi iliyokolea na upakaji rangi (kuongeza nyeupe kwa) rangi nyepesi. Vivuli vya giza kwenye gurudumu la rangi huchukuliwa kuwa vivuli vya samawati, violets, magentas, na nyekundu, ambapo rangi nyepesi zaidi ni machungwa, njano, kijani, na samawati-kijani.

# --instructions--

Camper Cat anajaribu kutumia rangi kwa maandishi na usuli wa blogu yake, lakini mchanganyiko wake wa sasa wa `background-color` ya kijani kibichi yenye maandishi ya maroon `rangi` ina uwiano wa 2.5:1 wa utofautishaji. Unaweza kurekebisha wepesi wa rangi kwa kuwa alizitangaza kwa kutumia kipengele cha CSS `hsl()` (kinachowakilisha hue, saturation, lightness) kwa kubadilisha hoja ya tatu. Ongeza thamani ya `background-color` kutoka 35% hadi 55%, na upunguze thamani ya `rangi` kutoka 20% hadi 15%. Hii inaboresha utofautishaji hadi 5.9:1.

# --hints--

Msimbo wako unapaswa kubadilisha tu thamani ya wepesi wa kipengele cha `rangi` ya maandishi hadi thamani ya 15%.

```js
assert.match(code ,/color:\s*?hsl\(0,\s*?55%,\s*?15%\)/gi);
```

Msimbo wako unapaswa kubadilisha tu thamani ya wepesi wa kipengele cha `rangi ya mandharinyuma` ya maandishi hadi thamani ya 55%.

```js
assert.match(code ,/background-color:\s*?hsl\(120,\s*?25%,\s*?55%\)/gi);
```

# --seed--

## --seed-contents--

```html
<head>
  <style>
  body {
    color: hsl(0, 55%, 20%);
    background-color: hsl(120, 25%, 35%);
  }
  </style>
</head>
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>A Word on the Recent Catnip Doping Scandal</h2>
    <p>The influence that catnip has on feline behavior is well-documented, and its use as an herbal supplement in competitive ninja circles remains controversial. Once again, the debate to ban the substance is brought to the public's attention after the high-profile win of Kittytron, a long-time proponent and user of the green stuff, at the Claw of Fury tournament.</p>
    <p>As I've stated in the past, I firmly believe a true ninja's skills must come from within, with no external influences. My own catnip use shall continue as purely recreational.</p>
  </article>
</body>
```

# --solutions--

```html
<head>
  <style>
  body {
    color: hsl(0, 55%, 15%);
    background-color: hsl(120, 25%, 55%);
  }
  </style>
</head>
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>A Word on the Recent Catnip Doping Scandal</h2>
    <p>The influence that catnip has on feline behavior is well-documented, and its use as an herbal supplement in competitive ninja circles remains controversial. Once again, the debate to ban the substance is brought to the public's attention after the high-profile win of Kittytron, a long-time proponent and user of the green stuff, at the Claw of Fury tournament.</p>
    <p>As I've stated in the past, I firmly believe a true ninja's skills must come from within, with no external influences. My own catnip use shall continue as purely recreational.</p>
  </article>
</body>
```
