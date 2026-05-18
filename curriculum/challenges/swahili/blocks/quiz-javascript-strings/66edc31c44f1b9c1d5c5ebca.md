---
id: 66edc31c44f1b9c1d5c5ebca
title: Jaribio fupi la mfuatano wa herufi za JavaScript
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

Ili kupita jaribio fupi, lazima ujibu kwa usahihi angalau maswali 18 kati ya 20 yaliyo hapa chini.

# --quizzes--

## --quiz--

### --question--

#### --text--

Thamani ya return kwa njia ya `includes()` ni ipi?

#### --distractors--

Ikiwa sehemu ndogo ya mfuatano wa herufi inapatikana ndani ya mfuatano, njia hiyo hurudisha mfuatano huo. Vinginevyo, hurudisha `undefined`.

---

Ikiwa sehemu ndogo ya mfuatano wa herufi inapatikana ndani ya mfuatano, njia hiyo hurudisha `true`. Vinginevyo, hurudisha mfuatano tupu.

---

Ikiwa sehemu ndogo ya mfuatano wa herufi inapatikana ndani ya mfuatano, njia hiyo hurudisha mfuatano huo. Vinginevyo, hurudisha `null`.

#### --answer--

Ikiwa sehemu ndogo ya mfuatano wa herufi inapatikana ndani ya mfuatano, njia hiyo hurudisha `true`. Vinginevyo, hurudisha `false`.

### --question--

#### --text--

Ni chaguo gani linaonyesha uingizaji wa thamani wa mfuatano wa herufi?

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

`` `Hello, {user}!` ``

#### --answer--

`` `Hello, ${user}!` ``

### --question--

#### --text--

Ni ipi kati ya hizi ni tabia ya kuanzisha mstari mpya (newline character)?

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

Ni taarifa gani kati ya hizi ni sahihi kuhusu mfuatano wa herufi?

#### --distractors--

Mfuatano wa herufi ni wa kubadilika na unaweza kubadilishwa baada ya kuundwa.

---

Mfuatano wa herufi ni aina zisizo za msingi (non primitive data types).

---

Mfuatano wa herufi unaweza kuundwa kwa kutumia nukuu moja tu.

#### --answer--

Mfuatano wa herufi ni wa kutobadilika (immutable).

### --question--

#### --text--

ASCII inasimamia nini?

#### --distractors--

American Standard Code for Internet Information

---

Advanced Systematic Code for Internal Interchange

---

Automatic Standard Code for Internal Information

#### --answer--

American Standard Code for Information Interchange

### --question--

#### --text--

Ni njia gani kati ya hizi huchukua sehemu ya mfuatano wa herufi na kurudisha mfuatano mpya?

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

Kusudi la njia ya `prompt()` ni lipi?

#### --distractors--

Inaonyesha ujumbe kwenye konsoli.

---

Inaonyesha kisanduku cha tahadhari chenye ujumbe.

---

Inaonyesha kisanduku cha uthibitisho chenye ujumbe.

#### --answer--

Inaonyesha kisanduku cha mazungumzo kinachosubiri ingizo la mtumizi.

### --question--

#### --text--

Ni njia gani sahihi ya kupata herufi ya tatu ya mfuatano wa herufi?

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

Unawezaje kupata thamani ya ASCII ya herufi ya kwanza katika mfuatano wa herufi `"hello"`?

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

Ni njia gani unaweza kutumia kupata herufi inayolingana na thamani ya ASCII?

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

Ni mfano gani kati ya `indexOf` utaandika `-1` kwenye konsoli?

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

Unawezaje kuangalia kama mfuatano wa herufi `"JavaScript"` una `"Script"`?

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

Ni ipi kati ya hizi huchukua sehemu ndogo ya mfuatano wa herufi `"Script"` kutoka kwa mfuatano wa herufi `"JavaScript"`?

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

Unawezaje kubadilisha mfuatano wa herufi `"JavaScript"` kuwa herufi kubwa?

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

Unawezaje kubadilisha mfuatano wa herufi `"JavaScript"` kuwa herufi ndogo?

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

Ni ipi kati ya hizi itabadilisha `"dogs"` kuwa `"cats"` katika mfuatano wa herufi `"I love dogs"`.

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

Ni njia gani hutumika kurudia mfuatano wa herufi mara nambari fulani?

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

Nini msimbo ufuatao utarudisha: `"abc".repeat(3)`?

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

It will throw an error.

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

Ni njia gani itafuta nafasi tupu mwanzoni na mwishoni mwa mfuatano wa herufi?

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

Ni sintaksia gani sahihi ya kuepuka nukuu?

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```
