---
id: 587d7dae367417b2b2512b7b
title: 고유 속성 이해하기
challengeType: 1
forumTopicId: 301326
dashedName: understand-own-properties
---

# --description--

In the following example, the `Bird` constructor defines two properties: `name` and `numLegs`:

```js
function Bird(name) {
  this.name = name;
  this.numLegs = 2;
}

let duck = new Bird("Donald");
let canary = new Bird("Tweety");
```

`name`과 `numLegs` 는 <dfn>고유 속성</dfn>인데 이유는 인스턴스 객체 안에 직접 정의가 되었기 때문입니다. 이는 `duck`과 `canary`가 각각 이 속성에 대한 고유의 복사본을 가지고 있다는 것을 뜻합니다. 사실 `Bird`의 모든 인스턴스는 이 속성에 대한 고유의 복소본을 가지게 될 것입니다. 다음 코드는 `duck` 의 모든 고유 속성들을 배열 `ownProps`에 추가합니다.

```js
let ownProps = [];

for (let property in duck) {
  if(duck.hasOwnProperty(property)) {
    ownProps.push(property);
  }
}

console.log(ownProps);
```

콘솔(console)이 `["name", "numLegs"]`이라는 값을 보여줄 것입니다.

# --instructions--

`canary`의 고유 속성들을 배열 `ownProps`에 추가하시오.

# --hints--

`ownProps`은 `numLegs`와 `name` 값을 가지고 있어야 합니다.

```js
assert(ownProps.indexOf('name') !== -1 && ownProps.indexOf('numLegs') !== -1);
```

내장 메소드인 `Object.keys()`를 사용하지 않고 과제를 진행해야 합니다.

```js
assert(!/Object(\.keys|\[(['"`])keys\2\])/.test(__helpers.removeJSComments(code)));
```

배열 `ownProps`을 하드 코딩(hardcoding)하지 않고 과제를 진행해야 합니다.

```js
assert(
  !/\[\s*(?:'|")(?:name|numLegs)|(?:push|concat)\(\s*(?:'|")(?:name|numLegs)/.test(
    __helpers.removeJSComments(code)
  )
);
```

# --seed--

## --seed-contents--

```js
function Bird(name) {
  this.name = name;
  this.numLegs = 2;
}

let canary = new Bird("Tweety");
let ownProps = [];
// Only change code below this line
```

# --solutions--

```js
function Bird(name) {
  this.name = name;
  this.numLegs = 2;
}

let canary = new Bird("Tweety");
function getOwnProps (obj) {
  const props = [];

  for (let prop in obj) {
    if (obj.hasOwnProperty(prop)) {
      props.push(prop);
    }
  }

  return props;
}

const ownProps = getOwnProps(canary);
```
