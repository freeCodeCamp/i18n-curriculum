---
id: 672bbe9171a5cca90f2edeea
title: Ni mifano gani ya darasa la bandia la kitendo cha mtumizi kwa kipengele?
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

Maoni ya mtumizi ni kipengele muhimu katika muundo wa mtandao. Kwa mfano, ni muhimu kwa watumizi kupokea dalili za kuona wanaposhirikiana na vipengele kwenye tovuti, kama vile kuvinjari kitufe au kubofya kiungo. Maoni haya husaidia watumizi kuelewa hali ya vipengele vinavyoshirikiana, kama kuonyesha kama kiungo kimebofyanwa au la.

Darasa la bandia la kitendo cha mtumizi katika CSS ni maneno maalum yanayokuwezesha kutoa maoni haya bila haja ya JavaScript au lugha nyingine za programu.

Darasa hizi la bandia ni pamoja na `:hover`, `:active`, `:focus`, na `:visited`, miongoni mwa zingine. Zinakuwezesha kubadilisha muonekano wa vipengele kulingana na mwingiliano wa mtumizi, kuboresha uzoefu wa mtumizi kwa ujumla.

Tuchunguze baadhi ya darasa la bandia la kitendo cha mtumizi tulizonazo na tuone jinsi zinavyofanya kazi.

Darasa la bandia la `:active` linaweka mitindo wakati kipengele kinapowashwa na mtumizi. Kwa mfano, mtumizi anapobofya kitufe au kiungo, hutoa maoni ya kuona mara moja, kuonyesha watumizi kuwa vitendo vyao vinatambuliwa.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>
```

```css
a:active {
  color: crimson;
}
```

:::

Darasa la bandia la `:hover` linaanzishwa mtumizi anapovinjari kipengele kwa panya au kifaa kingine cha kuonyesha. Wasanidi programu mara nyingi hulitumia kuunda maoni ya kuona kwa vitufe, viungo, au kipengele chochote kinachotakiwa kujibu makini ya mtumizi. Hapa kuna kitufe ambacho mtumizi atavinjari kabla ya kubofya:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>
```

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

:::

Darasa la bandia la `:focus` linaweka mitindo wakati kipengele kinapopata makini, kawaida kupitia urambazaji wa kibodi au mtumizi anapobofya sehemu ya ingizo ya fomu. Hii si kwa ajili ya maoni tu bali pia ni muhimu kwa Ufikikaji. Inahakikisha watumizi wanaotegemea sana kibodi wanaweza kutambua kwa urahisi kipengele wanachoshirikiana nacho.

Hapa kuna mfano wa sehemu ya ingizo inayopata makini inapobofya au kupelekwa kupitia kibodi:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
```

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

:::

Darasa la bandia la `:visited` linawalenga viungo ambavyo mtumizi amevitembelea. Hii inaweza kusaidia watumizi kutofautisha kati ya kurasa walizotembelea na zile ambazo bado hawajatembelea. Hapa kuna mfano wa kubadilisha rangi ya maandishi ya nanga kuwa cyan wakati kiungo kimebofyanwa:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>
```

```css
a:visited {
  color: cyan;
}
```

:::

Darasa la bandia la `:checked` katika CSS linakuwezesha kuweka mitindo kwa vipengele vya fomu kama kisanduku cha kuchagua na kitufe cha radio wakati vimechaguliwa (vimekaguliwa). Darasa hili la bandia ni muhimu kwa kubinafsisha muonekano wa vipengele hivi ili kuboresha uzoefu wa mtumizi, ingawa vivinjari hutoa mitindo ya msingi kwao.

Hapa kuna mfano wa kisanduku cha kuchagua kukubaliana na masharti kwenye tovuti.

**KUMBUKA**: Baadhi ya CSS katika mfano huu hutumia sifa ambazo bado hazijafundishwa. Hii ni kwa ajili ya kukupa wazo la jinsi ya kuunda kisanduku cha kuchagua kilichobinafsishwa. Utajifunza jinsi yote haya yanavyofanya kazi katika mafundisho na warsha zijazo.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>
```

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

```

:::

Katika mfano huu, tunatumia sifa ya `appearance` kuwekwa kuwa `none` kuondoa mtindo wa msingi unaotolewa na kivinjari kwa sehemu za ingizo za kisanduku cha kuchagua. Mtumizi anapokagua kisanduku, kitakuwa na rangi ya nyuma ya `green`.

Mifano mingine ya darasa la bandia la kitendo ni:

- `:focus-within`: kwa kuweka mitindo kwa kipengele wakati yeye au mzao wake wowote wanapopata makini.
- `:enabled`: kwa kuwalenga vitufe vya fomu au vipengele vingine vilivyo hai kwa sasa.
- `:disabled`: kwa kuwalenga vitufe vya fomu au vipengele vingine vilivyozimwa.
- `:target`: kwa kuweka mitindo kwa kipengele kinacholengwa na kipande cha URL (sehemu ya URL baada ya alama ya `#`).

# --questions--

## --text--

Darasa la bandia la kitendo cha mtumizi linakuwezesha kufanya nini?

## --answers--

Zinawezesha michoro na mabadiliko ya mtindo.

### --feedback--

Fikiria jinsi unavyoweza kushirikiana na watumizi kwa kutumia CSS tu.

---

Zinawezesha kubadilisha muundo wa DOM kwa njia ya mabadiliko ya wakati halisi.

### --feedback--

Fikiria jinsi unavyoweza kushirikiana na watumizi kwa kutumia CSS tu.

---

Zinafikisha maoni kwa mtumizi bila kutegemea JavaScript.

---

Zinawezesha kuweka mtindo kwa kipengele cha mwisho katika orodha.

### --feedback--

Fikiria jinsi unavyoweza kushirikiana na watumizi kwa kutumia CSS tu.

## --video-solution--

3

## --text--

Darasa la bandia la `:checked` hufanya nini katika CSS?

## --answers--

Huchagua kipengele wakati kimezimwa.

### --feedback--

Fikiria jinsi fomu zinavyoshughulikia uchaguzi wa mtumizi.

---

Huchagua kipengele wakati kinavinjariwa.

### --feedback--

Fikiria jinsi fomu zinavyoshughulikia uchaguzi wa mtumizi.

---

Huweka mitindo kwa vipengele kama kisanduku cha kuchagua au kitufe cha radio ambavyo vimekaguliwa.

---

Huweka mtindo kwa kipengele kinapopata makini.

### --feedback--

Fikiria jinsi fomu zinavyoshughulikia uchaguzi wa mtumizi.

## --video-solution--

3

## --text--

Darasa la bandia la `:focus` hufanya nini?

## --answers--

Huchagua kipengele wakati kinavinjariwa na panya.

### --feedback--

Fikiria jinsi watumizi wanavyorambaza fomu kwa kutumia kibodi.

---

Huweka mitindo wakati kipengele kinapopata makini, kawaida kupitia urambazaji wa kibodi au bofya.

---

Huchagua kipengele baada ya fomu kuwasilishwa.

### --feedback--

Fikiria jinsi watumizi wanavyorambaza fomu kwa kutumia kibodi.

---

Huweka mitindo kwa kipengele kinapozimwa.

### --feedback--

Fikiria jinsi watumizi wanavyorambaza fomu kwa kutumia kibodi.

## --video-solution--

2
