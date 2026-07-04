---
id: 66ed8fedf45ce3ece4053eb3
title: Jaribio fupi la CSS Grid
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

Ili kupita jaribio fupi, lazima ujibu kwa usahihi angalau maswali 18 kati ya 20 yaliyo hapa chini.

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS Grid ni nini?

#### --distractors--

Njia inayotumika kuonyesha majedwali kwenye mtandao.

---

Njia inayotumika kuweka picha kwa mpangilio wa tiles.

---

Njia ya kuonyesha mipaka kuzunguka vipengele vya HTML.

#### --answer--

Mpangilio wa pande mbili kwa hati za HTML.

### --question--

#### --text--

Ni ipi kati ya zifuatazo njia sahihi ya kuunda chombo cha gridi?

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

Sifa ya `grid-template-columns` hufanya nini?

#### --distractors--

Huweka safu mbili na mistari mitatu kwa chombo cha gridi.

---

Huweka safu zote za mpangilio wa gridi kuwa na urefu thabiti.

---

Huunda chombo cha mpangilio wa gridi wa safu mbili.

#### --answer--

Huweka idadi ya safu katika mpangilio wa gridi.

### --question--

#### --text--

Sifa ya `grid-template-rows` hufanya nini?

#### --distractors--

Hubainisha ukubwa na mahali pa kipande cha gridi katika mpangilio wa gridi.

---

Huunda kiolezo cha kuunda mistari mipya ya gridi.

---

Hubainisha ukubwa wa mstari wa chaguo-msingi katika chombo cha gridi.

#### --answer--

Hubainisha idadi na urefu wa kila mstari katika mpangilio wa gridi.

### --question--

#### --text--

Kitendakazi cha `minmax()` hufanya nini?

#### --distractors--

Hubadilisha kati ya thamani ya kwanza na ya pili, kulingana na nafasi iliyopo.

---

Hurudisha wastani wa ingizo mbili.

---

Huweka ukubwa wa chini kabisa wa kipengele kwa kivinjari kinachofanya kazi kwa hali ya skrini kamili.

#### --answer--

Huweka ukubwa wa chini na juu kwa njia ya mstari.

### --question--

#### --text--

