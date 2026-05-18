---
id: bd7158d8c442eddfaeb5bd0f
title: Jenga saa ya 25 + 5
challengeType: 3
forumTopicId: 301373
dashedName: build-a-25--5-clock
---

# --description--

**Kumbuka:** **React 18 ina matatizo yanayojulikana na vipimo vya mradi huu (angalia [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Lengo:** Jenga programu inayofanya kazi kama hii: <a href="https://25--5-clock.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://25--5-clock.freecodecamp.rocks</a>.

Kamilisha hadithi za mtumiaji zilizo hapa chini na upite vipimo vyote. Tumia maktaba au API yoyote unayohitaji. Toa mtindo wako binafsi.

Unaweza kutumia mchanganyiko wowote wa HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux, na jQuery kukamilisha mradi huu. Inashauriwa kutumia mfumo wa kazi wa mbele (kama React kwa mfano) kwa sababu sehemu hii ni kuhusu kujifunza mifumo ya kazi ya mbele. Teknolojia nyingine zisizotajwa hapo juu hazipendekezwi na kuzitumia ni kwa hatari yako mwenyewe. Tunatazamia kusaidia mifumo mingine ya kazi ya mbele kama Angular na Vue, lakini hazijaungwa mkono kwa sasa. Tutakubali na kujaribu kurekebisha ripoti zote za matatizo zinazotumia teknolojia iliyopendekezwa kwa mradi huu. Furahia kuandika msimbo!

**Hadithi ya mtumiaji #1:** Naona kipengele chenye `id="break-label"` kinachojumuisha mfuatano wa herufi (mfano "Break Length").

**Hadithi ya mtumiaji #2:** Naona kipengele chenye `id="session-label"` kinachojumuisha mfuatano wa herufi (mfano "Session Length").

**Hadithi ya mtumiaji #3:** Naona vipengele viwili vinavyoweza kubofywa vyenye vitambulisho vinavyolingana: `id="break-decrement"` na `id="session-decrement"`.

**Hadithi ya mtumiaji #4:** Naona vipengele viwili vinavyoweza kubofywa vyenye vitambulisho vinavyolingana: `id="break-increment"` na `id="session-increment"`.

**Hadithi ya mtumiaji #5:** Naona kipengele chenye `id="break-length"`, ambacho kwa chaguo-msingi (wakati wa kupakia) kinaonyesha thamani ya 5.

**Hadithi ya mtumiaji #6:** Naona kipengele chenye `id="session-length"`, ambacho kwa chaguo-msingi kinaonyesha thamani ya 25.

**Hadithi ya mtumiaji #7:** Naona kipengele chenye `id="timer-label"`, kinachojumuisha mfuatano wa herufi unaoonyesha kikao kimeanzishwa (mfano "Session").

**Hadithi ya mtumiaji #8:** Naona kipengele chenye `id="time-left"`. KUMBUKA: Ikiwa kimezimwa au kinaendelea, thamani katika uwanja huu inapaswa kuonyeshwa kila wakati kwa muundo wa `mm:ss` (yaani 25:00).

**Hadithi ya mtumiaji #9:** Naona kipengele kinachoweza kubofywa chenye `id="start_stop"`.

**Hadithi ya mtumiaji #10:** Naona kipengele kinachoweza kubofywa chenye `id="reset"`.

**Hadithi ya mtumiaji #11:** Ninapobofya kipengele chenye kitambulisho `reset`, kipima muda chochote kinachokimbia kinapaswa kusimama, thamani ndani ya `id="break-length"` inapaswa kurudi `5`, thamani ndani ya `id="session-length"` inapaswa kurudi 25, na kipengele chenye `id="time-left"` kinapaswa kurejeshwa katika hali yake ya chaguo-msingi.

**Hadithi ya mtumiaji #12:** Ninapobofya kipengele chenye kitambulisho `break-decrement`, thamani ndani ya `id="break-length"` inapungua kwa thamani ya 1, na naona thamani iliyosasishwa.

**Hadithi ya mtumiaji #13:** Ninapobofya kipengele chenye kitambulisho `break-increment`, thamani ndani ya `id="break-length"` inaongezeka kwa thamani ya 1, na naona thamani iliyosasishwa.

**Hadithi ya mtumiaji #14:** Ninapobofya kipengele chenye kitambulisho `session-decrement`, thamani ndani ya `id="session-length"` inapungua kwa thamani ya 1, na naona thamani iliyosasishwa.

**Hadithi ya mtumiaji #15:** Ninapobofya kipengele chenye kitambulisho `session-increment`, thamani ndani ya `id="session-length"` inaongezeka kwa thamani ya 1, na naona thamani iliyosasishwa.

**Hadithi ya mtumiaji #16:** Sipaswi kuweka muda wa kikao au mapumziko kuwa &lt;= 0.

**Hadithi ya mtumiaji #17:** Sipaswi kuweka muda wa kikao au mapumziko kuwa > 60.

**Hadithi ya mtumiaji #18:** Ninapobofya kipengele chenye `id="start_stop"` kwa mara ya kwanza, kipima muda kinapaswa kuanza kutoka thamani inayojitokeza sasa hivi katika `id="session-length"`, hata kama thamani imeongezwa au kupunguzwa kutoka thamani ya awali ya 25.

**Hadithi ya mtumiaji #19:** Ikiwa kipima muda kinaendelea, kipengele chenye kitambulisho `time-left` kinapaswa kuonyesha muda uliobaki kwa muundo wa `mm:ss` (ukipungua kwa thamani ya 1 na kusasisha onyesho kila 1000ms).

**Hadithi ya mtumiaji #20:** Ikiwa kipima muda kinaendelea na ninabofya kipengele chenye `id="start_stop"`, kuhesabu chini kunapaswa kusitishwa.

**Hadithi ya mtumiaji #21:** Ikiwa kipima muda kimesitishwa na ninabofya kipengele chenye `id="start_stop"`, kuhesabu chini kunapaswa kuendelea kutoka sehemu ilipositishwa.

**Hadithi ya mtumiaji #22:** Wakati kuhesabu chini kwa kikao kufikia sifuri (KUMBUKA: kipima muda LAZIMA lifikie 00:00), na kuhesabu chini mpya kuanza, kipengele chenye kitambulisho `timer-label` kinapaswa kuonyesha mfuatano wa herufi unaoonyesha mapumziko yameanza.

**Hadithi ya mtumiaji #23:** Wakati kuhesabu chini kwa kikao kufikia sifuri (KUMBUKA: kipima muda LAZIMA lifikie 00:00), kuhesabu chini mpya ya mapumziko inapaswa kuanza, ikihesabu chini kutoka thamani inayojitokeza sasa hivi katika kipengele cha `id="break-length"`.

**Hadithi ya mtumiaji #24:** Wakati kuhesabu chini kwa mapumziko kufikia sifuri (KUMBUKA: kipima muda LAZIMA lifikie 00:00), na kuhesabu chini mpya kuanza, kipengele chenye kitambulisho `timer-label` kinapaswa kuonyesha mfuatano wa herufi unaoonyesha kikao kimeanza.

**Hadithi ya mtumiaji #25:** Wakati kuhesabu chini kwa mapumziko kufikia sifuri (KUMBUKA: kipima muda LAZIMA lifikie 00:00), kuhesabu chini mpya ya kikao inapaswa kuanza, ikihesabu chini kutoka thamani inayojitokeza sasa hivi katika kipengele cha `id="session-length"`.

**Hadithi ya mtumiaji #26:** Wakati kuhesabu chini kufikia sifuri (KUMBUKA: kipima muda LAZIMA lifikie 00:00), sauti inayoashiria muda umekwisha inapaswa kuchezwa. Hii inapaswa kutumia lebo ya HTML5 `audio` na kuwa na `id="beep"` inayolingana.

**Hadithi ya mtumiaji #27:** Kipengele cha sauti chenye `id="beep"` lazima kiwe na muda wa sekunde 1 au zaidi.

**Hadithi ya mtumiaji #28:** Kipengele cha sauti chenye kitambulisho `beep` kinapaswa kusitisha kucheza na kurudi mwanzo wakati kipengele chenye kitambulisho `reset` kinapobofya.

Unaweza kujenga mradi wako kwa <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">kutumia kiolezo hiki cha CodePen</a> na kubofya `Save` kuunda peni yako mwenyewe. Ikiwa unapendelea kutumia mazingira mengine, basi weka lebo ya `<script>` ndani ya mwili wa faili yako ya `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Ukiisha, wasilisha URL ya mradi wako unaofanya kazi na vipimo vyote vikipita.

# --solutions--

```js
// solution required
```
