---
id: 66ed8ffcf45ce3ece4053eb5
title: Jaribio fupi la ulinganifu wa CSS
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

Ili kupita jaribio fupi, lazima ujibu kwa usahihi angalau maswali 18 kati ya 20 yaliyo hapa chini.

# --quizzes--

## --quiz--

### --question--

#### --text--

Ni ipi kati ya zifuatazo SI thamani halali ya sifa ya `position`?

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

Lengo kuu la sifa ya `float` katika CSS ni lipi?

#### --distractors--

Floats hutumika kuondoa kipengele kutoka kwenye mtiririko wake wa kawaida kwenye ukurasa na kuuweka moja kwa moja upande wa juu wa kulia wa ukurasa wa mtandao.

---

Floats hutumika kuondoa kipengele kutoka kwenye mtiririko wake wa kawaida kwenye ukurasa na kuuweka juu ya kontena lake.

---

Floats hutumika kuondoa kipengele kutoka kwenye mtiririko wake wa kawaida kwenye ukurasa na kuuweka moja kwa moja upande wa chini wa kulia wa ukurasa wa mtandao.

#### --answer--

Floats hutumika kuondoa kipengele kutoka kwenye mtiririko wake wa kawaida kwenye ukurasa na kuuweka upande wa kushoto au kulia wa kontena lake.

### --question--

#### --text--

Ni mfano gani kati ya zifuatazo unaofanya kipengele cha sanduku kuruka upande wa kushoto?

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

Jukumu la sifa ya `clear` ni lipi?

#### --distractors--

Inatumika kuamua kama kipengele kinahitaji kuhamishwa chini ya ukurasa.

---

Inatumika kuamua kama kipengele kinahitaji kufutwa kabisa kutoka kwenye ukurasa.

---

Inatumika kuamua kama kipengele kinahitaji kufungwa juu ya ukurasa.

#### --answer--

Inatumika kuamua kama kipengele kinahitaji kuhamishwa chini ya maudhui yaliyopangwa kuruka.

### --question--

#### --text--

Ni sifa gani ya CSS inayotumika kudhibiti mpangilio wa wima wa vipengele vyenye nafasi maalum vinavyokutana kwenye ukurasa?

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

Sintaksia sahihi ya ulinganifu wa nafasi ni ipi kati ya zifuatazo?

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

Ni sifa gani ya CSS unayotumia kuweka kipengele mahali fulani kwenye ukurasa ili kisihamie wakati wa kusogeza ukurasa?

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

Ulinganifu wa nafasi wa absolute hufanya nini kwa kipengele?

#### --distractors--

Ulinganifu wa absolute hutumika kuamua kama kipengele kinahitaji kuhamishwa chini ya maudhui yaliyopangwa kuruka.

---

Ulinganifu wa absolute hutumika kuweka kipengele ndani ya mtiririko wa kawaida wa hati.

---

Ulinganifu wa absolute hutumika kudhibiti mpangilio wa wima wa vipengele vyenye nafasi maalum vinavyokutana kwenye ukurasa.

#### --answer--

Ulinganifu wa absolute hukuruhusu kuondoa kipengele kutoka kwenye mtiririko wa kawaida wa hati, na kufanya kitendeke huru kutoka kwa vipengele vingine.

### --question--

#### --text--

Ni sifa gani kati ya zifuatazo SI sifa halali unazoweza kutumia kwa ulinganifu wa absolute?

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

Tofauti kuu kati ya ulinganifu wa relative na absolute ni ipi?

#### --distractors--

Ulinganifu wa absolute huweka kipengele katika nafasi ya kushikamana wakati ulinganifu wa relative huondoa kipengele kutoka kwenye mtiririko wa kawaida wa hati.

---

Ulinganifu wa relative huweka kipengele katika nafasi ya kudumu wakati ulinganifu wa absolute huondoa kipengele kutoka kwenye mtiririko wa kawaida wa hati.

---

Ulinganifu wa absolute huweka kipengele ndani ya mtiririko wa kawaida wa hati wakati ulinganifu wa relative huondoa kipengele kutoka kwenye mtiririko wa kawaida wa hati.

#### --answer--

