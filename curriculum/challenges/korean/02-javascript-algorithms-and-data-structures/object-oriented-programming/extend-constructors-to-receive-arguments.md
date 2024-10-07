---
id: 587d7dae367417b2b2512b79
title: 인자를 받기 위해 생성자 확장하기
challengeType: 1
forumTopicId: 18235
dashedName: extend-constructors-to-receive-arguments
---

# --description--

The `Bird` and `Dog` constructors from the last challenge worked well. However, notice that all `Birds` that are created with the `Bird` constructor are automatically named Albert, are blue in color, and have two legs. What if you want birds with different values for name and color? It's possible to change the properties of each bird manually but that would be a lot of work:

```js
let swan = new Bird();
swan.name = "Carlos";
swan.color = "white";
```

새장의 수천수백 마리 새들을 추적하는 프로그램을 만들고 있다고 가정하겠습니다. 모든 새를 생성하고 속성을 다른 값으로 일일이 바꾸는 것은 상당히 긴 시간이 소요될 것입니다. 더 쉽게 객체 `Bird`를 생성하기 위해 인자 값을 받는 생성자 Bird를 설계하면 됩니다.

```js
function Bird(name, color) {
  this.name = name;
  this.color = color;
  this.numLegs = 2;
}
```

그런 다음 생성자 `Bird`로 유일한 새를 정의하기 위해 인자로 해당 값을 전달합니다: `let cardinal = new Bird("Bruce", "red");` 이는 속성 `name`과 `color`에 각각 `Bruce`와 `red`로 값이 설정된 `Bird` 인스턴스입니다. 속성 `numLegs`은 여전히 2로 설정되어 있습니다. `cardinal`은 다음과 같은 속성들을 가지고 있습니다.

```js
cardinal.name
cardinal.color
cardinal.numLegs
```

생성자는 더 융통성이 있습니다. 이제 각 `Bird`의 속성을 생성되는 시점에 정의하는 것이 가능한데, 이게 Javascript 생성자가 유용하게 사용되는 방법입니다. 생성자는 공유된 특성 및 행동에 기반하여 객체를 한 데 묶고 객체 생성을 자동화하는 청사진을 정의합니다.

# --instructions--

새로운 생성자 `Dog`를 만드시오. 이번에는 인자로 `name`과 `color`을 받으며 속성 `numLegs`을 4로 설정합니다. 그런 다음 `Dog`을 생성하여 변수 `terrier`에 저장하시오. 속성 `name`과 `color`에 두 가지 문자열을 인자로 전달하시오.

# --hints--

`Dog`은 `name`을 위한 인자를 받아야 합니다.

```js
assert(new Dog('Clifford').name === 'Clifford');
```

`Dog`는 `color`를 위한 인자를 받아야 합니다.

```js
assert(new Dog('Clifford', 'yellow').color === 'yellow');
```

`Dog`는 속성 `numLegs`이 4로 설정되어야 합니다.

```js
assert(new Dog('Clifford').numLegs === 4);
```

`terrier`는 생성자 `Dog`을 사용하여 생성되어야 합니다.

```js
assert(terrier instanceof Dog);
```

# --seed--

## --seed-contents--

```js
function Dog() {

}
```

# --solutions--

```js
function Dog (name, color) {
  this.numLegs = 4;
  this.name = name;
  this.color = color;
}

const terrier = new Dog();
```
