---
id: 56533eb9ac21ba0edf2244ca
title: 객체를 사용한 조회하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cdBk8sM'
forumTopicId: 18373
dashedName: using-objects-for-lookups
---

# --description--

객체는 사전처럼 키와 값의 저장소로 생각할 수 있습니다. 테이블 형태의 데이터를 가지고 있다면 값을 조회하기 위해 `switch` 문이나 `if/else` 문을 사용하기보단 객체를 사용할 수 있습니다. 이는 입력 데이터가 특정 범위에 제한되어 있다는 것을 알 때 가장 유용합니다.

여기 글 객체에 대한 예시가 있습니다:

```js
const article = {
  "title": "How to create objects in JavaScript",
  "link": "https://www.freecodecamp.org/news/a-complete-guide-to-creating-objects-in-javascript-b0e2450655e8/",
  "author": "Kaashan Hussain",
  "language": "JavaScript",
  "tags": "TECHNOLOGY",
  "createdAt": "NOVEMBER 28, 2018"
};

const articleAuthor = article["author"];
const articleLink = article["link"];

const value = "title";
const valueLookup = article[value];
```

`articleAuthor`는 문자열 `Kaashan Hussain`이며, `articleLink`는 문자열 `https://www.freecodecamp.org/news/a-complete-guide-to-creating-objects-in-javascript-b0e2450655e8/`이고, `valueLookup`는 문자열 `How to create objects in JavaScript`입니다.

# --instructions--

switch 문을 `lookup`이라는 객체로 변환하시오. `val` 을 찾고 연관된 문자열을 `result`에 할당하도록 해당 객체를 사용하시오.

# --hints--

`phoneticLookup("alpha")`은 문자열 `Adams`과 같아야 합니다

```js
assert(phoneticLookup('alpha') === 'Adams');
```

`phoneticLookup("bravo")`은 문자열 `Boston`과 같아야 합니다

```js
assert(phoneticLookup('bravo') === 'Boston');
```

`phoneticLookup("charlie")`은 문자열 `Chicago`과 같아야 합니다

```js
assert(phoneticLookup('charlie') === 'Chicago');
```

`phoneticLookup("delta")`은 문자열 `Denver`과 같아야 합니다.

```js
assert(phoneticLookup('delta') === 'Denver');
```

`phoneticLookup("echo")`은 문자열 `Easy`과 같아야 합니다

```js
assert(phoneticLookup('echo') === 'Easy');
```

`phoneticLookup("foxtrot")`은 문자열 `Frank`과 같아야 합니다

```js
assert(phoneticLookup('foxtrot') === 'Frank');
```

`phoneticLookup("")`은 `undefined`과 같아야 합니다

```js
assert(typeof phoneticLookup('') === 'undefined');
```

`return`문을 수정하지 않아야 합니다

```js
assert(__helpers.removeJSComments(code).match(/return\sresult;/));
```

`case`, `switch`, 혹은 `if`문을 사용하지 않아야 합니다.

```js
assert(
  !/case|switch|if/g.test(__helpers.removeJSComments(code).replace(/([/]{2}.*)|([/][*][^/*]*[*][/])/g, ''))
);
```

# --seed--

## --seed-contents--

```js
// Setup
function phoneticLookup(val) {
  let result = "";

  // Only change code below this line
  switch(val) {
    case "alpha":
      result = "Adams";
      break;
    case "bravo":
      result = "Boston";
      break;
    case "charlie":
      result = "Chicago";
      break;
    case "delta":
      result = "Denver";
      break;
    case "echo":
      result = "Easy";
      break;
    case "foxtrot":
      result = "Frank";
  }

  // Only change code above this line
  return result;
}

phoneticLookup("charlie");
```

# --solutions--

```js
function phoneticLookup(val) {
  let result = "";

  const lookup = {
    alpha: "Adams",
    bravo: "Boston",
    charlie: "Chicago",
    delta: "Denver",
    echo: "Easy",
    foxtrot: "Frank"
  };

  result = lookup[val];

  return result;
}
```