Ulinganifu wa relative huweka kipengele ndani ya mtiririko wa kawaida wa hati wakati ulinganifu wa absolute huondoa kipengele kutoka kwenye mtiririko wa kawaida wa hati.

### --question--

#### --text--

Ni mfano gani kati ya zifuatazo unaonyesha kuweka sanduku upande wa juu kushoto wa ukurasa?

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

Njia gani ya ulinganifu huruhusu kipengele kushikamana na nafasi maalum tu wakati unaposogeza ukurasa kupita sehemu fulani?

#### --distractors--

Ulinganifu wa float.

---

Ulinganifu wa fixed.

---

Ulinganifu wa absolute.

#### --answer--

Ulinganifu wa sticky.

### --question--

#### --text--

Ni mfano gani sahihi wa kutumia ulinganifu wa sticky?

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

Tofauti kati ya ulinganifu wa sticky na fixed ni ipi?

#### --distractors--

Vipengele vya sticky vinaweza kutumika tu katika mpangilio wa jedwali wakati vipengele vya fixed vinaweza kutumika katika aina yoyote ya mpangilio wa CSS.

---

Vipengele vya sticky vitabaki katika nafasi ile ile wakati vipengele vya fixed vitashikamana na sehemu fulani kisha vitendeke kama vipengele vya relative.

---

Vipengele vya fixed vitawekwa kulingana na nafasi yake ya kawaida wakati vipengele vya sticky vitashikamana tu na sehemu fulani kisha vitendeke kama vipengele vya relative.

#### --answer--

Vipengele vya fixed vitabaki katika nafasi ile ile kwenye skrini wakati vipengele vya sticky vitashikamana tu na sehemu fulani kisha vitendeke kama vipengele vya relative.

### --question--

#### --text--

Changamoto gani `clearfix` ilitatua wakati wa kufanya kazi na floats?

#### --distractors--

`clearfix` ilisaidia kutatua tatizo la vipengele vilivyopangwa kuruka kuondolewa kutoka kwenye mtiririko wa kawaida wa hati na kuwekwa katika nafasi ya kudumu kwenye ukurasa.

---

`clearfix` ilisaidia kutatua tatizo la vipengele vilivyopangwa kuruka kutokuwa vinayojibadilisha kulingana na kifaa katika mpangilio wa simu na kompyuta kibao.

---

`clearfix` ilisaidia kutatua tatizo la vipengele vilivyopangwa kuruka kupotea kutoka kwenye ukurasa.

#### --answer--

`clearfix` ilisaidia kutatua tatizo la kuungana na kushuka kwa vipengele vilivyopangwa kuruka wakati vipengele vingi vilivyopangwa kuruka vilipangwa kando kando.

### --question--

#### --text--

Ni mfano gani sahihi wa kutumia `clearfix` hack?

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

Ulinganifu wa static ni nini?

#### --distractors--

Huu hutumika kuondoa kipengele kutoka kwenye mtiririko wake wa kawaida kwenye ukurasa na kuuweka moja kwa moja upande wa juu wa kulia wa ukurasa wa mtandao.

---

Huu hukuruhusu kuondoa kipengele kutoka kwenye mtiririko wa kawaida wa hati, na kufanya kitendeke huru kutoka kwa vipengele vingine.

---

Huu huruhusu kipengele kushikamana na nafasi maalum tu wakati unaposogeza ukurasa kupita sehemu fulani.

#### --answer--

Huu ni mtiririko wa kawaida wa hati. Vipengele huwekwa kutoka juu hadi chini na kushoto hadi kulia mfululizo.

### --question--

#### --text--

Ni mfano gani kati ya zifuatazo unaoweka navbar juu ya ukurasa kwa kutumia ulinganifu wa fixed?

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

Ni ipi kati ya zifuatazo ni thamani halali ya sifa ya `z-index`?

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

Ni ipi kati ya zifuatazo ni thamani ya msingi ya sifa ya `position`?

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

Ni thamani gani ya `position` inayo kuruhusu kurekebisha nafasi ya kipengele kwa `top` na `left` huku ikibaki ndani ya mtiririko wa kawaida wa hati?

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

Je, kipengele chenye `position: sticky;` hujitendeaje mwanzoni?

#### --distractors--

Hutendeka kama kipengele cha `fixed` hadi nafasi ya kusogeza ukurasa itakapofikiwa.

