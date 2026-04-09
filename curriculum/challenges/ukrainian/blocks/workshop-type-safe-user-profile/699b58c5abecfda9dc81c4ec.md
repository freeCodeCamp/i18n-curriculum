---
id: 699b58c5abecfda9dc81c4ec
title: Крок 3
challengeType: 1
dashedName: step-3
---

# --description--

Зараз об’єкт `profile` має лише три властивості. Але було б добре додати ще кілька.

Додайте властивість з назвою `mood` до об’єкта `profile`. Її значення має бути `null`.

# --hints--

Ваш об’єкт `profile` має містити властивість `mood`.

```js
assert.property(profile, "mood");
```

Властивість `mood` має мати значення `null`.

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
