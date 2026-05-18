---
id: 66edcdd18a4ef8df16e6bb7e
title: Jaribio fupi la JavaScript ya kitendakazi ya daraja la juu
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

Ili kupita jaribio fupi, lazima ujibu kwa usahihi angalau maswali 18 kati ya 20 yaliyo hapa chini.

# --quizzes--

## --quiz--

### --question--

#### --text--

Ni taarifa gani kati ya zifuatazo kuhusu kitendakazi za daraja la juu za JavaScript SI za kweli?

#### --distractors--

Kitendakazi za daraja la juu zinaweza kuongeza sana usomaji na utunzaji wa msimbo kwa kuwezesha mbinu za programu utendaji.

---

Kitendakazi za daraja la juu kama map, filter, na reduce ni zana zenye nguvu za usimamizi wa safu ya data, lakini si za kipekee kwa programu utendaji.

---

Kitendakazi za daraja la juu zinaweza kuleta ugumu katika kuelewa msimbo, lakini pia zinaweza kusababisha suluhisho zenye dhihirisho na ufupi zaidi.

#### --answer--

Vitendakazi vyote katika JavaScript, ikiwa ni pamoja na vile ambavyo havichukui au kurudisha vitendakazi vingine, vinaweza kuainishwa kama vitendakazi vya daraja la juu.

### --question--

#### --text--

Kitendakazi cha kiwanda ni nini katika muktadha wa vitendakazi vya daraja la juu?

#### --distractors--

Kitendakazi kinachotengeneza vigezo vipya.

---

Kitendakazi kinachofanya kazi tu na mfuatano wa herufi.

---

Kitendakazi kinachotengeneza maoni ya msimbo moja kwa moja.

#### --answer--

Kitendakazi kinachorudisha kitendakazi kipya kulingana na vigezo maalum

### --question--

#### --text--

Baada ya utekelezaji wa msimbo, thamani ya `forEachRes` na `mapRes` itakuwa nini?

```js
const numbers = [1, 1, 1, 1, 1];
let sum = 0;
const forEachRes = numbers.forEach(num => {
  return (sum += num);
});
const mapRes = numbers.map(num => {
  return (sum += num);
});
```

#### --distractors--

`forEachRes` ni `undefined` na `mapRes` ni `[1,2,3,4,5]`

---

`forEachRes` ni `0` na `mapRes` ni `[1,2,3,4,5]`

---

`forEachRes` ni `5` na `mapRes` ni `[1,2,3,4,5]`

#### --answer--

`forEachRes` ni `undefined` na `mapRes` ni `[6,7,8,9,10]`

### --question--

#### --text--

Matokeo ya msimbo huu ni yapi?

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

Vipengele visivyotegemezwa kwa safu ya data kupanga, hivyo hitilafu.

---

Wito wa kurudisha haujatolewa, hivyo hitilafu.

---

```js
[empty, 'a', 'b', undefined, { '20': 5 }]
```

#### --answer--

```js
[{ '20': 5 }, 'a', 'b', undefined, empty]
```

### --question--

#### --text--

Ni ipi kati ya zifuatazo inayoelezea kitendakazi cha mwitiko katika JavaScript?

#### --distractors--

Kitendakazi kinachoitwa mara moja baada ya tamko.

---

Kitendakazi kinachoitwa kwa muktadha maalum.

---

Kitendakazi kinachorudisha kitendakazi kingine.

#### --answer--

Kitendakazi kinachopitishwa kama hoja kwa kitendakazi kingine, ili kitekekelezwe na mantiki ya kitendakazi hicho.

### --question--

#### --text--

Matokeo ya kutumia `reduce()` kwenye safu ya data ni yapi?

#### --distractors--

Thamani ya kweli au siyo kweli inayoonyesha kama kuna vipengele vinavyokidhi sharti.

---

Safu ya data yenye vipengele vyote vimepunguzwa kwa kitendakazi cha mwitiko kilichobainishwa.

---

Safu ya thamani za kweli au siyo kweli.

#### --answer--

Inatofautiana kulingana na thamani ya mwanzo ya mkusanyaji na kitendakazi cha mwitiko.

### --question--

#### --text--

Njia ya `sort()` hufanya nini ikiwa hakuna kitendakazi cha kulinganisha kilichotolewa katika upangaji wa nambari?

#### --distractors--

Inajaza nafasi tupu na `null`.

---

Inarudisha safu ya herufi maalum.

---

Inapanga safu kwa mpangilio wa kinyume.

#### --answer--

Inapanga safu kama mfuatano wa herufi kulingana na vitengo vya msimbo wa UTF-16.

### --question--

#### --text--

Madhumuni ya njia ya `some()` katika JavaScript ni yapi?

#### --distractors--

Kutengeneza safu mpya yenye matokeo ya kitendakazi kilichotumika kwa kila kipengele.

---

Kupitia safu ya data bila kutoa matokeo.

---

Kupunguza safu ya data kuwa thamani moja kulingana na kitendakazi cha mwitiko.

#### --answer--

Kuhakikisha kama kuna vipengele vyovyote katika safu vinavyopitisha jaribio lililobainishwa.

### --question--

#### --text--

Ni ipi kati ya zifuatazo ni mfano halali wa uunganishaji wa mfululizo wa njia?

#### --distractors--

