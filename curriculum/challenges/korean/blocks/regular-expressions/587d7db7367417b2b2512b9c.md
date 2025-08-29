---
id: 587d7db7367417b2b2512b9c
title: 현장에서 한 명 이상의 범인을 찾기
challengeType: 1
forumTopicId: 301343
dashedName: find-one-or-more-criminals-in-a-hunt
---

# --description--

잠시 멈추고 새로 습득한 정규표현식 작성 기술을 테스트할 시간입니다. 범인들이 감옥에서 탈출하여 도망쳤으며, 몇 명인지 모릅니다. 하지만 그들이 다른 사람들 주변에 있을 때는 서로 가까이 붙어 다닌다는 것은 알고 있습니다. 당신은 모든 범인을 한 번에 찾아야 하는 책임을 맡고 있습니다.

다음을 통해 이 작업을 수행하는 방법을 검토해 보세요.

정규 표현식 `/z+/`는 문자 `z`가 한 번 이상 연속으로 나타나는 경우 일치합니다. 다음의 모든 문자열에서 일치하는 항목을 찾을 것입니다.

```js
"z"
"zzzzzz"
"ABCzzzz"
"zzzzABC"
"abczzzzzzzzzzzzzzzzzzzzzabc"
```

하지만 다음 문자열에서는 문자 `z` 문자가 없기 때문에 일치하는 항목을 찾을 수 없습니다.

```js
""
"ABC"
"abcabc"
```

# --instructions--

다른 사람들 그룹 내에서 한 명 이상의 범죄자를 찾는 탐욕적 정규식을 작성하세요. 범인은 대문자 `C`로 표시됩니다.

# --hints--

귀하의 regex는 문자열 `C`에서 하나의 범죄자 (`C`)를 일치시켜야 합니다.

```js
assert('C'.match(reCriminals) && 'C'.match(reCriminals)[0] == 'C');
```

귀하의 regex는 문자열 `CC`에서 두 명의 범죄자 (`CC`)를 일치시켜야 합니다.

```js
assert('CC'.match(reCriminals) && 'CC'.match(reCriminals)[0] == 'CC');
```

귀하의 regex는 문자열 `P1P5P4CCCcP2P6P3`에서 세 명의 범죄자 (`CCC`)를 일치시켜야 합니다.

```js
assert(
  'P1P5P4CCCcP2P6P3'.match(reCriminals) &&
    'P1P5P4CCCcP2P6P3'.match(reCriminals)[0] == 'CCC'
);
```

귀하의 regex는 문자열 `P6P2P7P4P5CCCCCP3P1`에서 다섯 명의 범죄자 (`CCCCC`)를 일치시켜야 합니다.

```js
assert(
  'P6P2P7P4P5CCCCCP3P1'.match(reCriminals) &&
    'P6P2P7P4P5CCCCCP3P1'.match(reCriminals)[0] == 'CCCCC'
);
```

귀하의 정규 표현식은 빈 문자열 `""`에서 어떤 범인과도 일치하지 않아야 합니다.

```js
reCriminals.lastIndex = 0;
assert(!reCriminals.test(''));
```

귀하의 정규 표현식은 문자열 `P1P2P3`에서 어떤 범인과도 일치하지 않아야 합니다.

```js
reCriminals.lastIndex = 0;
assert(!reCriminals.test('P1P2P3'));
```

귀하의 regex는 문자열 `P2P1P5P4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCP3`에서 쉰 명의 범죄자 (`CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC`)를 일치시켜야 합니다.

```js
assert(
  'P2P1P5P4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCP3'.match(
    reCriminals
  ) &&
    'P2P1P5P4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCP3'.match(
      reCriminals
    )[0] == 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC'
);
```

# --seed--

## --seed-contents--

```js
let reCriminals = /./; // Change this line
```

# --solutions--

```js
let reCriminals = /C+/; // Change this line
```
