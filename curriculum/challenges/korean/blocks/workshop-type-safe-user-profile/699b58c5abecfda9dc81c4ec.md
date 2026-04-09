---
id: 699b58c5abecfda9dc81c4ec
title: 3단계
challengeType: 1
dashedName: step-3
---

# --description--

지금 `profile` 객체에는 세 개의 속성만 있습니다. 하지만 몇 개를 더 추가하면 좋겠습니다.

`mood` 객체에 `profile`이라는 속성을 추가하세요. 그 값은 `null`이어야 합니다.

# --hints--

`profile` 객체에는 `mood` 속성이 있어야 합니다.

```js
assert.property(profile, "mood");
```

`mood` 속성의 값은 `null`이어야 합니다.

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
