---
id: af2170cad53daa0770fabdea
title: 변이(Mutations)
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

배열의 첫 번째 요소에 있는 문자열이 두 번째 요소에 있는 문자열의 모든 글자를 포함하면 `true`를 반환하세요.

예를 들어, `["hello", "Hello"]`는 대/소문자 구분을 하지 않는다면 첫 번째 문자열에 두 번째 문자열의 모든 글자가 있으므로 `true`를 반환해야 합니다.

`["hello", "hey"]`는 `hello`가 `y`를 포함하지 않기 때문에 `false`를 반환해야 합니다.

마지막으로 `["Alien", "line"]`는 `line`의 모든 글자가 `Alien`에 있으므로 `true`를 반환해야 합니다.

# --hints--

`mutation(["hello", "hey"])`은 `false`를 반환해야 합니다.

```js
assert(mutation(['hello', 'hey']) === false);
```

`mutation(["hello", "Hello"])`은 `true`를 반환해야 합니다.

```js
assert(mutation(['hello', 'Hello']) === true);
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])`은 `true`를 반환해야 합니다.

```js
assert(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']) === true);
```

`mutation(["Mary", "Army"])`은 `true`를 반환해야 합니다.

```js
assert(mutation(['Mary', 'Army']) === true);
```

`mutation(["Mary", "Aarmy"])`은 `true`를 반환해야 합니다.

```js
assert(mutation(['Mary', 'Aarmy']) === true);
```

`mutation(["Alien", "line"])`은 `true`를 반환해야 합니다.

```js
assert(mutation(['Alien', 'line']) === true);
```

`mutation(["floor", "for"])`은 `true`를 반환해야 합니다.

```js
assert(mutation(['floor', 'for']) === true);
```

`mutation(["hello", "neo"])`은 `false`를 반환해야 합니다.

```js
assert(mutation(['hello', 'neo']) === false);
```

`mutation(["voodoo", "no"])`은 `false`를 반환해야 합니다.

```js
assert(mutation(['voodoo', 'no']) === false);
```

`mutation(["ate", "date"])`은 `false`를 반환해야 합니다.

```js
assert(mutation(['ate', 'date']) === false);
```

`mutation(["Tiger", "Zebra"])`은 `false`를 반환해야 합니다.

```js
assert(mutation(['Tiger', 'Zebra']) === false);
```

`mutation(["Noel", "Ole"])`은 `true`를 반환해야 합니다.

```js
assert(mutation(['Noel', 'Ole']) === true);
```

# --seed--

## --seed-contents--

```js
function mutation(arr) {
  return arr;
}

mutation(["hello", "hey"]);
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0].toLowerCase().split('').forEach(c => hash[c] = true);

  return !arr[1].toLowerCase().split('').filter(c => !hash[c]).length;
}

mutation(["hello", "hey"]);
```
