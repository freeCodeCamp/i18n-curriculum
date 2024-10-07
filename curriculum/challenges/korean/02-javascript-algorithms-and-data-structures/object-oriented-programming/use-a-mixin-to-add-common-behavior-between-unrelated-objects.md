---
id: 587d7db2367417b2b2512b89
title: 서로 무관한 객체들에 일반적인 행동 추가를 위한 믹스인(Mixin) 사용하기
challengeType: 1
forumTopicId: 301331
dashedName: use-a-mixin-to-add-common-behavior-between-unrelated-objects
---

# --description--

As you have seen, behavior is shared through inheritance. However, there are cases when inheritance is not the best solution. Inheritance does not work well for unrelated objects like `Bird` and `Airplane`. They can both fly, but a `Bird` is not a type of `Airplane` and vice versa.

서로 무관한 객체는 <dfn>mixins</dfn>을 사용하는 것이 더 적합합니다. 믹스인은 다른 객체들이 함수의 집합을 사용할 수 있게 만듭니다.

```js
let flyMixin = function(obj) {
  obj.fly = function() {
    console.log("Flying, wooosh!");
  }
};
```

`flyMixin`는 어떠한 객체도 인자로 받으며 그 객체에 `fly` 메소드를 줍니다.

```js
let bird = {
  name: "Donald",
  numLegs: 2
};

let plane = {
  model: "777",
  numPassengers: 524
};

flyMixin(bird);
flyMixin(plane);
```

여기 `bird`와 `plane`가 각 객체에 `fly` 함수를 할당하는 `flyMixin`에 전달됩니다. 이제 `bird`와 `plane` 모두 날 수 있습니다.

```js
bird.fly();
plane.fly();
```

콘솔에는 문자열 `Flying, wooosh!`이 두 번 나타날 것인데 이는 `.fly()` 호출이 각각 한 번씩 일어난 것입니다.

믹스인이 어떻게 `fly` 메소드를 서로 무관한 `bird`와 `plane`에 재사용되도록 만드는지 주의를 기울일 필요가 있습니다.

# --instructions--

`glide`라는 메소드를 정의하는 `glideMixin`라는 믹스인을 생성하시오. 그런 다음에 서로 무관한 `bird`와 `boat`에 미끄러지듯 움직이게 만들도록 `glideMixin`을 사용하시오.

# --hints--

함수인 변수 `glideMixin`을 선언해야 합니다.

```js
assert(typeof glideMixin === 'function');
```

메소드 `glide`를 얻을 수 있도록 `bird`에 `glideMixin`를 사용해야 합니다.

```js
assert(typeof bird.glide === 'function');
```

메소드 `glide`를 얻을 수 있도록 `boat`에 `glideMixin`를 사용해야 합니다.

```js
assert(typeof boat.glide === 'function');
```

# --seed--

## --seed-contents--

```js
let bird = {
  name: "Donald",
  numLegs: 2
};

let boat = {
  name: "Warrior",
  type: "race-boat"
};

// Only change code below this line
```

# --solutions--

```js
let bird = {
  name: "Donald",
  numLegs: 2
};

let boat = {
  name: "Warrior",
  type: "race-boat"
};
function glideMixin (obj) {
  obj.glide = () => 'Gliding!';
}

glideMixin(bird);
glideMixin(boat);
```
