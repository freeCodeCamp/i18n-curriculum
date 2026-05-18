---
id: bd7123c9c443eddfaeb5bdef
title: Tangaza vigezo vya JavaScript
challengeType: 1
forumTopicId: 17556
dashedName: declare-javascript-variables
---

# --description--

Katika sayansi ya kompyuta, <dfn>data</dfn> ni chochote chenye maana kwa kompyuta. JavaScript hutoa aina nane tofauti za <dfn>data</dfn> ambazo ni `undefined`, `null`, `boolean`, `string`, `symbol`, `bigint`, `number`, na `object`.

Kwa mfano, kompyuta hutofautisha kati ya nambari, kama nambari `12`, na `strings`, kama `"12"`, `"dog"`, au `"123 cats"`, ambazo ni makusanyo ya herufi. Kompyuta zinaweza kufanya operesheni za kihesabu kwa nambari, lakini si kwa mfuatano wa herufi.

<dfn>Vigezo</dfn> huruhusu kompyuta kuhifadhi na kushughulikia data kwa njia inayobadilika. Hufanya hivi kwa kutumia "lebo" kuonyesha data badala ya kutumia data yenyewe. Aina yoyote kati ya aina nane za data inaweza kuhifadhiwa katika kigezo.

Vigezo ni sawa na vigezo x na y unavyotumia katika hisabati, ambayo ina maana ni jina rahisi la kuwakilisha data tunayotaka kurejelea. Vigezo vya kompyuta hutofautiana na vigezo vya hisabati kwa kuwa vinaweza kuhifadhi thamani tofauti wakati tofauti.

Tunaambia JavaScript kuunda au <dfn>kutangaza</dfn> kigezo kwa kuweka neno kuu `var` mbele yake, kama ifuatavyo:

```js
var ourName;
```

huunda kigezo kinachoitwa `ourName`. Katika JavaScript tunamaliza sentensi kwa alama ya nukta mbili. Majina ya vigezo yanaweza kujumuisha nambari, herufi, na `$` au `_`, lakini hayawezi kuwa na nafasi au kuanza na nambari.

# --instructions--

Tumia neno kuu la `var` kuunda kigezo kinachoitwa `myName`.

**Kibali**  
Tazama mfano wa `ourName` hapo juu ikiwa utakumbwa na shida.

# --hints--

Unapaswa kutangaza `myName` kwa neno kuu la `var`, ukimaliza kwa alama ya nukta mbili

```js
assert(/var\s+myName\s*;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myName;
```
