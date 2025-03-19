---
id: 587d7dab367417b2b2512b6d
title: 문자열을 URL 슬러그로 변환을 위해 함수형 프로그래밍 적용하기
challengeType: 1
forumTopicId: 301227
dashedName: apply-functional-programming-to-convert-strings-to-url-slugs
---

# --description--

이전 몇몇 과제에서 함수형 프로그래밍의 원칙을 따르는 유용한 배열 및 문자열 메소드를 다뤘습니다. 문제들을 간단한 형태로 줄여주기 위해 사용하는 `reduce`도 알아봤습니다. From computing averages to sorting, any array operation can be achieved by applying it. Recall that `map` and `filter` are special cases of `reduce`.

실제 문제를 해결하기 위해 배운 것을 조합해보겠습니다.

많은 콘텐츠 관리 사이트(CMS)가 표시를 목적으로 URL에 글의 제목을 넣습니다. 예를 들면 `Stop Using Reduce`이라는 제목을 가진 Medium 글을 쓴다면 (`.../stop-using-reduce`)처럼 URL 안에 제목이 삽입된 형태를 가질 것입니다. FreeCodeCamp 사이트에서도 이를 눈치채셨을 것입니다.

# --instructions--

`title`이라는 문자열을 변환하여 붙임표(hypen)로 연결된 URL를 반환하도록 `urlSlug` 함수를 채우시오. `replace`를 빼고 이 부분에서 다룬 모든 메소드를 사용해도 됩니다. 여기 조건이 있습니다.

입력은 공백과 제목 케이스(title-case)로 된 문자열입니다.

출력은 단어 사이에 공백이 붙임표((`-`)로 대체된 문자열입니다.

출력은 모두 소문자 글자이어야 합니다.

출력은 공백이 없어야 합니다.

# --hints--

이번 과제에서는 `replace` 메소드를 사용하지 않아야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?replace/g));
```

`urlSlug("Winter Is Coming")`는 문자열 `winter-is-coming`을 반환해야 합니다.

```js
assert(urlSlug('Winter Is Coming') === 'winter-is-coming');
```

`urlSlug(" Winter Is  Coming")`는 문자열 `winter-is-coming`을 반환해야 합니다.

```js
assert(urlSlug(' Winter Is  Coming') === 'winter-is-coming');
```

`urlSlug("A Mind Needs Books Like A Sword Needs A Whetstone")`는 문자열 `a-mind-needs-books-like-a-sword-needs-a-whetstone`를 반환해야 합니다.

```js
assert(
  urlSlug('A Mind Needs Books Like A Sword Needs A Whetstone') ===
    'a-mind-needs-books-like-a-sword-needs-a-whetstone'
);
```

`urlSlug("Hold The Door")`는 `hold-the-door`를 반환해야 합니다.

```js
assert(urlSlug('Hold The Door') === 'hold-the-door');
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
function urlSlug(title) {


}
// Only change code above this line
urlSlug("A Mind Needs Books Like A Sword Needs A Whetstone");
```

# --solutions--

```js
function urlSlug(title) {
  return title.trim().split(/\s+/).join("-").toLowerCase();
}
```
