---
id: 587d7db4367417b2b2512b90
title: 다양한 가능성을 가진 리터럴 문자열과 일치시키기
challengeType: 1
forumTopicId: 301345
dashedName: match-a-literal-string-with-different-possibilities
---

# --description--

`/coding/`과 같은 정규표현식을 사용하면 다른 문자열에서 `coding` 패턴을 찾을 수 있습니다.

이것은 단일 문자열을 검색하기에는 좋지만, 한 가지 패턴에만 국한됩니다. 여러 패턴을 `교대` 또는 `OR` 연산자: `|`를 사용하여 검색할 수 있습니다.

이 연산자는 그 전후의 패턴과 일치합니다. 예를 들어, `yes` 또는 `no` 문자열과 일치시키기 위한 정규 표현식은 `/yes|no/`입니다.

두 개 이상의 패턴을 검색할 수도 있습니다. `/yes|no|maybe/`와 같이 더 많은 패턴을 추가하면 여러 `OR` 연산자로 구분하여 이를 수행할 수 있습니다.

# --instructions--

`dog`, `cat`, `bird`, 또는 `fish`와 일치시키기 위해 `petRegex`를 완성하세요.

# --hints--

`petRegex` 정규표현식은 `John has a pet dog.` 문자열에 대해 `true`를 반환해야 합니다.

```js
petRegex.lastIndex = 0;
assert(petRegex.test('John has a pet dog.'));
```

`petRegex` 정규표현식은 `Emma has a pet rock.` 문자열에 대해 `false`를 반환해야 합니다.

```js
petRegex.lastIndex = 0;
assert(!petRegex.test('Emma has a pet rock.'));
```

`petRegex` 정규표현식은 `Emma has a pet bird.` 문자열에 대해 `true`를 반환해야 합니다.

```js
petRegex.lastIndex = 0;
assert(petRegex.test('Emma has a pet bird.'));
```

`petRegex` 정규표현식은 `Liz has a pet cat.` 문자열에 대해 `true`를 반환해야 합니다.

```js
petRegex.lastIndex = 0;
assert(petRegex.test('Liz has a pet cat.'));
```

`petRegex` 정규표현식은 `Kara has a pet dolphin.` 문자열에 대해 `false`를 반환해야 합니다.

```js
petRegex.lastIndex = 0;
assert(!petRegex.test('Kara has a pet dolphin.'));
```

`petRegex` 정규표현식은 `Alice has a pet fish.` 문자열에 대해 `true`를 반환해야 합니다.

```js
petRegex.lastIndex = 0;
assert(petRegex.test('Alice has a pet fish.'));
```

`petRegex` 정규표현식은 `Jimmy has a pet computer.` 문자열에 대해 `false`를 반환해야 합니다.

```js
petRegex.lastIndex = 0;
assert(!petRegex.test('Jimmy has a pet computer.'));
```

# --seed--

## --seed-contents--

```js
let petString = "James has a pet cat.";
let petRegex = /change/; // Change this line
let result = petRegex.test(petString);
```

# --solutions--

```js
let petString = "James has a pet cat.";
let petRegex = /dog|cat|bird|fish/; // Change this line
let result = petRegex.test(petString);
```
