---
id: 5d712346c441eddfaeb5bdef
title: 모든 숫자 일치시키기
challengeType: 1
forumTopicId: 18181
dashedName: match-all-numbers
---

# --description--

일반적인 영숫자 같은 문자열 패턴을 위한 단축키를 배웠습니다. 또 다른 일반적인 패턴은 숫자만을 찾는 것입니다.

숫자를 찾기 위한 단축키는 `\d`이며, 소문자 `d`를 사용합니다. 이것은 숫자 0에서 9 사이 임의의 한 문자와 일치하는 문자 클래스 `[0-9]`와 같습니다.

# --instructions--

숫자들이 영화 제목에 몇 개나 있는지 세기 위해 단축 문자 클래스 `\d`를 사용하세요. 쓰기 형식의 숫자(6 대신에 "six")는 포함되지 않습니다.

# --hints--

정규 표현식은 숫자 문자를 일치시키기 위해 단축 문자를 사용해야 합니다

```js
assert(/\\d/.test(numRegex.source));
```

정규 표현식은 글로벌 플래그를 사용해야 합니다.

```js
assert(numRegex.global);
```

정규 표현식은 문자열 `9`에서 1개의 숫자를 찾아야 합니다.

```js
assert('9'.match(numRegex).length == 1);
```

정규 표현식은 문자열 `Catch 22`에서 2개의 숫자를 찾아야 합니다.

```js
assert('Catch 22'.match(numRegex).length == 2);
```

정규 표현식은 문자열 `101 Dalmatians`에서 3개의 숫자를 찾아야 합니다.

```js
assert('101 Dalmatians'.match(numRegex).length == 3);
```

정규 표현식은 문자열 `One, Two, Three`에서 숫자를 찾지 않아야 합니다.

```js
assert('One, Two, Three'.match(numRegex) == null);
```

정규 표현식은 문자열 `21 Jump Street`에서 2개의 숫자를 찾아야 합니다.

```js
assert('21 Jump Street'.match(numRegex).length == 2);
```

정규 표현식은 문자열 `2001: A Space Odyssey`에서 4개의 숫자를 찾아야 합니다.

```js
assert('2001: A Space Odyssey'.match(numRegex).length == 4);
```

# --seed--

## --seed-contents--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /change/; // Change this line
let result = movieName.match(numRegex).length;
```

# --solutions--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /\d/g; // Change this line
let result = movieName.match(numRegex).length;
```
