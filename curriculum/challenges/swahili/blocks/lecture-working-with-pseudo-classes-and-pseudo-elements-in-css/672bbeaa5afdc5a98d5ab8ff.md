---
id: 672bbeaa5afdc5a98d5ab8ff
title: Ni mifano gani ya darasa la bandia la eneo?
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

Darasa la bandia la eneo hutumika kwa ajili ya kupamba viungo na vipengele vinavyolengwa ndani ya hati ya sasa. Hutoa njia ya kutumia mitindo kulingana na kama kiungo kimebofyanwa au kama kipengele kiko makini kwa sasa.

Mifano ya darasa la bandia la eneo ni:

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`

Tuchunguze kwa undani kila moja ya darasa la bandia haya.

Darasa la bandia la `:link` linakuwezesha kulenga viungo vyote ambavyo havijabofyanwa kwenye ukurasa wa mtandao. Unaweza kulitumia kupamba viungo tofauti kabla mtumizi hajavibofya. Kwa mfano, unaweza kutaka kufanya viungo vyote visivyobofyanwa kuwa buluu au rangi kuu ya tovuti yako:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:link {
  color: magenta;
}
```

:::

Katika kesi hii, kiungo chochote ambacho mtumizi hajakibofya bado kitaonekana rangi ya magenta. Mara mtumizi anapobofya kiungo, mtindo wa `:link` hautatumika tena, na darasa la bandia la `:visited` linaanza kutumika. Darasa la bandia la `:visited` linaanza kufanya kazi baada ya mtumizi kubofya kiungo, hivyo unaweza kulitumia kulenga viungo ambavyo mtumizi tayari amevibofya.

Hapa kuna mfano wa kubadilisha hali ya kiungo kilichobofyanwa kuwa rangi ya `purple`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:visited {
  color: purple;
}
```

:::

Darasa la bandia la `:visited` husaidia watumizi kutofautisha kati ya viungo ambavyo wamevitembelea na ambavyo hawajavitembelea.

Darasa la bandia la `:any-link` ni mchanganyiko wa madarasa ya bandia ya `:link` na `:visited`. Hivyo linalingana na kipengele chochote cha nanga chenye sifa ya `href`, bila kujali kama kimebofyanwa au la.

Hapa kuna mfano wa kubadilisha rangi ya kiungo kwa darasa la bandia la `:any-link` kuwa `crimson`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:any-link {
  color: crimson;
}
```

:::

Darasa la bandia la `:local-link` linalenga viungo vinavyoelekeza kwenye hati ile ile. Linaweza kuwa na manufaa unapotaka kutofautisha viungo vya ndani na viungo vya nje. Kwa sasa, hakuna kivinjari kinachounga mkono darasa la bandia la `:local-link`.

Darasa la bandia la `:target` huchagua kipengele kinacholingana na kitambulisho cha kipande cha URL ya sasa, kwa mfano, `#section1`. Ni muhimu sana kwa kurasa zilizo na urambazaji ndani ya ukurasa.

Hapa kuna mfano wa HTML unaowakilisha urambazaji ndani ya ukurasa. CSS inatumia darasa la bandia la `:target` kupamba sehemu inayolingana na mahali mtumizi anapoelekezwa:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
```

```css
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}
```

:::

Mtumizi anapobofya moja ya viungo vya urambazaji, rangi ya nyuma ya sehemu husika itabadilika kuwa kijani.

# --questions--

## --text--

Ni darasa gani la bandia linaloruhusu kupamba kipengele kinacholingana na kitambulisho cha kipande cha URL ya sasa, kama `#section1`?

## --answers--

`:hover`

### --feedback--

Fikiria jinsi unavyoweza kuangazia sehemu maalum wakati wa kuvinjari kupitia viungo vya ndani ya ukurasa.

---

`:focus`

### --feedback--

Fikiria jinsi unavyoweza kuangazia sehemu maalum wakati wa kuvinjari kupitia viungo vya ndani ya ukurasa.

---

`:target`

---

`:checked`

### --feedback--

Fikiria jinsi unavyoweza kuangazia sehemu maalum wakati wa kuvinjari kupitia viungo vya ndani ya ukurasa.

## --video-solution--

3

## --text--

Darasa la bandia hutumika lini hasa?

## --answers--

Wakati wa kupamba vipengele kulingana na uhusiano wao wa ndugu.

### --feedback--

Fikiria jinsi unavyoweza kupamba viungo na vipengele vilivyolengwa kulingana na mwingiliano wa mtumizi.

---

Wakati wa kutumia mitindo kulingana na kama kiungo kimebofyanwa au kipengele kiko makini kwa sasa.

---

Wakati wa kupamba vipengele kulingana na sifa za kipengele cha mzazi.

### --feedback--

Fikiria jinsi unavyoweza kupamba viungo na vipengele vilivyolengwa kulingana na mwingiliano wa mtumizi.

---

Wakati wa kurekebisha mpangilio wa ukurasa wa mtandao kwa njia ya mabadiliko ya moja kwa moja.

### --feedback--

Fikiria jinsi unavyoweza kupamba viungo na vipengele vilivyolengwa kulingana na mwingiliano wa mtumizi.

## --video-solution--

2

## --text--

Ni darasa gani la bandia lililoundwa kulenga viungo vinavyoelekeza kwenye hati ile ile lakini halijaungwa mkono na kivinjari chochote kwa sasa?

## --answers--

`:any-link`

### --feedback--

Fikiria darasa la bandia lililokusudiwa kutofautisha viungo vya ndani na viungo vya nje, ingawa bado halijaungwa mkono.

---

`:local-link`

---

`:visited`

### --feedback--

Fikiria darasa la bandia lililokusudiwa kutofautisha viungo vya ndani na viungo vya nje, ingawa bado halijaungwa mkono.

---

`:target`

### --feedback--

Fikiria darasa la bandia lililokusudiwa kutofautisha viungo vya ndani na viungo vya nje, ingawa bado halijaungwa mkono.

## --video-solution--

2
