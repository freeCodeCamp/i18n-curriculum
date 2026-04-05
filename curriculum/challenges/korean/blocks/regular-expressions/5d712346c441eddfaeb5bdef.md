---
id: 5d712346c441eddfaeb5bdef
title: 모든 숫자 찾기
challengeType: 1
forumTopicId: 18181
dashedName: match-all-numbers
---

# --description--

영숫자 같은 일반적인 문자열 패턴에 대한 단축키를 배웠습니다. 또 다른 흔한 패턴은 숫자 또는 숫자만 찾는 것입니다.

숫자 문자를 찾는 단축키는 `\d`이며, 소문자 `d`입니다. 이는 0부터 9 사이의 숫자 중 하나를 찾는 문자 클래스 `[0-9]`와 같습니다.

# --instructions--

영화 제목에 포함된 숫자가 몇 개인지 세기 위해 단축 문자 클래스 `\d`를 사용하세요. 숫자를 쓴 단어("six" 대신 6)는 포함하지 않습니다.

# --hints--

정규식은 숫자 문자를 찾기 위해 단축 문자를 사용해야 합니다

```js
assert(/\\d/.test(numRegex.source));
```

정규식은 전역 플래그를 사용해야 합니다.

```js
assert(numRegex.global);
```

정규식은 문자열 `9`에서 숫자 1개를 찾아야 합니다.

```js
assert('9'.match(numRegex).length == 1);
```

정규식은 문자열 `Catch 22`에서 숫자 2개를 찾아야 합니다.

```js
assert('Catch 22'.match(numRegex).length == 2);
```

정규식은 문자열 `101 Dalmatians`에서 숫자 3개를 찾아야 합니다.

```js
assert('101 Dalmatians'.match(numRegex).length == 3);
```

정규식은 문자열 `One, Two, Three`에서 숫자를 찾지 못해야 합니다.

```js
assert('One, Two, Three'.match(numRegex) == null);
```

정규식은 문자열 `21 Jump Street`에서 숫자 2개를 찾아야 합니다.

```js
assert('21 Jump Street'.match(numRegex).length == 2);
```

정규식은 문자열 `2001: A Space Odyssey`에서 숫자 4개를 찾아야 합니다.

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
