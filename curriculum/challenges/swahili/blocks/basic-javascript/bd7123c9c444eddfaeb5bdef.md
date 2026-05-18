---
id: bd7123c9c444eddfaeb5bdef
title: Tangaza vigezo vya mfuatano wa herufi
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

Hapo awali ulitumia msimbo ufuatao kutangaza kigezo:

```js
var myName;
```

Lakini pia unaweza kutangaza kigezo cha mfuatano wa herufi kama hii:

```js
var myName = "your name";
```

`"your name"` huitwa <dfn>mfuatano wa herufi</dfn> <dfn>literal</dfn>. Mfuatano wa herufi literal, au mfuatano wa herufi, ni mfululizo wa herufi sifuri au zaidi uliofungwa ndani ya alama za nukuu moja au alama za nukuu maradufu.

# --instructions--

Tengeneza vigezo viwili vipya vya mfuatano wa herufi: `myFirstName` na `myLastName` na weka thamani zao kuwa majina yako ya kwanza na ya mwisho, mtawalia.

# --hints--

`myFirstName` inapaswa kuwa mfuatano wa herufi wenye angalau herufi moja ndani yake.

```js
assert(
  (function () {
    if (
      typeof myFirstName !== 'undefined' &&
      typeof myFirstName === 'string' &&
      myFirstName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

`myLastName` inapaswa kuwa mfuatano wa herufi wenye angalau herufi moja ndani yake.

```js
assert(
  (function () {
    if (
      typeof myLastName !== 'undefined' &&
      typeof myLastName === 'string' &&
      myLastName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
