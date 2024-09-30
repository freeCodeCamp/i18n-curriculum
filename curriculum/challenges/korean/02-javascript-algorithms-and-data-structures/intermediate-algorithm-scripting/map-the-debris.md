---
id: af4afb223120f7348cdfc9fd
title: 파편 매핑
challengeType: 1
forumTopicId: 16021
dashedName: map-the-debris
---

# --description--

케플러의 세 번째 법칙에 따르면, 두 점 질량이 서로 순환 또는 타원 궤도를 공전하는 경우 궤도 주기 $T$는 다음과 같습니다.

$$ T = 2 \pi \sqrt{\frac{a^{3}}{\mu}} $$

- $a$는 궤도의 반장축입니다.
- $μ = GM$은 표준 중력 상수입니다
- $G$는 중력 상수입니다,
- $M$는 더 큰 질량체의 질량입니다.

새로운 배열을 반환하여 요소의 평균 고도를 궤도 주기로 변환합니다(초 단위).

배열은 `{name: 'name', avgAlt: avgAlt}` 형식의 객체를 포함할 것입니다.

값은 가장 가까운 정수로 반올림되어야 합니다. 공전하는 천체는 지구입니다.

지구의 반지름은 6367.4447킬로미터이며, 지구의 GM 값은 398600.4418 km<sup>3</sup>s<sup>-2</sup>입니다.

# --hints--

`orbitalPeriod([{name : "sputnik", avgAlt : 35873.5553}])`는 `[{name: "sputnik", orbitalPeriod: 86400}]`을 반환해야 합니다.

```js
assert.deepEqual(orbitalPeriod([{ name: 'sputnik', avgAlt: 35873.5553 }]), [
  { name: 'sputnik', orbitalPeriod: 86400 }
]);
```

`orbitalPeriod([{name: "iss", avgAlt: 413.6}, {name: "hubble", avgAlt: 556.7}, {name: "moon", avgAlt: 378632.553}])`는 `[{name : "iss", orbitalPeriod: 5557}, {name: "hubble", orbitalPeriod: 5734}, {name: "moon", orbitalPeriod: 2377399}]`을 반환해야 합니다.

```js
assert.deepEqual(
  orbitalPeriod([
    { name: 'iss', avgAlt: 413.6 },
    { name: 'hubble', avgAlt: 556.7 },
    { name: 'moon', avgAlt: 378632.553 }
  ]),
  [
    { name: 'iss', orbitalPeriod: 5557 },
    { name: 'hubble', orbitalPeriod: 5734 },
    { name: 'moon', orbitalPeriod: 2377399 }
  ]
);
```

# --seed--

## --seed-contents--

```js
function orbitalPeriod(arr) {
  const GM = 398600.4418;
  const earthRadius = 6367.4447;
  return arr;
}

orbitalPeriod([{name : "sputnik", avgAlt : 35873.5553}]);
```

# --solutions--

```js
function orbitalPeriod(arr) {
  const GM = 398600.4418;
  const earthRadius = 6367.4447;
  const TAU = 2 * Math.PI;
  return arr.map(function(obj) {
    return {
      name: obj.name,
      orbitalPeriod: Math.round(TAU * Math.sqrt(Math.pow(obj.avgAlt+earthRadius, 3)/GM))
    };
  });
}
```