---

Hutolewa kila mara kutoka kwenye mtiririko wa kawaida wa hati.

---

Hutendeka kama kipengele cha `absolute` ndani ya mzazi wake.

#### --answer--

Hutendeka kama kipengele cha `relative` hadi nafasi maalum ya kusogeza ukurasa itakapofikiwa.

### --question--

#### --text--

Ni mfano gani kati ya zifuatazo unaonyesha matumizi sahihi na yenye ufanisi ya sifa ya `z-index` kufanya `.box-two` ionekane juu ya `.box-one`?

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

Sifa ya `z-index` hutumika kwa nini katika CSS?

#### --distractors--

Huweka kiwango cha kuongezwa ukurasa.

---

Hudhibiti ulinganifu wa usawa wa vipengele ndani ya chombo cha kubadilika.

---

Hufafanua nafasi kati ya maudhui ya kipengele na mpaka wake.

#### --answer--

Hudhibiti mpangilio wa wima wa vipengele vyenye nafasi maalum vinavyokutana.

### --question--

#### --text--

Unapotumia `top: 10%;` kwa kipengele chenye `position: fixed;`, `10%` huhesabiwa kulingana na nini?

#### --distractors--

Urefu wa kipengele chenyewe.

---

Urefu wa kontena la mzazi wake.

---

Upana wa eneo la kuona.

#### --answer--

Urefu wa eneo la kuona.

### --question--

#### --text--

Ni mfano gani wa msimbo unaotumia sifa ya `z-index` kuweka kipengele cha juu ya maudhui mengine?

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

Ni sifa gani ya CSS inayotumika kudhibiti kama kipengele kinapaswa kuhamishwa chini ya vipengele vilivyopangwa kuruka?

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

Je, kipengele chenye `position: relative;` na `bottom: 25px;` kitawekwa wapi?

#### --distractors--

Kitaelea 25px chini kutoka kwenye nafasi yake ya kawaida.

---

Kitaelea 25px kulia kutoka kwenye nafasi yake ya kawaida.

---

Kitawekwa 25px kutoka chini ya eneo la kuona.

#### --answer--

Kitaelea 25px juu kutoka kwenye nafasi yake ya kawaida.

### --question--

#### --text--

Sifa ya `z-index` itahusu vipengele vyenye sifa gani ya CSS tu?

#### --distractors--

Thamani ya `float` tofauti na `none`.

---

Thamani ya `display` ya `inline-block`.

---

Seti ya `background-color`.

#### --answer--

Thamani ya `position` tofauti na `static`.

### --question--

#### --text--

Matokeo gani yatakuwa ya kutumia `float: right;` kwa nembo katika kichwa?

#### --distractors--

Nembo italingana kulia, lakini itabaki katika mtiririko wa kawaida wa hati, kuzuia maudhui mengine kuzunguka.

---

Nembo itatolewa kutoka kwenye mtiririko na kuwekwa upande wa kulia wa eneo lote la kivinjari, si kontena lake.

---

Nembo itakuwa kipengele cha kiwango cha block kinachochukua upana wote wa kichwa, na kusukuma vipengele vingine chini yake.

#### --answer--

Nembo itatolewa kutoka kwenye mtiririko wake wa kawaida na kuwekwa upande wa kulia wa kontena lake, na maudhui mengine kuzunguka karibu nayo.

### --question--

#### --text--

Ni msimbo gani wa CSS utaweka kipengele kikiwa kimefungwa juu ya eneo la kuona mara tu kinaposogezwa?

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

Lengo maalum la `clear: both;` katika CSS ni lipi?

#### --distractors--

Inafuta sifa ya `float` kwenye kipengele chenyewe, kurudisha kwenye mtiririko wa kawaida wa hati.

---

Inafuta sifa zote za `clear` zilizopokelewa kutoka kwa mzazi, kurudisha tabia ya kawaida ya kuruka.

---

Inafuta tu vipengele vilivyopangwa kuruka upande wa kulia, kuruhusu vipengele vilivyopangwa kuruka upande wa kushoto kubaki kama vilivyo.

#### --answer--

Inahakikisha kipengele kinawekwa chini ya vipengele vyovyote vilivyopangwa kuruka vinavyoonekana kabla yake upande wa kushoto na kulia.

