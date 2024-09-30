---
id: 587d7db8367417b2b2512ba0
title: 문자와 숫자를 제외한 모든 것과 일치시키기
challengeType: 1
forumTopicId: 301353
dashedName: match-everything-but-letters-and-numbers
---

# --description--

문자와 숫자를 `\w`를 사용하여 `[A-Za-z0-9_]`로 일치시킬 수 있는 쉬운 방법을 배웠습니다. 내가 찾고 싶은 패턴이 문자와 숫자가 아닐 수도 있습니다.

`\w`의 반대를 `\W`로 검색할 수 있습니다. 반대 패턴은 대문자를 사용한다는 점에 유의하세요. 이 방법은 `[^A-Za-z0-9_]`과 동일합니다.

```js
let shortHand = /\W/;
let numbers = "42%";
let sentence = "Coding!";
numbers.match(shortHand);
sentence.match(shortHand);
```

첫 번째 `match` 호출은 `["%"]` 값을 반환하고 두 번째는 `["!"]`을 반환합니다.

# --instructions--

여러 인용문 및 문자열에서 비알파벳 및 비숫자 문자의 수를 세기 위해 단축 문자 클래스 `\W`를 사용하세요.

# --hints--

정규 표현식은 글로벌 플래그를 사용해야 합니다.

```js
assert(nonAlphabetRegex.global);
```

정규 표현식은 문자열 `The five boxing wizards jump quickly.`에서 6개의 비알파벳 및 비숫자 문자를 찾아야 합니다.

```js
assert(
  'The five boxing wizards jump quickly.'.match(nonAlphabetRegex).length == 6
);
```

정규 표현식은 비알파벳 및 비숫자 문자를 일치시키기 위해 단축 문자를 사용해야 합니다.

```js
assert(/\\W/.test(nonAlphabetRegex.source));
```

정규 표현식은 문자열 `Pack my box with five dozen liquor jugs.`에서 8개의 비알파벳 및 비숫자 문자를 찾아야 합니다.

```js
assert(
  'Pack my box with five dozen liquor jugs.'.match(nonAlphabetRegex).length == 8
);
```

정규 표현식은 문자열 `How vexingly quick daft zebras jump!`에서 6개의 비알파벳 및 비숫자 문자를 찾아야 합니다.

```js
assert(
  'How vexingly quick daft zebras jump!'.match(nonAlphabetRegex).length == 6
);
```

정규 표현식은 문자열 `123 456 7890 ABC def GHI jkl MNO pqr STU vwx YZ.`에서 12개의 비알파벳 및 비숫자 문자를 찾아야 합니다.

```js
assert(
  '123 456 7890 ABC def GHI jkl MNO pqr STU vwx YZ.'.match(nonAlphabetRegex)
    .length == 12
);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "The five boxing wizards jump quickly.";
let nonAlphabetRegex = /change/; // Change this line
let result = quoteSample.match(nonAlphabetRegex).length;
```

# --solutions--

```js
let quoteSample = "The five boxing wizards_jump quickly.";
let nonAlphabetRegex = /\W/g; // Change this line
let result = quoteSample.match(nonAlphabetRegex).length;
```