```js
Math.random();
```

---

```js
array.push(1).pop();
```

---

```js
console.log('Hello');
```

#### --answer--

```js
str.toLowerCase().trim().replace(' ', '_');
```

### --question--

#### --text--

Matokeo ya msimbo ufuatao ni yapi?

```js
let numbers = [2, 4, 8, 10];

numbers.forEach(function(number) {
    console.log(number % 2);
});
```

#### --distractors--

`2 4 8 10`

---

`null null null null`

---

`1 2 4 5`

#### --answer--

`0 0 0 0`

### --question--

#### --text--

Ni faida gani ya uunganishaji wa mfululizo wa njia?

#### --distractors--

Huboresha utendaji kwa kupunguza muda wa utekelezaji wa vitendakazi.

---

Hutoa kuondoa haja ya vigezo vya muda mfupi, lakini inaweza kuongeza matumizi ya kumbukumbu katika baadhi ya matukio.

---

Huruhusu usimamizi wa makosa na kurekebisha makosa kwa urahisi zaidi.

#### --answer--

Hutoa sintaksia rahisi na msimbo unaosomeka kwa kuruhusu shughuli nyingi katika usemi mmoja.

### --question--

#### --text--

Unawezaje kupanga safu ya vitu kwa sifa maalum kwa kutumia njia ya `sort`?

#### --distractors--

Njia ya `sort` haiwezi kupanga vitu.

---

Tumia njia ya `reverse` baada ya kupanga.

---

Badilisha vitu kuwa mfuatano wa herufi na upange.

#### --answer--

Tumia kitendakazi cha kulinganisha kinacholinganishwa thamani za sifa.

### --question--

#### --text--

Katika uunganishaji wa mfululizo wa njia, ni tabia gani ya kawaida ya kuboresha uwazi na kurekebisha makosa?

#### --distractors--

Tumia njia chache katika mfululizo.

---

Epuka kuunganisha njia zinazorudisha thamani za msingi tu.

---

Tumia njia zilizojengwa ndani pekee.

#### --answer--

Gawanya mfululizo mrefu katika hatua nyingi.

### --question--

#### --text--

Ni hasara gani inayoweza kutokea kwa kutumia uunganishaji wa mfululizo wa njia kupita kiasi katika msimbo wako?

#### --distractors--

Hufanya msimbo uendeshwe polepole.

---

Huzuia matumizi ya maoni.

---

Hufanya faili kuwa kubwa zaidi.

#### --answer--

Inaweza kufanya msimbo kuwa mgumu zaidi kutafuta makosa.

### --question--

#### --text--

Ni njia gani utatumia kuhakikisha kama vipengele vyote katika safu ni mfuatano wa herufi?

#### --distractors--

`some()`

---

`everyInstance()`

---

`filter()`

#### --answer--

`every()`

### --question--

#### --text--

Thamani ya `originalArray` itakuwa nini baada ya msimbo ufuatao kutekelezwa?

```js
const originalArray = [{ id: 1 }, { id: 2 }, { id: 3 }];
const filteredArray = originalArray.filter(item => item.id > 1);
filteredArray[0].id = 4;
```

#### --distractors--

`[{ id: 1 }, { id: 2 }, { id: 3 }]`

---

`[{ id: 1 }]`

---

`[{ id: 4 }, { id: 2 }, { id: 3 }]`

#### --answer--

`[{ id: 1 }, { id: 4 }, { id: 3 }]`
### --question--

#### --text--

Thamani ya `shortWords` itakuwa nini baada ya msimbo ufuatao kutekelezwa?

```js
const words = ['apple', 'banana', 'pear', 'kiwi'];
const shortWords = words.filter(word => word.length <= 5);
```

#### --distractors--

`[]`

---

`['pear', 'kiwi']`

---

`['apple', 'banana']`

#### --answer--

`['apple', 'pear', 'kiwi']`

### --question--

#### --text--

Madhumuni ya kutoa thamani ya mwanzo kama hoja kwa njia ya `reduce()` ni yapi?

#### --distractors--

Kuweka urefu wa safu ya data.

---

Kudhibiti idadi ya marudio.

---

Kubainisha aina ya thamani inayorudishwa na kitendakazi.

#### --answer--

Kufafanua thamani ya kuanzia kwa mkusanyaji.

### --question--

#### --text--

Je, njia ya `map` inaweza kutumika kwa vitu ambavyo si safu ya data?

#### --distractors--

Ndiyo, inaweza kutumika kwa kitu chochote.

---

Ndiyo, lakini tu kwa vitu vyenye sifa za nambari.

---

Inategemea toleo la JavaScript.

#### --answer--

Hapana, imeundwa mahsusi kwa safu ya data.

### --question--

#### --text--

Madhumuni kuu ya njia ya `map` katika JavaScript ni yapi?

#### --distractors--

Kupanga safu na kurudisha safu mpya huku ikidumisha mpangilio wa awali.

---

Kuchuja vipengele kutoka safu na kuondoa au kuongeza vipengele kulingana na sharti.

---

Kutafuta kipengele maalum katika safu na kurudisha kielezo chake pamoja na kipengele.

#### --answer--

Kutengeneza safu mpya yenye matokeo ya wito wa kitendakazi kilichotolewa kwa kila kipengele katika safu ya kuanzia.
