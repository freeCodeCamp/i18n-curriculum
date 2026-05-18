---
id: 672bccae6e556cd81cef6af2
title: "Je, Margin Collapsing ni Nini, na Inafanya Kazi Vipi?"
challengeType: 19
dashedName: what-is-margin-collapsing
---

# --interactive--

Margin collapsing ni dhana msingi katika CSS ambayo mara nyingi huwatatiza wanaoanza katika ukuzaji wa mtandao.

Tabia hii hutokea wakati kingo za wima za vipengele vinavyopakana zinaposhirikiana, na kusababisha kando moja tu sawa na kubwa zaidi kati ya hizo mbili.

Kuelewa margin collapsing ni muhimu kwa udhibiti sahihi wa nafasi na mpangilio katika muundo wa mtandao. Hivyo, tuangalie jinsi margin collapsing inavyofanya kazi na kuchunguza baadhi ya hali za kawaida ambapo hutokea.

Katika CSS, wakati kingo mbili za wima zinapokutana, zitagongana, hii inamaanisha badala ya kujumlishwa, kando kubwa ndilo linalotawala na kuamua nafasi kati ya vipengele. Tabia hii inahusu tu kingo za wima (juu na chini) na si za usawa (kushoto na kulia). Hapa kuna mfano wa kuelezea dhana hii:

:::interactive_editor

```html
<style>
  .box1 {
    margin-bottom: 20px;
    background-color: lightblue;
  }
  .box2 {
    margin-top: 30px;
    background-color: lightgreen;
  }
</style>

<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

:::

Katika mfano huu, unaweza kutegemea nafasi jumla kati ya `.box1` na `.box2` iwe pikseli 50 (pikseli 20 pamoja na 30). Hata hivyo, kutokana na margin collapsing nafasi halisi itakuwa pikseli 30, ambayo ni kando kubwa zaidi kati ya hizo mbili.

Kama tulivyoona katika mfano uliopita, kingo za vipengele vinavyopakana zitagongana. Hii ni kesi rahisi kabisa ya margin collapsing. Tuchunguze zaidi hali ambapo margin collapsing inaweza kutokea.

Kingo pia zinaweza kugongana kati ya kipengele mzazi na mtoto wake wa kwanza au wa mwisho. Ikiwa hakuna mpaka, nafasi ya ndani, maudhui ndani ya mstari, au utulivu wa kuwatenganisha kingo za mzazi na mtoto, zitagongana.

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

Katika kesi hii, unaweza kutegemea mtoto awe na nafasi ya pikseli 70 kutoka juu (pikseli 40 pamoja na 30). Hata hivyo, kingo zinagongana na kando kubwa ya pikseli 40 ndilo linalotumika.

Kama kipengele hakina maudhui, nafasi ya ndani, au mpaka, kingo zake za juu na chini zinaweza kugongana na kuwa kando moja.

:::interactive_editor

```html
<style>
  .empty-block {
    margin-top: 20px;
    margin-bottom: 10px;
    height: 0;
  }
  .next-block {
    background-color: lightgray;
  }
</style>

<div class="empty-block"></div>
<div class="next-block">Next block</div>
```

:::

Katika mfano huu, kingo za juu na chini za `empty-block` zinagongana na kuwa kando moja ya pikseli 20, kubwa zaidi kati ya hizo mbili.

Hapa kuna mfano wa kuzuia mgongano kwa kutumia nafasi ya ndani:

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    padding-top: 1px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

Katika kesi hii, nafasi ya ndani ya pikseli moja kwenye mzazi inazuia mgongano wa kingo na kusababisha nafasi jumla ya pikseli 71 kutoka juu ya mzazi hadi juu ya maudhui ya mtoto.

Kuelewa margin collapsing ni muhimu kwa udhibiti sahihi wa mpangilio na nafasi katika CSS. Ingawa inaweza kusababisha matokeo yasiyotegemewa wakati mwingine, ni kipengele kilichoundwa kuleta nafasi nzuri na thabiti zaidi katika hati. Kwa kujua lini margin collapsing hutokea na jinsi ya kuizuia inapohitajika, unaweza kuunda mipangilio inayotarajiwa na rahisi kudumisha katika miundo yako ya mtandao.

# --questions--

## --text--

Mgongano wa kingo hutokea katika mwelekeo gani?

## --answers--

Kingo za usawa tu.

### --feedback--

Fikiria ni kingo gani (juu, chini, kushoto, kulia) zinazoathiriwa na tabia hii.

---

Kingo za wima tu.

---

Kingo za usawa na wima zote.

### --feedback--

Fikiria ni kingo gani (juu, chini, kushoto, kulia) zinazoathiriwa na tabia hii.

---

Kingo za mwinuko.

### --feedback--

Fikiria ni kingo gani (juu, chini, kushoto, kulia) zinazoathiriwa na tabia hii.

## --video-solution--

2

## --text--

Nini hutokea wakati vipengele viwili vinavyopakana vina thamani tofauti za kingo?

## --answers--

Kingo hujumlishwa.

### --feedback--

Fikiria ni kando gani "inayoshinda" wakati mgongano unapotokea.

---

Kando ndogo hutumika.

### --feedback--

Fikiria ni kando gani "inayoshinda" wakati mgongano unapotokea.

---

Kando kubwa hutumika.

---

Kando ya wastani ya kingo zote mbili hutumika.

### --feedback--

Fikiria ni kando gani "inayoshinda" wakati mgongano unapotokea.

## --video-solution--

3

## --text--

Ni ipi kati ya zifuatazo HAIZUZI kuzuia mgongano wa kingo kati ya mzazi na mtoto wake wa kwanza?

## --answers--

Kuongeza `border` kwa mzazi.

### --feedback--

Fikiria ni vigezo gani vinavyounda utengano kati ya kingo za mzazi na mtoto.

---

Kuweka `padding-top: 1px;` kwa mzazi.

### --feedback--

Fikiria ni vigezo gani vinavyounda utengano kati ya kingo za mzazi na mtoto.

---

Kutumia `display: inline-block;` kwa mtoto.

### --feedback--

Fikiria ni vigezo gani vinavyounda utengano kati ya kingo za mzazi na mtoto.

---

Kuweka `margin-top: 0;` kwa mtoto.

## --video-solution--

4
