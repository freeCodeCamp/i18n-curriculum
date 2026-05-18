---
id: cf1111c1c11feddfaeb5bdef
title: Rudia kwa kutumia for loops za JavaScript
challengeType: 1
forumTopicId: 18219
dashedName: iterate-with-javascript-for-loops
---

# --description--

Unaweza kuendesha msimbo uleule mara nyingi kwa kutumia mzunguko.

Aina ya kawaida zaidi ya mzunguko katika JavaScript huitwa mzunguko wa `for` kwa sababu unaendeshwa mara nambari maalum ya nyakati.

Mizunguko ya for hutangazwa na usemi wa hiari tatu uliozuiwa na alama za semikolon:

`for (a; b; c)`, ambapo `a` ni usemi wa uanzishaji, `b` ni usemi wa hali, na `c` ni usemi wa mwisho.

Usemi wa uanzishaji hufanyika mara moja tu kabla mzunguko haujaanza. Kwa kawaida hutumika kutangaza na kuandaa kigezo cha mzunguko wako.

Usemi wa hali huhakikiwa mwanzoni mwa kila kurudia mzunguko na utaendelea mradi tu unapotathminiwa kuwa `true`. Mzunguko utaacha kuendelea wakati hali itakapokuwa `false` mwanzoni mwa kurudia mzunguko. Hii inamaanisha ikiwa hali inaanza kuwa false, mzunguko wako hautatekelezwa hata mara moja.

Usemi wa mwisho hufanyika mwishoni mwa kila kurudia mzunguko, kabla ya ukaguzi mwingine wa hali na kwa kawaida hutumika kuongeza au kupunguza kielekezi cha mzunguko wako.

Katika mfano ufuatao tunaanzisha na `i = 0` na kurudia mzunguko mradi tu hali yetu `i < 5` iwe kweli. Tutazidisha `i` kwa `1` kila kurudia mzunguko kwa kutumia `i++` kama usemi wetu wa mwisho.

```js
const ourArray = [];

for (let i = 0; i < 5; i++) {
  ourArray.push(i);
}
```

`ourArray` sasa itakuwa na thamani ya `[0, 1, 2, 3, 4]`.

# --instructions--

Tumia mzunguko wa `for` kusukuma thamani za 1 hadi 5 kwenye `myArray`.

# --hints--

Unapaswa kutumia mzunguko wa `for` kwa hili.

```js
assert(/for\s*\([^)]+?\)/.test(__helpers.removeJSComments(code)));
```

`myArray` inapaswa kuwa sawa na `[1, 2, 3, 4, 5]`.

```js
assert.deepEqual(myArray, [1, 2, 3, 4, 5]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
for (let i = 1; i < 6; i++) {
  myArray.push(i);
}
```
