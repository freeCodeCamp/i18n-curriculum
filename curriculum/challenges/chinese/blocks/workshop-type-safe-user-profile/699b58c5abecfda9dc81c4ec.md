---
id: 699b58c5abecfda9dc81c4ec
title: 第 3 步
challengeType: 1
dashedName: step-3
---

# --description--

现在 `profile` 对象只有三个属性。但如果能多几个属性会更好。

为 `mood` 对象添加一个名为 `profile` 的属性。它的值应该是 `null`。

# --hints--

你的 `profile` 对象应该有一个 `mood` 属性。

```js
assert.property(profile, "mood");
```

你的 `mood` 属性的值应该是 `null`。

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
