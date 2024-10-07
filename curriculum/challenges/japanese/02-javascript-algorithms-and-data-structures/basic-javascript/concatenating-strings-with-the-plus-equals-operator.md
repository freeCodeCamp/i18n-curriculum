---
id: 56533eb9ac21ba0edf2244b8
title: 文字列を += 演算子で連結する
challengeType: 1
videoUrl: 'https://scrimba.com/c/cbQmmC4'
forumTopicId: 16803
dashedName: concatenating-strings-with-the-plus-equals-operator
---

# --description--

We can also use the `+=` operator to <dfn>concatenate</dfn> a string onto the end of an existing string variable. This can be very helpful to break a long string over several lines.

**注:** 空白が必要な場合は注意してください。 連結では、文字列の間に空白が追加されないため、必要な場合は自分で付け加える必要があります。

例:

```js
let ourStr = "I come first. ";
ourStr += "I come second.";
```

`ourStr` now has a value of the string `I come first. I come second.`.

# --instructions--

`+=` 演算子を使用して、`This is the first sentence.` と `This is the second sentence.` の 2 つの文字列を連結し、複数行にわたる `myStr` を作成してください。 前の例のように、`+=` 演算子を使用し、必ず 2 つの文字列の間に空白を入れてください。 まず `myStr` に 1 つ目の文字列を代入し、それから 2 つ目の文字列を追加してください。

# --hints--

`myStr` は、2 つの文字列の間に空白文字を含む必要があります。

```js
assert(/sentence\. This/.test(myStr));
```

`myStr` should have a value of the string `This is the first sentence. This is the second sentence.`

```js
assert(myStr === 'This is the first sentence. This is the second sentence.');
```

`+=` 演算子を使用して `myStr` を作成する必要があります。

```js
assert(__helpers.removeJSComments(code).match(/myStr\s*\+=\s*(["']).*\1/g));
```

# --seed--

## --after-user-code--

```js
(function(){
  if(typeof myStr === 'string') {
    return 'myStr = "' + myStr + '"';
  } else {
    return 'myStr is not a string';
  }
})();
```

## --seed-contents--

```js
let myStr;
```

# --solutions--

```js
let myStr = "This is the first sentence. ";
myStr += "This is the second sentence.";
```