Ni kifupi gani cha sifa za `column-gap` na `row-gap`?

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-space`

#### --answer--

`gap`

### --question--

#### --text--

Tofauti gani kati ya gridi ya wazi na gridi ya wazi kabisa?

#### --distractors--

Gridi za wazi hutumia sifa ya `grid-template-columns` wakati gridi za wazi kabisa hutumia sifa ya `grid-template-rows`.

---

Gridi za wazi kabisa hutumia sifa ya `grid-template-columns` wakati gridi za wazi hutumia sifa ya `grid-template-rows`.

---

Gridi za wazi hutumia sifa za `grid-template-columns` au `grid-template-rows` kuunda safu wakati mistari na safu huundwa moja kwa moja katika gridi za wazi kabisa.

#### --answer--

Gridi za wazi kabisa hutumia sifa za `grid-template-columns` au `grid-template-rows` kuunda safu wakati mistari na safu huundwa moja kwa moja katika gridi za wazi.

### --question--

#### --text--

Ni ipi kati ya vitengo ifuatayo inawakilisha sehemu ya nafasi ndani ya chombo cha gridi?

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

Mistari ya gridi ni nini?

#### --distractors--

Kifupi cha mistari na safu.

---

Mipaka ya kipengele cha gridi.

---

Mistari ambayo safu na mistari ya gridi huundwa.

#### --answer--

Mistari ambayo kila kipande cha gridi huanza na kumalizika.

### --question--

#### --text--

Sifa ya `grid-column` hufanya nini?

#### --distractors--

Huongeza kipengele kipya cha gridi kama mtoto wa kipengele kinachotumika.

---

Hulinganisha maandishi ndani ya kipande cha gridi kwa wima.

---

Huweka safu mbili kwa chombo cha gridi.

#### --answer--

Huambia kipande cha gridi mstari wa gridi ambamo kinapaswa kuanza na kumalizika.

### --question--

#### --text--

Unawezaje kuunda safu nne za upana sawa?

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

Sifa ya `grid-template-areas` hufanya nini?

#### --distractors--

Inatumika kubainisha mahali kipande kinaanza kwenye mstari katika chombo cha gridi.

---

Inatumika kuunda mapengo kati ya njia katika chombo.

---

Inatumika kurudia sehemu katika orodha ya njia.

#### --answer--

Inatumika kutoa jina kwa vipengele unavyopanga kwenye gridi.

### --question--

#### --text--

Sifa ya `grid-auto-flow` hufanya nini?

#### --distractors--

Hudhibiti mpangilio wa vipengele vya gridi vinavyoonyeshwa.

---

Hubadilisha nafasi kati ya vipengele vya gridi.

---

Hurekebisha kipengele kiendane na gridi moja kwa moja.

#### --answer--

Hudhibiti jinsi vipengele vinavyojiingiza moja kwa moja kwenye gridi.

### --question--

#### --text--

Ni ipi njia sahihi ya kutumia sifa ya `grid-template-areas`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

Ni ipi njia sahihi ya kufanya kazi na sifa ya `grid-auto-flow`?

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

Ni ipi kati ya sifa zifuatazo si sifa halali ya gridi?

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

Ni sifa gani kati ya hizi inaweza kutumika kuweka vipengele katikati ndani ya kipengele cha gridi?

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

Ni thamani gani kati ya zifuatazo ni sahihi kutumia na sifa ya `grid-auto-columns`?

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

Mistari ya gridi ni nini?

#### --distractors--

Kifupi cha mistari na safu.

---

Mistari ambayo unaweza kuhuisha harakati za vipengele vya gridi.

---

Mistari ambayo kila kipande cha gridi huanza na kumalizika.

#### --answer--

Nafasi kati ya mistari miwili ya gridi inayopakana.

### --question--

#### --text--

Ni ipi njia sahihi ya kutumia kitendakazi cha `minmax()`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

Unawezaje kuweka kipande cha gridi ndani ya mpangilio uliofafanuliwa na `grid-template-areas`?

#### --distractors--

Kwa kubainisha moja kwa moja ukubwa na mahali pa kipande ndani ya gridi kwa kutumia `grid-template-rows` na `grid-template-columns`.

---

Kwa kutumia sifa ya `grid-area` na kubainisha nafasi za kuanzia na kumalizika kwa safu na mstari.

---

Kwa kuweka `grid-area` na kuratibu za pikseli waziwazi.

#### --answer--

Kwa kuweka eneo lililopewa jina kwenye sifa ya `grid-area` ya kipande.

### --question--

#### --text--

Sifa ya `grid-auto-rows` hudhibiti nini?

#### --distractors--

Urefu wa mistari iliyobainishwa waziwazi.

---

Upana wa juu kabisa wa safu za gridi.

---

Mapengo kati ya mistari.

#### --answer--

Ukubwa wa mistari iliyoundwa kwa njia isiyo wazi.

### --question--

#### --text--

Ni sifa gani ungetumia kufanya kipande cha gridi kizunguke mistari mingi?

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

Nini huainisha gridi ya wazi kabisa?

#### --distractors--

Mistari inayoundwa moja kwa moja ili kufaa maudhui.

---

Mistari yaliyobainishwa na kitengo cha `fr`.

---

Mistari yaliyoongezwa kwa `grid-auto-flow`.

#### --answer--

Mistari iliyowekwa waziwazi na `grid-template-columns` au `grid-template-rows`.

### --question--

#### --text--

Ni thamani gani ya `grid-auto-flow` itafanya vipengele vipya kujaza safu kwanza?

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

Madhumuni ya `grid-template-areas` ni yapi?

#### --distractors--

Kuunda mistari isiyo wazi moja kwa moja.

---

Kubadilisha kitengo cha `fr`.

---

Kuweka thamani za `z-index`.

#### --answer--

Kuwa ramani ya kuona ya vipengele kwenye maeneo ya gridi yaliyopewa majina.

### --question--

#### --text--

Unawezaje kufanya kipande cha gridi kuanza kwenye mstari wa safu wa 2 na kumalizika kwenye mstari wa safu wa 4?

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

Athari ya `grid-template-columns: 1fr 2fr 1fr` ni ipi?

#### --distractors--

Huunda safu tatu za upana sawa.

---

Hufanya safu ya katikati kuwa mara tatu pana zaidi kuliko zingine.

---

Hulazimisha safu zote kuwa na upana wa `1fr` tu.

#### --answer--

Huunda safu tatu ambapo safu ya katikati ni mara mbili pana kuliko zile za pembeni.

### --question--

#### --text--

Unawezaje kuunda gridi yenye safu 3 za upana sawa na pengo la `20px` kati yao?

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

`repeat(3, minmax(100px, 1fr))` huunda nini?

#### --distractors--

Safu tatu ambazo haziwezi kupungua chini ya `100px`.

---

Safu tatu za `100px` thabiti.

---

Mistari mitatu yenye urefu wa juu kabisa wa `1fr`.

#### --answer--

Safu tatu zinazokua kwa uwiano lakini hazitapungua chini ya `100px`.

### --question--

#### --text--

Ni taarifa gani kuhusu gridi zisizo wazi ni kweli?

#### --distractors--

Gridi zisizo wazi hazizingatii sifa ya `gap`.

---

Mistari isiyo wazi lazima ibainishwe na `grid-template-areas`.

---

Mistari isiyo wazi inaweza kuundwa tu kwa kutumia sifa ya `grid-auto-flow`.

#### --answer--

Mistari isiyo wazi huundwa wakati maudhui hayafai mistari iliyobainishwa wazi.

### --question--

#### --text--

Sifa ya `place-items` hufanya nini katika CSS Grid?

#### --distractors--

Huweka ukubwa wa vipengele vya gridi moja kwa moja kulingana na nafasi iliyopo.

---

Hudhibiti maelezo ya safu na mistari ya kiolezo cha gridi.

---

Hurekebisha mpangilio wa vipengele vya gridi ndani ya kontena.

#### --answer--

Ni kifupi cha kuoanisha vipengele vya gridi katika mwelekeo wa mstari na ndani ya mstari.

### --question--

#### --text--

CSS hii inafanikaje?

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

Huunda safu za `150px` thabiti zinazozidi ukubwa wa kontena.

---

Huunda safu ambazo ni za upana wa `1fr` tu bila kujali maudhui.

---

Huunda safu moja kwa kila `150px` ya upana uliopo.

#### --answer--

Huunda safu zinazobadilika ambazo angalau ni `150px` na hupungua wakati nafasi ni ndogo.

### --question--

#### --text--

Unawezaje kuunda mipangilio ya gridi isiyo sawa?

#### --distractors--

Kwa kutumia vitengo vya `fr` pekee.

---

Kwa kuchanganya vitengo vya urefu tofauti katika `grid-template-columns`.

---

Kwa kuweka `grid-asymmetric: true`.

#### --answer--

Kwa kubainisha ukubwa tofauti kwa kila mstari.

### --question--

#### --text--

`grid-column-start: 2` hufanya nini kwa kipande cha gridi?

#### --distractors--

Hufanya kipande kizunguke safu 2.

---

Hukiondoa kwa pikseli 2.

---

Hukiweka kuanzia mstari wa pili wa gridi wima.

#### --answer--

Hufanya kipande kuanza kwenye mstari wa safu wa pili.

### --question--

#### --text--

Ni sifa gani ungetumia kudhibiti tabia ya kuzidi katika mistari ya gridi?

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

Matokeo ya msimbo ufuatao yatakuwa nini?

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

Kontena litakuwa na safu tatu za upana sawa, na mistari miwili yenye urefu wa `150px` kila moja.

---

Kontena litakuwa na safu tatu, zote zikiwa na upana wa `100px`, na mistari miwili yenye urefu wa `150px`.

---

Kontena litakuwa na mistari miwili, kila moja ikiwa na urefu wa `1fr`.

#### --answer--

Kontena litakuwa na safu tatu: 100px, `1fr` na `2fr` upana na mistari miwili: moja auto na moja yenye urefu wa `150px`.

### --question--

#### --text--

Unawezaje kufanya kipande cha gridi kizunguke mistari yote iliyopo?

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

Ni sifa gani hudhibiti ulinganifu wa vipengele vya gridi kando ya mwelekeo wa mstari?

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

Unawezaje kuhakikisha kipande cha gridi kinabaki kwenye safu ya kwanza bila kujali mabadiliko ya gridi?

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
