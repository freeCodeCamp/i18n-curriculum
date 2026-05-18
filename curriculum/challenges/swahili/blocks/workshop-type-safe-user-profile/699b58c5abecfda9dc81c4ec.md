---
id: 699b58c5abecfda9dc81c4ec
title: Hatua 3
challengeType: 1
dashedName: step-3
---

# --description--

Kwa sasa kitu cha `profile` kina sifa tatu tu. Lakini itakuwa vizuri kuwa na sifa zaidi kidogo.

Ongeza sifa iitwayo `mood` kwenye kitu cha `profile`. Thamani yake inapaswa kuwa `null`.

# --hints--

Kitu chako cha `profile` kinapaswa kuwa na sifa ya `mood`.

```js
assert.property(profile, "mood");
```

Sifa yako ya `mood` inapaswa kuwa na thamani ya `null`.

```js
assert.isNull(profile?.mood);
```

# --seed--

## --seed-contents--

```ts
--fcc-editable-region--
const profile = {
  username: "codeLearner",
  age: 25,
  isLoggedIn: false,

}
--fcc-editable-region--

console.log(profile);
```
