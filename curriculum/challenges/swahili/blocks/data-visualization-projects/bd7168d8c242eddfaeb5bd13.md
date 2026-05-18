---
id: bd7168d8c242eddfaeb5bd13
title: Onyesha data kwa kutumia chati ya mstari
challengeType: 3
forumTopicId: 301464
dashedName: visualize-data-with-a-bar-chart
---

# --description--

**Lengo:** Jenga programu inayofanana kiutendaji na hii: <a href="https://bar-chart.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://bar-chart.freecodecamp.rocks</a>.

Kamilisha hadithi za mtumiaji zilizo hapa chini na upite mitihani yote. Tumia maktaba au API yoyote unayohitaji. Toa mtindo wako binafsi.

Unaweza kutumia HTML, JavaScript, CSS, na maktaba ya D3 ya uonyesho wa svg. Mitihani inahitaji mhimili kuundwa kwa kutumia sifa ya mhimili ya D3, ambayo huunda alama za kupigia (ticks) moja kwa moja kando ya mhimili. Alama hizi za kupigia zinahitajika kwa kupita mitihani ya D3 kwa sababu nafasi zao hutumika kuamua ulinganifu wa vipengele vilivyo kwenye chati. Utapata taarifa kuhusu kuunda mihimili kwenye <https://d3js.org/d3-axis>. Vipengele vinavyohitajika vya DOM vinatafutwa wakati wa kila mtihani. Ikiwa utatumia mfumo wa kazi wa mbele (mfano Vue), matokeo ya mtihani yanaweza kuwa si sahihi kwa maudhui yanayobadilika. Tunatarajia kuweza kuunga mkono hivi karibuni, lakini mifumo hii haijaungwa mkono kwa miradi ya D3 kwa sasa.

**Hadithi ya mtumiaji #1:** Chati yangu inapaswa kuwa na kichwa chenye `id="title"` inayolingana.

**Hadithi ya mtumiaji #2:** Chati yangu inapaswa kuwa na kipengele cha `g` kwa mhimili wa x chenye `id="x-axis"` inayolingana.

**Hadithi ya mtumiaji #3:** Chati yangu inapaswa kuwa na kipengele cha `g` kwa mhimili wa y chenye `id="y-axis"` inayolingana.

**Hadithi ya mtumiaji #4:** Mihimili yote miwili inapaswa kuwa na lebo nyingi za alama za kupigia, kila moja ikiwa na `class="tick"` inayolingana.

**Hadithi ya mtumiaji #5:** Chati yangu inapaswa kuwa na kipengele cha `rect` kwa kila nukta ya data chenye `class="bar"` inayonyesha data hiyo.

**Hadithi ya mtumiaji #6:** Kila `.bar` inapaswa kuwa na sifa `data-date` na `data-gdp` zenye thamani za `date` na `GDP`.

**Hadithi ya mtumiaji #7:** Sifa za `.bar` za vipengele vya `data-date` zinapaswa kufanana na mpangilio wa data iliyotolewa.

**Hadithi ya mtumiaji #8:** Sifa za `.bar` za vipengele vya `data-gdp` zinapaswa kufanana na mpangilio wa data iliyotolewa.

**Hadithi ya mtumiaji #9:** Kila kipengele cha `.bar` kina urefu unaowakilisha kwa usahihi `GDP` inayolingana na data.

**Hadithi ya mtumiaji #10:** Sifa ya `data-date` na kipengele chake cha `.bar` kinapaswa kuunganishwa na thamani inayolingana kwenye mhimili wa x.

**Hadithi ya mtumiaji #11:** Sifa ya `data-gdp` na kipengele chake cha `.bar` kinapaswa kuunganishwa na thamani inayolingana kwenye mhimili wa y.

**Hadithi ya mtumiaji #12:** Naweza kupeleka kipanya juu ya eneo na kuona kidokezo cha muda chenye `id="tooltip"` kinachoonyesha taarifa zaidi kuhusu eneo hilo.

**Hadithi ya mtumiaji #13:** Kidokezo changu cha muda kinapaswa kuwa na sifa ya `data-date` inayolingana na `data-date` ya eneo linalofanya kazi.

Huu ndio seti ya data utakayohitaji kukamilisha mradi huu: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/GDP-data.json`

Unaweza kujenga mradi wako kwa <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">kutumia kiolezo hiki cha CodePen</a> na kubofya `Save` kuunda pen yako mwenyewe. Au unaweza kutumia kiungo hiki cha CDN kuendesha mitihani katika mazingira yoyote unayopendelea: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`.

Ukiisha, wasilisha URL ya mradi wako unaofanya kazi na mitihani yote imepitwa.

# --solutions--

```js
// solution required
```
