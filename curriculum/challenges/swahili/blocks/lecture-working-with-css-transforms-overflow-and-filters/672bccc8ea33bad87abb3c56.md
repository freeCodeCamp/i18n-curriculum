---
id: 672bccc8ea33bad87abb3c56
title: Nini Tofauti Kati ya content-box na border-box?
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

Sifa ya `box-sizing` inaweza kuwekwa kuwa `content-box` au `border-box` kudhibiti jinsi upana na urefu wa vipengele vinavyopimwa.

Sifa hii inaweza kuwekwa kwenye kichaguzi cha ulimwengu (`*`) ili itumike kwa vipengele vyote katika hati:

```css
* {
  box-sizing: border-box;
}
```

Thamani ya sifa ya `box-sizing` ni `content-box` kwa chaguo-msingi, lakini unaweza kuchagua `border-box` ikiwa unahitaji. Tutachunguza `content-box` kwanza kisha tutaingia kwenye `border-box`.

Ili kuelewa jinsi mifano inavyofanya kazi, unahitaji kufahamu dhana kuu nne kutoka kwa mfano wa boksi wa CSS. Hebu tukague haraka.

- Eneo la maudhui ni nafasi inayochukuliwa na maudhui ya kipengele.
- Nafasi ya ndani ni nafasi kati ya eneo la maudhui na mpaka.
- Mpaka ni mstari unaozunguka eneo la maudhui na nafasi ya ndani.
- Ukingo ni nafasi nje ya mpaka inayotenganisha kipengele na vipengele vingine.

Katika mfano wa `content-box`, upana na urefu unaoweka kwa kipengele huamua vipimo vya eneo la maudhui, lakini havijumuishi nafasi ya ndani, mpaka, au ukingo. Tumia `content-box` unapohitaji udhibiti sahihi wa eneo la maudhui. Unapoweka `width` na `height`, unakuwa umeweka ukubwa wa maudhui yenyewe tu.

Ili kupata upana wa jumla wa kipengele, utahitaji kuongeza nafasi ya ndani ya kushoto na kulia, na mipaka ya kushoto na kulia. Vivyo hivyo, urefu wa jumla wa kipengele unaweza kupatikana kwa kuongeza urefu wa maudhui, nafasi ya ndani ya juu na chini, na mipaka ya juu na chini.

Kwa mfano, hapa tuna kichaguzi cha aina ya CSS kwa vipengele vyote vya `div`.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

Katika kesi hii, ikiwa `content-box` itatumika eneo la maudhui litakuwa 300px kwa 200px. Ukubwa wa jumla unaonyeshwa unajumuisha nafasi ya ndani na mipaka — kwa mfano, upana wa jumla = 300px (maudhui) + 40px (nafasi ya ndani) + 8px (mipaka) = 348px; urefu wa jumla unahesabiwa kwa njia ile ile.

Nzuri! Sasa hebu tuchunguze `border-box`. Ni tofauti kwa sababu upana na urefu unaoweka unajumuisha maudhui ya kipengele, nafasi ya ndani, na mpaka (lakini si ukingo wake). Tumia `border-box` unapotaka ukubwa wa jumla wa kipengele ubaki thabiti hata kama nafasi ya ndani au mipaka itabadilika — hii mara nyingi husaidia katika mipangilio inayojibadilisha kulingana na kifaa.

Kwa `border-box`, nafasi ya ndani na mipaka zinajumuishwa ndani ya ukubwa uliobainishwa wa kipengele. `width` na `height` unazoweka zinakuwa vipimo vya jumla vya kipengele: maudhui + nafasi ya ndani + mpaka; kingo hazijumuishwi.

Katika mfano ufuatao, kuna vipengele viwili vya `div` vyenye vipimo sawa lakini thamani tofauti za `box-sizing`. Angalia jinsi hii inavyosababisha ukubwa tofauti wa jumla unapoangaliwa kwenye kivinjari:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

Unaweza kuona kuwa vyote vina `width`, `height`, `padding`, `border` na `margin` sawa. Tofauti pekee ni katika rangi na thamani ya sifa ya `box-sizing`. Tofauti hii ndogo ina athari muhimu sana kwa vipimo vya mwisho.

Kuchagua kati ya `content-box` na `border-box` kunategemea mahitaji maalum ya mradi wako. Wakati `border-box` inazidi kupendwa kwa urahisi na kubadilika kwake, kuelewa mifano yote miwili ni muhimu kwa kutekeleza mipangilio madhubuti ya CSS.

# --questions--

## --text--

Ni ipi kati ya zifuatazo ndiyo thamani ya chaguo-msingi ya sifa ya `box-sizing` katika vivinjari vingi?

## --answers--

`content-box`

---

`border-box`

### --feedback--

Fikiria tabia ya chaguo-msingi kwa ukubwa wa vipengele.

---

`padding-box`

### --feedback--

Fikiria tabia ya chaguo-msingi kwa ukubwa wa vipengele.

---

`margin-box`

### --feedback--

Fikiria tabia ya chaguo-msingi kwa ukubwa wa vipengele.

## --video-solution--

1

## --text--

Nini faida kuu ya kutumia `border-box` kwa kuunda mipangilio inayojibadilisha kulingana na kifaa?

## --answers--

Inafanya mahesabu kuwa magumu zaidi.

### --feedback--

Fikiria jinsi mfano wa `border-box` unavyoshughulikia `padding` na `border` ndani ya `width` na `height` zilizobainishwa.

---

Inaruhusu udhibiti sahihi zaidi wa vipimo vya kipengele.

### --feedback--

Fikiria jinsi mfano wa `border-box` unavyoshughulikia `padding` na `border` ndani ya `width` na `height` zilizobainishwa.

---

Inahakikisha vipengele vinadumisha vipimo vilivyobainishwa bila kujali mabadiliko ya `padding` au `border`.

---

Inaboresha ulinganifu wa kivinjari.

### --feedback--

Fikiria jinsi mfano wa `border-box` unavyoshughulikia `padding` na `border` ndani ya `width` na `height` zilizobainishwa.

## --video-solution--

3

## --text--

Katika mfano wa `content-box`, `width` iliyobainishwa ya kipengele inawakilisha nini?

## --answers--

Ukubwa wa jumla wa `width` wa kipengele, ikijumuisha `padding`, `border`, na `margin`.

### --feedback--

Fikiria uhusiano kati ya eneo la maudhui na vipimo vya jumla vya kipengele katika mfano wa `content-box`.

---

Ukubwa wa `width` wa eneo la maudhui tu.

---

Ukubwa wa `width` wa `border`.

### --feedback--

Fikiria uhusiano kati ya eneo la maudhui na vipimo vya jumla vya kipengele katika mfano wa `content-box`.

---

Ukubwa wa `width` wa `padding`.

### --feedback--

Fikiria uhusiano kati ya eneo la maudhui na vipimo vya jumla vya kipengele katika mfano wa `content-box`.

## --video-solution--

2
