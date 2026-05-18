---
id: bd7178d8c242eddfaeb5bd13
title: Onyesha data kwa kutumia chati ya kutawanyika
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**Lengo:** Jenga programu inayofanya kazi kwa njia inayofanana na hii: <a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>.

Kamilisha hadithi za mtumiaji zilizo hapa chini na upite vipimo vyote. Tumia maktaba au API yoyote unayohitaji. Toa mtindo wako binafsi.

Unaweza kutumia HTML, JavaScript, CSS, na maktaba ya D3 ya uonyesaji wa svg. Vipimo vinahitaji mihimili (axes) itengenezwe kwa kutumia sifa ya D3 axis, ambayo huunda alama za kupigia (ticks) moja kwa moja kando ya mhimili. Alama hizi za kupigia zinahitajika kwa kupita vipimo vya D3 kwa sababu nafasi zao hutumika kuamua ulinganifu wa vipengele vilivyo kwenye chati. Utapata taarifa kuhusu jinsi ya kutengeneza mihimili kwenye <https://d3js.org/d3-axis>. Vipengele vinavyohitajika vya DOM vinatafutwa wakati wa kila kipimo. Ikiwa utatumia mfumo wa kazi wa mbele (mfano Vue), matokeo ya vipimo yanaweza kuwa si sahihi kwa maudhui yanayobadilika. Tunatarajia kuweza kuunga mkono hivi karibuni, lakini mifumo hii haijaungwa mkono kwa miradi ya D3 kwa sasa.

**Hadithi ya mtumiaji #1:** Naona kipengele cha kichwa chenye `id="title"` inayolingana.

**Hadithi ya mtumiaji #2:** Naona mhimili wa x wenye `id="x-axis"` inayolingana.

**Hadithi ya mtumiaji #3:** Naona mhimili wa y wenye `id="y-axis"` inayolingana.

**Hadithi ya mtumiaji #4:** Naona alama za mviringo, kila moja ikiwa na darasa la `dot`, zinazowakilisha data inayochorwa.

**Hadithi ya mtumiaji #5:** Kila alama ya mviringo inapaswa kuwa na sifa za `data-xvalue` na `data-yvalue` zenye thamani zao za `x` na `y` zinazolingana.

**Hadithi ya mtumiaji #6:** `data-xvalue` na `data-yvalue` za kila alama ya mviringo zinapaswa kuwa ndani ya anuwai ya data halisi na katika muundo sahihi wa data. Kwa `data-xvalue`, nambari kamili (miaka kamili) au vitu vya `Date` vinakubalika kwa tathmini ya kipimo. Kwa `data-yvalue` (dakika), tumia vitu vya `Date`.

**Hadithi ya mtumiaji #7:** `data-xvalue` na alama yake ya mviringo inapaswa kuendana na sehemu/thamani inayolingana kwenye mhimili wa x.

**Hadithi ya mtumiaji #8:** `data-yvalue` na alama yake ya mviringo inapaswa kuendana na sehemu/thamani inayolingana kwenye mhimili wa y.

**Hadithi ya mtumiaji #9:** Naona lebo nyingi za alama za kupigia kwenye mhimili wa y zenye muundo wa wakati wa `%M:%S`.

**Hadithi ya mtumiaji #10:** Naona lebo nyingi za alama za kupigia kwenye mhimili wa x zinazoonyesha mwaka.

**Hadithi ya mtumiaji #11:** Naona kuwa anuwai ya lebo za mhimili wa x iko ndani ya anuwai ya data halisi ya mhimili wa x.

**Hadithi ya mtumiaji #12:** Naona kuwa anuwai ya lebo za mhimili wa y iko ndani ya anuwai ya data halisi ya mhimili wa y.

**Hadithi ya mtumiaji #13:** Naona hadithi yenye maandishi ya maelezo yenye `id="legend"`.

**Hadithi ya mtumiaji #14:** Naweza kuweka kipanya juu ya eneo na kuona kidokezo cha muda chenye `id="tooltip"` kinachoonyesha taarifa zaidi kuhusu eneo hilo.

**Hadithi ya mtumiaji #15:** Kidokezo changu cha muda kinapaswa kuwa na sifa ya `data-year` inayolingana na `data-xvalue` ya eneo linalofanya kazi.

Huu ndio seti ya data utakayohitaji kukamilisha mradi huu: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

Unaweza kujenga mradi wako kwa <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">kutumia kiolezo hiki cha CodePen</a> na kubofya `Save` kuunda pen yako mwenyewe. Au unaweza kutumia kiungo hiki cha CDN kuendesha vipimo katika mazingira yoyote unayopendelea: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

Ukiisha, wasilisha URL ya mradi wako unaofanya kazi na vipimo vyote vikipita.

# --solutions--

```js
// solution required
```
