---
id: 587d7b8c367417b2b2512b54
title: 객체 접근 권한을 조정하기 위해 getter와 setter 사용하기
challengeType: 1
forumTopicId: 301220
dashedName: use-getters-and-setters-to-control-access-to-an-object
---

# --description--

You can obtain values from an object and set the value of a property within an object.

이 행위를 전통적으로 <dfn>getter</dfn>, <dfn>setter</dfn>라고 부릅니다.

Getter 함수는 객체 사용자가 프라이빗 변수에 직접 접근하지 않고 객체의 프라이빗 변수를 반환(get)하기 위한 함수입니다.

Setter 함수는 setter 함수에 전달한 값에 기반하여 객체의 프라이빗 변수를 변경(set)하기 위한 함수입니다. 이 변경은 계산을 한다거나 기존 값을 완전히 덮어쓰는 것을 포함합니다.

```js
class Book {
  constructor(author) {
    this._author = author;
  }
  // getter
  get writer() {
    return this._author;
  }
  // setter
  set writer(updatedAuthor) {
    this._author = updatedAuthor;
  }
}
const novel = new Book('anonymous');
console.log(novel.writer);
novel.writer = 'newAuthor';
console.log(novel.writer);
```

콘솔은 문자열 `anonymous`와 `newAuthor`를 보여줄 것입니다.

이 문법은 getter와 setter를 호출하기 위해 사용된다는 점을 주목하세요. 이 문법은 일반적인 함수처럼 생기지도 않았는데 말입니다. Getter와 setter는 내부 구현을 상세하게 보여주지 않기 때문에 중요합니다.

**참고:** 프라이빗 변수 이름 앞에 언더스코어(`_`)를 붙이는게 관례입니다. 다만, 언더스코어를 붙인다고 해서 프라이빗 변수가 되지는 않습니다.

# --instructions--

클래스 `Thermostat` 생성을 위해 키워드 `class`를 사용하세요. `constructor`에는 화씨 온도를 전달할 수 있습니다.

클래스 내에서 온도를 섭씨로 가져올 수 있는 `getter`와 섭씨 온도를 전달할 수 있는 `setter`를 작성합니다.

`C = 5/9 * (F - 32)`와 `F = C * 9.0 / 5 + 32` 두 공식을 참고합니다. `F`는 화씨온도 값, `C`는 섭씨온도값을 의미합니다.

**참고:** 클래스를 구현할 때, 클래스 내에서 온도는 화씨든 섭씨든 하나의 단위로만 추적하게 됩니다.

이것이 getter와 setter의 힘입니다. 여러분이 만든 API를 쓰면 화씨, 섭씨 중 무엇을 추적하던 유저는 언제나 정확한 결과를 얻을 수 있습니다.

즉, 유저가 내부 구현이 어떻게 되었는지 알 수 없게 추상화한 것입니다.

# --hints--

`Thermostat`은 `constructor` 메서드와 함께 `class`로 정의해야 합니다.

```js
assert.isFunction(Thermostat);
assert.isFunction(Thermostat?.constructor);
```

`class` 키워드를 사용해야 합니다.

```js
assert.match(code, /class/);
```

`Thermostat`는 인스턴스화 할 수 있어야 합니다.

```js
const _t = new Thermostat(122);
assert.isObject(_t);
```

화씨 값으로 클래스를 인스턴스로 만들 때, `Thermostat`은 `temperature`를 정확하게 설정해야 합니다.

```js
const _t = new Thermostat(122);
assert.strictEqual(_t?.temperature, 50);
```

`getter`를 정의해야 합니다.

```js
const _desc = Object.getOwnPropertyDescriptor(Thermostat.prototype, 'temperature');
assert.isFunction(_desc?.get);
```

`setter`를 정의해야 합니다.

```js
const _desc = Object.getOwnPropertyDescriptor(Thermostat.prototype, 'temperature');
assert.isFunction(_desc?.set);
```

섭씨 값을 전달한 `setter`를 호출하면 `temperature`를 정확하게 설정해야 합니다.

```js
const _t = new Thermostat(32);
_t.temperature = 26;
const _u = new Thermostat(32);
_u.temperature = 50;
assert.approximately(_t.temperature, 26, 0.1);
assert.approximately(_u.temperature, 50, 0.1);
```

# --seed--

## --seed-contents--

```js
// Only change code below this line

// Only change code above this line

const thermos = new Thermostat(76); // Setting in Fahrenheit scale
let temp = thermos.temperature; // 24.44 in Celsius
thermos.temperature = 26;
temp = thermos.temperature; // 26 in Celsius
```

# --solutions--

```js
class Thermostat {
  constructor(fahrenheit) {
    this._tempInCelsius = 5/9 * (fahrenheit - 32);
  }
  get temperature(){
    return this._tempInCelsius;
  }
  set temperature(newTemp){
    this._tempInCelsius = newTemp;
  }
}

const thermos = new Thermostat(76); // Setting in Fahrenheit scale
let temp = thermos.temperature; // 24.44 in Celsius
thermos.temperature = 26;
temp = thermos.temperature; // 26 in Celsius
```
