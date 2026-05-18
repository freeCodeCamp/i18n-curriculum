---
id: 9d7123c8c441eeafaeb5bdef
title: Futa vipengele kutoka kwenye safu ya data kwa kutumia slice badala ya splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

Mfumo wa kawaida unapotumia safu za data ni pale unapotaka kufuta vitu na kuhifadhi vilivyobaki kwenye safu. JavaScript hutoa njia ya `splice` kwa hili, ambayo hupokea hoja za kielezo cha mahali pa kuanza kufuta vitu, kisha idadi ya vitu vya kufuta. Ikiwa hoja ya pili haijatolewa, chaguo-msingi ni kufuta vitu hadi mwisho. Hata hivyo, njia ya `splice` hubadilisha safu ya data ya awali ambayo inaitwa. Hapa kuna mfano:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Hapa `splice` inarudisha mfuatano wa herufi `London` na kuifuta kutoka kwenye safu ya miji. `cities` itakuwa na thamani `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

Kama tulivyoona katika changamoto iliyopita, njia ya `slice` haibadilishi safu ya awali, bali inarudisha safu mpya ambayo inaweza kuhifadhiwa katika kigezo. Kumbuka kuwa njia ya `slice` hupokea hoja mbili za viashiria vya kuanza na kumaliza sehemu ya kuchukua (kumaliza hakijumuishi), na inarudisha vitu hivyo katika safu mpya. Kutumia njia ya `slice` badala ya `splice` husaidia kuepuka athari zozote za kubadilisha safu ya awali.

# --instructions--

Andika upya kitendakazi `nonMutatingSplice` kwa kutumia `slice` badala ya `splice`. Inapaswa kupunguza safu ya data `cities` iliyotolewa kuwa na urefu wa 3, na kurudisha safu mpya yenye vitu vitatu vya kwanza tu.

Usibadilishe safu ya awali iliyotolewa kwa kitendakazi.

# --hints--

Msimbo wako unapaswa kutumia njia ya `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Msimbo wako haupaswi kutumia njia ya `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

Haupaswi kubadilisha safu ya awali iliyotumwa kwa kitendakazi.

```js
assert(
  (function () {
    const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
    nonMutatingSplice(_inputCities);
    return (
      JSON.stringify(_inputCities) ===
      JSON.stringify(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])
    );
  })()
);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` inapaswa kurudisha `["Chicago", "Delhi", "Islamabad"]`.

```js
assert.deepEqual(
  nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"]),
  ["Chicago", "Delhi", "Islamabad"]
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
