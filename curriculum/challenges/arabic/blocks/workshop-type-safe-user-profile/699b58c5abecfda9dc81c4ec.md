---
id: 699b58c5abecfda9dc81c4ec
title: الخطوة 3
challengeType: 1
dashedName: step-3
---

# --description--

في الوقت الحالي، يحتوي كائن `profile` على ثلاث خصائص فقط. لكن سيكون من الجيد إضافة بعض الخصائص الأخرى.

أضف خاصية باسم `mood` إلى كائن `profile`. يجب أن تكون قيمتها `null`.

# --hints--

يجب أن يحتوي كائن `profile` على خاصية `mood`.

```js
assert.property(profile, "mood");
```

يجب أن تكون قيمة خاصية `mood` هي `null`.

```js
assert.isNull(profile?.mood);
```

# --seed--

## --seed-contents--

```ts
const profile = {
  username: "codeLearner",
  age: 25,
  isLoggedIn: false,
--fcc-editable-region--
  
--fcc-editable-region--
}

console.log(profile);
```
