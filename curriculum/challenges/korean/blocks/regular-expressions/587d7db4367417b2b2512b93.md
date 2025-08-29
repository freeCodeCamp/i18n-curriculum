---
id: 587d7db4367417b2b2512b93
title: 첫 번째 일치보다 더 많은 것을 찾기
challengeType: 1
forumTopicId: 301342
dashedName: find-more-than-the-first-match
---

# --description--

So far, you have only been able to extract or search a pattern once.

```js
let testStr = "Repeat, Repeat, Repeat";
let ourRegex = /Repeat/;
testStr.match(ourRegex);
```

여기서 `match`는 `["Repeat"]`를 반환합니다.

패턴을 한 번 이상 검색하거나 추출하려면 글로벌 검색 플래그 `g`를 사용할 수 있습니다.

```js
let repeatRegex = /Repeat/g;
testStr.match(repeatRegex);
```

그리고 여기서 `match`는 `["Repeat", "Repeat", "Repeat"]` 값을 반환합니다.

# --instructions--

정규 표현식 `starRegex`를 사용하여 문자열 `twinkleStar`에서 `Twinkle` 단어를 추출하십시오.

**참고**  
정규 표현식에 `/search/gi`와 같은 여러 플래그를 사용할 수 있습니다.

# --hints--

정규 표현식 `starRegex`는 전역 플래그 `g`를 사용해야 합니다.

```js
assert(starRegex.flags.match(/g/).length == 1);
```

정규 표현식 `starRegex`는 대소문자를 구분하지 않는 플래그 `i`를 사용해야 합니다.

```js
assert(starRegex.flags.match(/i/).length == 1);
```

매치는 `Twinkle` 단어가 두 번 등장하는 경우 모두를 매칭해야 합니다.

```js
assert(
  result.sort().join() ==
    twinkleStar
      .match(/twinkle/gi)
      .sort()
      .join()
);
```

매치 `result`에는 두 개의 요소가 포함되어야 합니다.

```js
assert(result.length == 2);
```

# --seed--

## --seed-contents--

```js
let twinkleStar = "Twinkle, twinkle, little star";
let starRegex = /change/; // Change this line
let result = twinkleStar; // Change this line
```

# --solutions--

```js
let twinkleStar = "Twinkle, twinkle, little star";
let starRegex = /twinkle/gi;
let result = twinkleStar.match(starRegex);
```
