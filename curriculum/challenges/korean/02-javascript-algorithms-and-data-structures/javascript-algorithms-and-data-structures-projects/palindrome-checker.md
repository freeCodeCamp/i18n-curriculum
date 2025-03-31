---
id: aaa48de84e1ecc7c742e1124
title: 회문 검사기
challengeType: 5
forumTopicId: 16004
dashedName: palindrome-checker
---

# --description--

주어진 문자열이 회문이면 `true`를 반환하십시오. 그렇지 않으면 `false`를 반환합니다.

<dfn>회문</dfn>은 구두점, 대소문자 및 공간을 무시하고, 앞뒤로 동일한 방법으로 철자되는 단어나 문장입니다.

**참고:** 회문을 확인하기 위해 **모든 영숫자가 아닌 문자**(구두점, 공백 및 기호)를 제거하고 모든 것을 동일한 대소문자로 변경해야 합니다(소문자 또는 대문자).

`racecar`, `RaceCar`, `race CAR` 등 다양한 형식의 문자열을 전달할 것입니다.

`2A3*3a2`, `2A3 3a2`, `2_A3*3#A2`와 같은 특수 기호가 있는 문자열도 전달할 것입니다.

# --hints--

`palindrome("eye")`는 boolean을 반환해야 합니다.

```js
assert(typeof palindrome('eye') === 'boolean');
```

`palindrome("eye")`는 `true`를 반환해야 합니다.

```js
assert(palindrome('eye') === true);
```

`palindrome("_eye")`는 `true`를 반환해야 합니다.

```js
assert(palindrome('_eye') === true);
```

`palindrome("race car")`는 `true`를 반환해야 합니다.

```js
assert(palindrome('race car') === true);
```

`palindrome("not a palindrome")`는 `false`를 반환해야 합니다.

```js
assert(palindrome('not a palindrome') === false);
```

`palindrome("A man, a plan, a canal. Panama")`는 `true`를 반환해야 합니다.

```js
assert(palindrome('A man, a plan, a canal. Panama') === true);
```

`palindrome("never odd or even")`는 `true`를 반환해야 합니다.

```js
assert(palindrome('never odd or even') === true);
```

`palindrome("nope")`는 `false`를 반환해야 합니다.

```js
assert(palindrome('nope') === false);
```

`palindrome("almostomla")`는 `false`를 반환해야 합니다.

```js
assert(palindrome('almostomla') === false);
```

`palindrome("My age is 0, 0 si ega ym.")`는 `true`를 반환해야 합니다.

```js
assert(palindrome('My age is 0, 0 si ega ym.') === true);
```

`palindrome("1 eye for of 1 eye.")`는 `false`를 반환해야 합니다.

```js
assert(palindrome('1 eye for of 1 eye.') === false);
```

`palindrome("0_0 (: /-\ :) 0-0")`는 `true`를 반환해야 합니다.

```js
assert(palindrome('0_0 (: /- :) 0-0') === true);
```

`palindrome("five|\_/|four")` should return `false`.

```js
assert(palindrome('five|_/|four') === false);
```

# --seed--

## --seed-contents--

```js
function palindrome(str) {
  return true;
}

palindrome("eye");
```

# --solutions--

```js
function palindrome(str) {
  var string = str.toLowerCase().split(/[^A-Za-z0-9]/gi).join('');
  var aux = string.split('');
  if (aux.join('') === aux.reverse().join('')){
    return true;
  }

  return false;
}
```
