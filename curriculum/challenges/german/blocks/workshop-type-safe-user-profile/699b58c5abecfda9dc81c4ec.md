---
id: 699b58c5abecfda9dc81c4ec
title: Schritt 3
challengeType: 1
dashedName: step-3
---

# --description--

Im Moment hat das `profile`-Objekt nur drei Eigenschaften. Es wäre aber schön, wenn es ein paar mehr gäbe.

Fügen Sie dem `mood`-Objekt eine Eigenschaft namens `profile` hinzu. Ihr Wert soll `null` sein.

# --hints--

Ihr `profile`-Objekt sollte eine `mood`-Eigenschaft haben.

```js
assert.property(profile, "mood");
```

Ihre `mood`-Eigenschaft sollte den Wert `null` haben.

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
