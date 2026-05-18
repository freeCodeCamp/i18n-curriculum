---
id: bd7158d8c442eddfaeb5bd17
title: Jenga kalkuleta ya JavaScript
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**Kumbuka:** **React 18 ina matatizo yanayojulikana na vipimo vya mradi huu (angalia [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Lengo:** Jenga programu inayofanya kazi kama hii: <a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks/</a>.

Kamilisha hadithi za mtumiaji zilizo hapa chini na upite vipimo vyote. Tumia maktaba au API yoyote unayohitaji. Toa mtindo wako binafsi.

Unaweza kutumia mchanganyiko wowote wa HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux, na jQuery kukamilisha mradi huu. Inashauriwa kutumia mfumo wa kazi wa mbele (kama React kwa mfano) kwa sababu sehemu hii ni kuhusu kujifunza mifumo ya kazi ya mbele. Teknolojia nyingine zisizotajwa hapo juu hazipendekezwi na kuzitumia ni kwa hatari yako mwenyewe. Tunatazamia kusaidia mifumo mingine ya kazi ya mbele kama Angular na Vue, lakini hazijaungwa mkono kwa sasa. Tutakubali na kujaribu kurekebisha ripoti zote za matatizo zinazotumia teknolojia iliyopendekezwa kwa mradi huu. Furahia kuandika msimbo!

**Hadithi ya mtumiaji #1:** Kalkuleta yangu inapaswa kuwa na kipengele kinachoweza kubofywa chenye `=` (ishara ya usawa) na `id="equals"` inayolingana.

**Hadithi ya mtumiaji #2:** Kalkuleta yangu inapaswa kuwa na vipengele 10 vinavyoweza kubofywa kila kikiwa na nambari moja kutoka 0-9, na vitambulisho vifuatavyo vinavyolingana: `id="zero"`, `id="one"`, `id="two"`, `id="three"`, `id="four"`, `id="five"`, `id="six"`, `id="seven"`, `id="eight"`, na `id="nine"`.

**Hadithi ya mtumiaji #3:** Kalkuleta yangu inapaswa kuwa na vipengele 4 vinavyoweza kubofywa kila kikiwa na mojawapo ya waendeshaji wakuu wa kihesabu wanne na vitambulisho vifuatavyo vinavyolingana: `id="add"`, `id="subtract"`, `id="multiply"`, `id="divide"`.

**Hadithi ya mtumiaji #4:** Kalkuleta yangu inapaswa kuwa na kipengele kinachoweza kubofywa chenye alama ya `.` (alama ya desimali) na `id="decimal"` inayolingana.

**Hadithi ya mtumiaji #5:** Kalkuleta yangu inapaswa kuwa na kipengele kinachoweza kubofywa chenye `id="clear"`.

**Hadithi ya mtumiaji #6:** Kalkuleta yangu inapaswa kuwa na kipengele cha kuonyesha thamani chenye `id="display"` inayolingana.

**Hadithi ya mtumiaji #7:** Wakati wowote, kubonyeza kitufe cha `clear` kunafuta thamani za ingizo na matokeo, na kurudisha kalkuleta katika hali yake ya awali; 0 inapaswa kuonyeshwa katika kipengele chenye kitambulisho cha `display`.

**Hadithi ya mtumiaji #8:** Ninapoingiza nambari, ninapaswa kuona ingizo langu katika kipengele chenye kitambulisho cha `display`.

**Hadithi ya mtumiaji #9:** Kwa mpangilio wowote, ninapaswa kuweza kuongeza, kutoa, kuzidisha na kugawanya mnyororo wa nambari za urefu wowote, na ninapobofya `=`, matokeo sahihi yanapaswa kuonyeshwa katika kipengele chenye kitambulisho cha `display`.

**Hadithi ya mtumiaji #10:** Wakati wa kuingiza nambari, kalkuleta yangu haipaswi kuruhusu nambari kuanza na sifuri nyingi.

**Hadithi ya mtumiaji #11:** Wakati kipengele cha desimali kinapobofyiwa, `.` inapaswa kuongezwa kwenye thamani inayojitokeza; `.` mbili katika nambari moja hazipitwi.

**Hadithi ya mtumiaji #12:** Ninapaswa kuweza kufanya operesheni yoyote (`+`, `-`, `*`, `/`) kwa nambari zenye alama za desimali.

**Hadithi ya mtumiaji #13:** Ikiwa waendeshaji wawili au zaidi wanaingizwa mfululizo, operesheni inayofanywa inapaswa kuwa waendeshaji wa mwisho waliowekwa (isipokuwa alama ya hasi `-`). Kwa mfano, ikiwa `5 + * 7 =` inaingizwa, matokeo yanapaswa kuwa `35` (yaani `5 * 7`); ikiwa `5 * - 5 =` inaingizwa, matokeo yanapaswa kuwa `-25` (yaani `5 * (-5)`).

**Hadithi ya mtumiaji #14:** Kubonyeza mwendeshaji mara moja baada ya `=` kunapaswa kuanzisha hesabu mpya inayofanya kazi kwa matokeo ya tathmini iliyopita.

**Hadithi ya mtumiaji #15:** Kalkuleta yangu inapaswa kuwa na usahihi wa sehemu kadhaa za desimali linapokuja suala la kuzungusha (kumbuka hakuna kiwango kamili, lakini unapaswa kuweza kushughulikia mahesabu kama `2 / 7` kwa usahihi wa angalau sehemu 4 za desimali).

**Kumbuka kuhusu mantiki ya kalkuleta:** Inapaswa kutambuliwa kuwa kuna mitazamo miwili mikuu kuhusu mantiki ya ingizo la kalkuleta: <dfn>mantiki ya utekelezaji wa papo hapo</dfn> na <dfn>mantiki ya fomula</dfn>. Mfano wetu unatumia mantiki ya fomula na unazingatia kipaumbele cha mpangilio wa operesheni, utekelezaji wa papo hapo hauzingatii. Moja kati ya hizi ni sawa, lakini tafadhali fahamu kuwa kulingana na unachochagua, kalkuleta yako inaweza kutoa matokeo tofauti na yetu kwa baadhi ya hesabu (angalia mfano hapa chini). Mradi hesabu zako zinaweza kuthibitishwa na kalkuleta nyingine ya uzalishaji, tafadhali usichukulie hii kama hitilafu.

**MFANO:** `3 + 5 x 6 - 2 / 4 =`

-   **Mantiki ya utekelezaji wa papo hapo:** `11.5`
-   **Mantiki ya fomula/usemi wa kihesabu:** `32.5`

Unaweza kujenga mradi wako kwa <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">kutumia kiolezo hiki cha CodePen</a> na kubofya `Save` kuunda pen yako mwenyewe. Ikiwa unapendelea kutumia mazingira mengine, basi weka lebo ya `<script>` ndani ya mwili wa faili yako ya `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Ukipata kazi, wasilisha URL ya mradi wako unaofanya kazi na vipimo vyote vikipita.

# --solutions--

```js
// solution required
```
