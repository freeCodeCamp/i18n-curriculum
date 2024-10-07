---
id: 587d7db2367417b2b2512b8c
title: 모듈 생성을 위한 IIFE 사용하기
challengeType: 1
forumTopicId: 301332
dashedName: use-an-iife-to-create-a-module
---

# --description--

An immediately invoked function expression (IIFE) is often used to group related functionality into a single object or <dfn>module</dfn>. For example, an earlier challenge defined two mixins:

```js
function glideMixin(obj) {
  obj.glide = function() {
    console.log("Gliding on the water");
  };
}
function flyMixin(obj) {
  obj.fly = function() {
    console.log("Flying, wooosh!");
  };
}
```

다음과 같이 이 두 미스인을 모듈로 만들 수 있습니다.

```js
let motionModule = (function () {
  return {
    glideMixin: function(obj) {
      obj.glide = function() {
        console.log("Gliding on the water");
      };
    },
    flyMixin: function(obj) {
      obj.fly = function() {
        console.log("Flying, wooosh!");
      };
    }
  }
})();
```

객체 `motionModule`를 반환하는 즉각 호출 함수 표현(IIFE)이 있다는 것에 주의를 기울일 필요가 있습니다. 이 반환된 객체는 객체의 속성같이 모든 믹스인의 행동들을 가지고 있습니다. 모듈 패턴의 이점은 모든 행동들이 다른 곳에서 사용될 수 있도록 한 객체에 담길 수 있다는 것입니다. 여기 사용 예시가 있습니다.

```js
motionModule.glideMixin(duck);
duck.glide();
```

# --instructions--

두 개의 믹스인 `isCuteMixin`과 `singMixin`을 담는 모듈 `funModule`을 생성하시오. `funModule`는 객체를 반환해야 합니다.

# --hints--

`funModule`은 정의되어 객체를 반환해야 합니다.

```js
assert(typeof funModule === 'object');
```

`funModule.isCuteMixin`는 함수에 접근할 수 있어야 합니다.

```js
assert(typeof funModule.isCuteMixin === 'function');
```

`funModule.singMixin`는 함수에 접근할 수 있어야 합니다.

```js
assert(typeof funModule.singMixin === 'function');
```

# --seed--

## --seed-contents--

```js
let isCuteMixin = function(obj) {
  obj.isCute = function() {
    return true;
  };
};
let singMixin = function(obj) {
  obj.sing = function() {
    console.log("Singing to an awesome tune");
  };
};
```

# --solutions--

```js
const funModule = (function () {
  return {
    isCuteMixin: obj => {
      obj.isCute = () => true;
    },
    singMixin: obj => {
      obj.sing = () => console.log("Singing to an awesome tune");
    }
  };
})();
```
