---
id: a0b5010f579e69b815e7c5d6
title: 검색 및 교체
challengeType: 1
forumTopicId: 16045
dashedName: search-and-replace
---

# --description--

Perform a search and replace on the sentence using the arguments provided and return the new sentence.

첫 번째 인수는 검색 및 교체를 수행할 문장입니다.

두 번째 인수는 교체할 단어입니다 (교체 이전).

세 번째 인수는 두 번째 인수를 교체할 내용입니다 (교체 이후).

**주의:** 교체할 때 원래 단어의 첫 번째 문자 대소문자를 유지하십시오. 예를 들어 `Book`이라는 단어를 `dog`로 교체하려면, `Dog`로 교체되어야 합니다.

# --hints--

`myReplace("Let us go to the store", "store", "mall")`는 문자열 `Let us go to the mall`을 반환해야 합니다.

```js
assert.deepEqual(
  myReplace('Let us go to the store', 'store', 'mall'),
  'Let us go to the mall'
);
```

`myReplace("He is Sleeping on the couch", "Sleeping", "sitting")`는 문자열 `He is Sitting on the couch`을 반환해야 합니다.

```js
assert.deepEqual(
  myReplace('He is Sleeping on the couch', 'Sleeping', 'sitting'),
  'He is Sitting on the couch'
);
```

`myReplace("I think we should look up there", "up", "Down")`는 문자열 `I think we should look down there`을 반환해야 합니다.

```js
assert.deepEqual(
  myReplace('I think we should look up there', 'up', 'Down'),
  'I think we should look down there'
);
```

`myReplace("This has a spellngi error", "spellngi", "spelling")`는 문자열 `This has a spelling error`을 반환해야 합니다.

```js
assert.deepEqual(
  myReplace('This has a spellngi error', 'spellngi', 'spelling'),
  'This has a spelling error'
);
```

`myReplace("His name is Tom", "Tom", "john")`는 문자열 `His name is John`을 반환해야 합니다.

```js
assert.deepEqual(
  myReplace('His name is Tom', 'Tom', 'john'),
  'His name is John'
);
```

`myReplace("Let us get back to more Coding", "Coding", "algorithms")`는 문자열 `Let us get back to more Algorithms`을 반환해야 합니다.

```js
assert.deepEqual(
  myReplace('Let us get back to more Coding', 'Coding', 'algorithms'),
  'Let us get back to more Algorithms'
);
```

# --seed--

## --seed-contents--

```js
function myReplace(str, before, after) {
  return str;
}

myReplace("A quick brown fox jumped over the lazy dog", "jumped", "leaped");
```

# --solutions--

```js
function myReplace(str, before, after) {
  if (before.charAt(0) === before.charAt(0).toUpperCase()) {
    after = after.charAt(0).toUpperCase() + after.substring(1);
  } else {
    after = after.charAt(0).toLowerCase() + after.substring(1);
  }
  return str.replace(before, after);
}
```
