---
id: 587d778f367417b2b2512aad
title: >-
  Epuka Masuala ya Upofu wa Rangi kwa Kuchagua kwa Makini Rangi Zinazotoa Taarifa
challengeType: 0
videoUrl: 'https://scrimba.com/c/c437as3'
forumTopicId: 301011
dashedName: >-
  avoid-colorblindness-issues-by-carefully-choosing-colors-that-convey-information
---

# --description--

There are various forms of colorblindness. These can range from a reduced sensitivity to a certain wavelength of light to the inability to see color at all. The most common form is a reduced sensitivity to detect greens.

Kwa mfano, ikiwa rangi mbili za kijani zinazofanana ni mandharimbele na rangi ya mandharinyuma ya maudhui yako, mtumiaji asiyeona rangi huenda asiweze kuzitofautisha. Rangi zinazofanana zinaweza kuzingatiwa kama majirani kwenye gurudumu la rangi, na michanganyiko hiyo inapaswa kuepukwa wakati wa kuwasilisha habari muhimu.

**Kumbuka:**: Baadhi ya zana za kuchagua rangi mtandaoni ni pamoja na uigaji wa kuona wa jinsi rangi zinavyoonekana kwa aina tofauti za upofu wa rangi. Hizi ni nyenzo nzuri pamoja na vikokotoo vya kukagua utofautishaji mtandaoni.

# --instructions--

Camper Cat anajaribu mitindo tofauti ili kupata kitufe muhimu, lakini `mandharinyuma` ya manjano (`#FFFF33`) na maandishi ya `rangi` ya kijani (`#33FF33`) ni rangi za jirani kwenye gurudumu la rangi na haziwezi kutambulika kwa baadhi ya watumiaji wasioona rangi. (Wepesi wao sawa pia hushindwa kukagua uwiano wa utofautishaji). Badilisha `rangi` ya maandishi hadi samawati iliyokolea (`#003366`) ili kutatua matatizo yote mawili.

# --hints--

Msimbo wako unapaswa kubadilisha `rangi` ya maandishi ya `kitufe` kuwa samawati iliyokolea.

```js
const button = document.querySelector('button');
const buttonColor = window.getComputedStyle(button).color; 
assert.equal(buttonColor, 'rgb(0, 51, 102)');
```

# --seed--

## --seed-contents--

```html
<head>
  <style>
  button {
    color: #33FF33;
    background-color: #FFFF33;
    font-size: 14px;
    padding: 10px;
  }
  </style>
</head>
<body>
  <header>
    <h1>Danger!</h1>
  </header>
  <button>Delete Internet</button>
</body>
```

# --solutions--

```html
<head>
  <style>
    button {
      color: #003366;
      background-color: #FFFF33;
      font-size: 14px;
      padding: 10px;
    }
  </style>
</head>
<body>
  <header>
    <h1>Danger!</h1>
  </header>
  <button>Delete Internet</button>
</body>
```
