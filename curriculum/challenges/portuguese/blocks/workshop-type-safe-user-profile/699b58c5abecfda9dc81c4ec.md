---
id: 699b58c5abecfda9dc81c4ec
title: passo 3
challengeType: 1
dashedName: step-3
---

# --description--

No momento, o objeto `profile` tem apenas três propriedades. Mas seria bom ter mais algumas.

Adicione uma propriedade chamada `mood` ao objeto `profile`. O valor dela deve ser `null`.

# --hints--

Seu objeto `profile` deve ter uma propriedade `mood`.

```js
assert.property(profile, "mood");
```

Sua propriedade `mood` deve ter o valor `null`.

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
