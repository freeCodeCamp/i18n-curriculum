---
id: 587d7db5367417b2b2512b95
title: 하나의 문자와 여러 가능성의 문자 일치
challengeType: 1
forumTopicId: 301357
dashedName: match-single-character-with-multiple-possibilities
---

# --description--

You learned how to match literal patterns (`/literal/`) and wildcard character (`/./`). Those are the extremes of regular expressions, where one finds exact matches and the other matches everything. There are options that are a balance between the two extremes.

일부 유연성을 가진 문자 그대로의 패턴을 검색하려면 <dfn>문자 클래스</dfn>를 사용할 수 있습니다. 문자 클래스는 대괄호(`[` 및 `]`) 안에 일치시키고자 하는 문자 그룹을 정의할 수 있도록 합니다.

예를 들어, `bag`, `big`, `bug`에 일치시키고 싶지만 `bog`에는 일치시키지 않고 싶습니다. 이를 위해 정규 표현식 `/b[aiu]g/`를 만들 수 있습니다. `[aiu]`는 문자 클래스이며 `a`, `i`, 또는 `u`만 일치시킵니다.

```js
let bigStr = "big";
let bagStr = "bag";
let bugStr = "bug";
let bogStr = "bog";
let bgRegex = /b[aiu]g/;
bigStr.match(bgRegex);
bagStr.match(bgRegex);
bugStr.match(bgRegex);
bogStr.match(bgRegex);
```

순서대로, 네 번의 `match` 호출은 `["big"]`, `["bag"]`, `["bug"]`, 그리고 `null` 값을 반환합니다.

# --instructions--

정규 표현식 `vowelRegex`에서 모음(`a`, `e`, `i`, `o`, `u`)을 사용하여 문자열 `quoteSample`에서 모든 모음을 찾으세요.

**참고:** 대문자와 소문자 모음을 모두 일치시켜야 합니다.

# --hints--

모든 25개의 모음을 찾아야 합니다.

```js
assert(result.length == 25);
```

정규 표현식 `vowelRegex`는 문자 클래스를 사용해야 합니다.

```js
assert(/\[.*\]/.test(vowelRegex.source));
```

정규 표현식 `vowelRegex`는 글로벌 플래그를 사용해야 합니다.

```js
assert(vowelRegex.flags.match(/g/).length == 1);
```

정규 표현식 `vowelRegex`는 대소문자 구분 없는 플래그를 사용해야 합니다.

```js
assert(vowelRegex.flags.match(/i/).length == 1);
```

정규 표현식은 어떠한 자음도 일치시키지 않아야 합니다.

```js
assert(!/[b-df-hj-np-tv-z]/gi.test(result.join()));
```

# --seed--

## --seed-contents--

```js
let quoteSample = "Beware of bugs in the above code; I have only proved it correct, not tried it.";
let vowelRegex = /change/; // Change this line
let result = vowelRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "Beware of bugs in the above code; I have only proved it correct, not tried it.";
let vowelRegex = /[aeiou]/gi; // Change this line
let result = quoteSample.match(vowelRegex); // Change this line
```
