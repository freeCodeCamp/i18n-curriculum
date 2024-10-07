---
id: 587d7db5367417b2b2512b97
title: Match Numbers and Letters of the Alphabet
challengeType: 1
forumTopicId: 301356
dashedName: match-numbers-and-letters-of-the-alphabet
---

# --description--

Using the hyphen (`-`) to match a range of characters is not limited to letters. It also works to match a range of numbers.

For example, `/[0-5]/` matches any number between `0` and `5`, including the `0` and `5`.

Also, it is possible to combine a range of letters and numbers in a single character set.

```js
let jennyStr = "Jenny8675309";
let myRegex = /[a-z0-9]/ig;
jennyStr.match(myRegex);
```

# --instructions--

Create a single regex that matches a range of letters between `h` and `s`, and a range of numbers between `2` and `6`. 정규 표현식에 적절한 플래그를 포함시키는 것을 기억하십시오.

# --hints--

Your regex `myRegex` should match 17 items.

```js
assert(result.length == 17);
```

정규 표현식 `myRegex`는 전역 플래그를 사용해야 합니다.

```js
assert(myRegex.flags.match(/g/).length == 1);
```

정규 표현식 `myRegex`는 대소문자 구분 없는 플래그를 사용해야 합니다.

```js
assert(myRegex.flags.match(/i/).length == 1);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "Blueberry 3.141592653s are delicious.";
let myRegex = /change/; // Change this line
let result = myRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "Blueberry 3.141592653s are delicious.";
let myRegex = /[h-s2-6]/gi; // Change this line
let result = quoteSample.match(myRegex); // Change this line
```
