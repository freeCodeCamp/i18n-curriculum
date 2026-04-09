---
id: 699b58c5abecfda9dc81c4ec
title: Passaggio 3
challengeType: 1
dashedName: step-3
---

# --description--

Al momento l'oggetto `profile` ha solo tre proprietà. Ma sarebbe utile averne qualcuna in più.

Aggiungi una proprietà chiamata `mood` all'oggetto `profile`. Il suo valore dovrebbe essere `null`.

# --hints--

Il tuo oggetto `profile` dovrebbe avere una proprietà `mood`.

```js
assert.property(profile, "mood");
```

La proprietà `mood` dovrebbe avere un valore `null`.

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
