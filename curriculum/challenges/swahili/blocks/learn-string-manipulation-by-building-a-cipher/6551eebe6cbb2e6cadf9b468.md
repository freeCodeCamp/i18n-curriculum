---
id: 6551eebe6cbb2e6cadf9b468
title: Hatua 2
challengeType: 20
dashedName: step-2
---

# --description--

Vigezo vinaweza kuhifadhi thamani za aina tofauti za data. Umeweka thamani ya nambari kamili, lakini ikiwa unataka wakilisha maandishi, unahitaji kuweka thamani ya mfuatano wa herufi. Mfuatano wa herufi ni mfululizo wa herufi uliofungwa na alama za nukuu moja au alama za nukuu maradufu, lakini huwezi kuanza mfuatano wa herufi kwa alama moja za nukuu na kuumaliza kwa alama za nukuu maradufu au kinyume chake:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

Futa vigezo vyako vya `number` na thamani yake. Kisha, tangaza kigezo kingine kinachoitwa `text` na weka thamani ya mfuatano wa herufi `'Hello World'` katika kigezo hiki.

# --hints--

Haupaswi kuwa na `number = 5` katika msimbo wako.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

Unapaswa kutangaza kigezo kinachoitwa `text`. Zingatia kuweka jina la kigezo mwanzoni mwa mstari.

```js
assert.match(code, /^text\s*=/m)
```

Unapaswa kuweka thamani ya mfuatano wa herufi `'Hello World'` katika kigezo chako cha `text`. Kumbuka kutumia alama moja za nukuu au alama za nukuu maradufu kufunga mfuatano wa herufi na zingatia herufi kubwa na ndogo.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

Msimbo wako una sintaksia isiyo sahihi na/au uelekezaji usio sahihi.

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
