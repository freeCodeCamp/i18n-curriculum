---
id: af2170cad53daa0770fabdea
title: 변이(Mutations)
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

Return `true` if the string in the first element of the array contains all of the letters of the string in the second element of the array.

예를 들어, `["hello", "Hello"]`는 대/소문자 구분을 하지 않는다면 첫 번째 문자열에 두 번째 문자열의 모든 글자가 있으므로 `true`를 반환해야 합니다.

`["hello", "hey"]`는 `hello`가 `y`를 포함하지 않기 때문에 `false`를 반환해야 합니다.

마지막으로 `["Alien", "line"]`는 `line`의 모든 글자가 `Alien`에 있으므로 `true`를 반환해야 합니다.

# --hints--

`mutation(["hello", "hey"])`은 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])`은 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])`은 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])`은 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])`은 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])`은 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])`은 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])`은 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])`은 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])`은 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])`은 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])`은 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
function mutation(arr) {
  return arr;
}

mutation(['hello', 'hey']);
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0]
    .toLowerCase()
    .split('')
    .forEach(c => (hash[c] = true));

  return !arr[1]
    .toLowerCase()
    .split('')
    .filter(c => !hash[c]).length;
}

mutation(['hello', 'hey']);
```
