---
id: 699b58c5abecfda9dc81c4ec
title: 第 3 步
challengeType: 1
dashedName: step-3
---

# --description--

目前 `profile` 物件只有三個屬性。但如果能多幾個會更好。

為 `mood` 物件添加一個名為 `profile` 的屬性。它的值應該是 `null`。

# --hints--

你的 `profile` 物件應該有一個 `mood` 屬性。

```js
assert.property(profile, "mood");
```

你的 `mood` 屬性應該有 `null` 的值。

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
