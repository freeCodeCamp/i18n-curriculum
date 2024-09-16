---
id: ac6993d51946422351508a41
title: 문자열 자르기
challengeType: 1
forumTopicId: 16089
dashedName: truncate-a-string
---

# --description--

주어진 최대 문자열 길이(두 번째 인수)보다 문자열(첫 번째 인수)이 긴 경우 문자열을 자르세요. 잘린 문자열은 끝에 `...`와 함께 반환되어야 합니다.

# --hints--

`truncateString("A-tisket a-tasket A green and yellow basket", 8)`은 문자열 `A-tisket...`을 반환해야 합니다.

```js
assert(
  truncateString('A-tisket a-tasket A green and yellow basket', 8) ===
    'A-tisket...'
);
```

`truncateString("Peter Piper picked a peck of pickled peppers", 11)`은 문자열 `Peter Piper...`을 반환해야 합니다.

```js
assert(
  truncateString('Peter Piper picked a peck of pickled peppers', 11) ===
    'Peter Piper...'
);
```

`truncateString("A-tisket a-tasket A green and yellow basket", "A-tisket a-tasket A green and yellow basket".length)`은 문자열 `A-tisket a-tasket A green and yellow basket`을 반환해야 합니다.

```js
assert(
  truncateString(
    'A-tisket a-tasket A green and yellow basket',
    'A-tisket a-tasket A green and yellow basket'.length
  ) === 'A-tisket a-tasket A green and yellow basket'
);
```

`truncateString("A-tisket a-tasket A green and yellow basket", "A-tisket a-tasket A green and yellow basket".length + 2)`은 문자열 `A-tisket a-tasket A green and yellow basket`을 반환해야 합니다.

```js
assert(
  truncateString(
    'A-tisket a-tasket A green and yellow basket',
    'A-tisket a-tasket A green and yellow basket'.length + 2
  ) === 'A-tisket a-tasket A green and yellow basket'
);
```

`truncateString("A-", 1)`은 문자열 `A...`을 반환해야 합니다.

```js
assert(truncateString('A-', 1) === 'A...');
```

`truncateString("Absolutely Longer", 2)`은 문자열 `Ab...`을 반환해야 합니다.

```js
assert(truncateString('Absolutely Longer', 2) === 'Ab...');
```

# --seed--

## --seed-contents--

```js
function truncateString(str, num) {
  return str;
}

truncateString("A-tisket a-tasket A green and yellow basket", 8);
```

# --solutions--

```js
function truncateString(str, num) {
  if (num >= str.length) {
    return str;
  }

  return str.slice(0, num) + '...';
}

truncateString("A-tisket a-tasket A green and yellow basket", 8);
```