### --question--

#### --text--

Kwa msimbo ufuatao, `.child` itawekwa wapi?

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

Itawekwa 10px kutoka juu ya kipengele cha `.parent`, kwani ulinganifu wa `absolute` daima ni kulingana na mzazi wa moja kwa moja.

---

Itabaki katika nafasi yake ya kawaida ya static kwa sababu thamani ya `absolute` si halali bila sifa ya `z-index`.

---

Itawekwa 10px kutoka juu ya dirisha la kivinjari, ikibaki imesimama mahali hata wakati mtumizi anaposogeza ukurasa.

#### --answer--

Itawekwa 10px kutoka juu ya kontena la awali la kuingiza, kama vile `<body>`, kwa sababu mzazi wake hana nafasi maalum.

### --question--

#### --text--

Mabadiliko gani yatakuwa na msimbo ufuatao kwa kipengele cha `.box`?

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

Kipengele kitabaki katika mtiririko wake wa kawaida lakini kitawekwa pembeni kwa 50px kutoka juu na kushoto, kusukuma vipengele vingine mbali.

---

Kipengele kitawekwa kwa kudumu kwenye eneo la kuona na kitabaki 50px kutoka juu na 50px kutoka kushoto, hata wakati ukurasa unasogezwa.

---

Kipengele kitawekwa kulingana na sehemu yake ya kuanzia, kikisogea 50px chini na 50px kulia bila kuondoka kwenye mtiririko wa hati.

#### --answer--

Kipengele kitaondolewa kutoka kwenye mtiririko wa kawaida na kuwekwa 50px kutoka juu na 50px kutoka kushoto kwa mzazi wake mwenye nafasi maalum wa karibu zaidi.

### --question--

#### --text--

Ni ipi kati ya thamani za `position` inayoondoa kipengele kabisa kutoka kwenye mtiririko wa kawaida wa hati?

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

Kwa vipengele vya `.parent` na `.child`, ni msimbo gani wa CSS utaweka `.child` kwa usahihi 20px kutoka kona ya juu kushoto ya kipengele cha `.parent`?

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

Tofauti kati ya ulinganifu wa `static` na `relative` ni ipi?

#### --distractors--

Ulinganifu wa `static` huondoa kipengele kutoka kwenye mtiririko wa hati, wakati ulinganifu wa `relative` huuweka ndani ya mtiririko.

---

Kipengele chenye `position: static;` kinaweza kuhamishwa kwa vigezo vya `top` na `left`, wakati `position: relative;` haiwezi.

---

Ulinganifu wa `static` ni kwa vipengele vya kiwango cha block, wakati ulinganifu wa `relative` ni kwa vipengele vya ndani ya mstari tu.

#### --answer--

Vyote huweka kipengele ndani ya mtiririko wa kawaida wa hati, lakini `relative` huruhusu kipengele kuhamishwa mbali na nafasi yake ya awali.

### --question--

#### --text--

Ni msimbo gani wa CSS unaofanya picha kuruka upande wa kushoto, kuruhusu maudhui mengine kuzunguka karibu nayo?

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

Tofauti kati ya ulinganifu wa `absolute` na `fixed` ni ipi?

#### --distractors--

Ulinganifu wa `absolute` ni kulingana na eneo la kuona, wakati ulinganifu wa `fixed` ni kulingana na mzazi mwenye nafasi maalum.

---

Ulinganifu wa `absolute` huweka kipengele ndani ya mtiririko wa kawaida wa hati, wakati ulinganifu wa `fixed` huondoa kutoka kwenye mtiririko.

---

Vyote vimewekwa kulingana na eneo la kuona, lakini vipengele vya `fixed` vitasogeza pamoja na ukurasa wakati vipengele vya `absolute` havitasogeza.

#### --answer--

Ulinganifu wa `absolute` ni kulingana na mzazi mwenye nafasi maalum wa karibu, wakati ulinganifu wa `fixed` ni kulingana na eneo la kuona la kivinjari.

### --question--

#### --text--

Ni ipi kati ya thamani za `position` huweka kipengele katika mtiririko wa kawaida wa hati na kuzuia vigezo kama `top` na `left` kuathiri?

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`
