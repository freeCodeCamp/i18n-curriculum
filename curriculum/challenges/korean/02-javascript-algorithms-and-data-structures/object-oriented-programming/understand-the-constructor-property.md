---
id: 587d7daf367417b2b2512b7e
title: 생성자 속성 이해하기
challengeType: 1
forumTopicId: 301327
dashedName: understand-the-constructor-property
---

# --description--

이전 과제에서 생성된 `duck`과 `beagle` 인스턴스 객체에는 특별한 `constructor` 속성이 있습니다.

```js
let duck = new Bird();
let beagle = new Dog();

console.log(duck.constructor === Bird); 
console.log(beagle.constructor === Dog);
```

두 `console.log`는 콘솔에서 `true`를 보여줄 것입니다.

`constructor` 속성은 인스턴스를 생성한 생성자 함수에 대한 참조임을 유의하세요. `constructor` 속성의 이점은 이 속성이 어떤 객체인지 확인할 수 있다는 것입니다. 여기 이것이 어떻게 사용될 수 있는지 보여주는 예시가 있습니다.

```js
function joinBirdFraternity(candidate) {
  if (candidate.constructor === Bird) {
    return true;
  } else {
    return false;
  }
}
```

**주의:** `constructor` 속성은 덮어 쓰기가 될 수 있기 때문에(이는 다음 두 과제에서 다룰 예정입니다) 객체의 타입을 확인할 때는 일반적으로 `instanceof` 메서드를 사용하는 것이 더 좋습니다.

# --instructions--

`candidate` 매개변수를 받아 `constructor` 속성을 사용하여 해당 후보가 `Dog`이면 `true`, 그렇지 않으면 `false`를 반환하는 `joinDogFraternity` 함수를 작성하시오.

# --hints--

`joinDogFraternity`는 함수로 정의되어야 합니다.

```js
assert(typeof joinDogFraternity === 'function');
```

`joinDogFraternity`는 `candidate`(후보)가 `Dog`의 인스턴스면 `true`를 반환해야 합니다.

```js
assert(joinDogFraternity(new Dog('')) === true);
```

`joinDogFraternity`는 `constructor` 속성을 사용해야 합니다.

```js
assert(/\.constructor/.test(__helpers.removeJSComments(code)) && !/instanceof/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function Dog(name) {
  this.name = name;
}

// Only change code below this line
function joinDogFraternity(candidate) {

}
```

# --solutions--

```js
function Dog(name) {
  this.name = name;
}
function joinDogFraternity(candidate) {
  return candidate.constructor === Dog;
}
```
