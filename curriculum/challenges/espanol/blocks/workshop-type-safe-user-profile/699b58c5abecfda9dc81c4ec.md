---
id: 699b58c5abecfda9dc81c4ec
title: Paso 3
challengeType: 1
dashedName: step-3
---

# --description--

En este momento, el objeto `profile` solo tiene tres propiedades. Pero sería bueno tener algunas más.

Agrega una propiedad llamada `mood` al objeto `profile`. Su valor debe ser `null`.

# --hints--

Tu objeto `profile` debe tener una propiedad `mood`.

```js
assert.property(profile, "mood");
```

Tu propiedad `mood` debe tener un valor de `null`.

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
