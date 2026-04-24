---
id: 699b58c5abecfda9dc81c4ec
title: ステップ 3
challengeType: 1
dashedName: step-3
---

# --description--

現在、`profile` オブジェクトには3つのプロパティしかありません。でも、もう少し増やせるといいですね。

`mood` オブジェクトに `profile` という名前のプロパティを追加してください。その値は `null` にしてください。

# --hints--

あなたの `profile` オブジェクトには `mood` プロパティがあるはずです。

```js
assert.property(profile, "mood");
```

あなたの `mood` プロパティの値は `null` であるべきです。

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
