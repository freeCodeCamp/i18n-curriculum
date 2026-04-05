---
id: 67329fbcfaf5ff5cdaa38a42
title: "var 키워드란 무엇이며, 왜 더 이상 사용을 권장하지 않을까요?"
challengeType: 19
dashedName: what-is-the-var-keyword-and-why-is-it-no-longer-suggested-to-use-it
---

# --interactive--

JavaScript에서 `var` 키워드는 변수를 선언하는 원래 방법 중 하나입니다. 이 키워드는 언어가 처음 만들어질 때부터 포함되어 있었고, 오랫동안 변수를 만드는 주요 방법으로 사용되었습니다. 하지만 JavaScript가 발전하고 개발자들이 언어에 익숙해지면서 `var` 사용의 단점이 드러났고, 2015년에 `let`와 `const`가 도입되었습니다.

`var`로 변수를 선언하면 함수 범위(function-scoped) 또는 전역 범위(global-scoped)를 갖게 됩니다. 즉, 함수 내부에서 `var`로 변수를 선언하면 그 함수 내에서만 접근할 수 있습니다. 하지만 함수 외부에서 선언하면 전역 변수로서 전체 스크립트에서 접근할 수 있습니다. 이런 동작은 때때로 예상치 못한 결과를 낳고 코드를 이해하기 어렵게 만듭니다.

`var`의 문제점 중 하나는 같은 변수를 여러 번 재선언해도 오류를 발생시키지 않는다는 점입니다. 이로 인해 실수로 덮어쓰기가 발생하고 디버깅이 더 어려워질 수 있습니다.

:::interactive_editor

```js
var num = 5;
console.log(num); // 5

// This is allowed and doesn't throw an error
var num = 10;
console.log(num); // 10
```

:::

`var`의 가장 큰 문제는 블록 범위(block scoping)가 없다는 점입니다. `var`로 선언된 변수는 `if` 문이나 `for` 반복문 같은 블록 내부에 있어도 그 블록 외부에서 여전히 접근할 수 있습니다.

:::interactive_editor

```js
if (true) {
  var num = 5;
}
console.log(num); // 5
```

:::

이런 동작은 의도치 않은 변수 누출을 일으키고 코드가 버그에 더 취약해지게 만듭니다.

이러한 문제들 때문에 현대 JavaScript 개발에서는 `var` 대신 `let`와 `const`를 주로 사용합니다. 이 키워드들은 블록 범위를 제공하여 많은 다른 프로그래밍 언어의 범위 규칙과 더 잘 맞습니다.

또한 같은 범위 내에서 재선언을 허용하지 않아 실수로 덮어쓰는 일을 방지합니다.

`var`는 여전히 JavaScript의 일부이며 모든 브라우저에서 작동하지만, 현대 JavaScript 개발에서는 `let`와 `const`를 사용하는 것이 일반적으로 권장됩니다. 이들은 명확한 범위 규칙을 제공하고, 흔한 실수를 막으며, 코드 동작을 더 예측 가능하게 만듭니다.

# --questions--

## --text--

함수 외부에서 `var`로 선언된 변수의 범위는 무엇인가요?

## --answers--

블록 범위.

### --feedback--

함수 외부에서 선언된 `var` 변수에 어디서 접근할 수 있는지 생각해 보세요.

---

함수 범위.

### --feedback--

함수 외부에서 선언된 `var` 변수에 어디서 접근할 수 있는지 생각해 보세요.

---

전역 범위.

---

모듈 범위.

### --feedback--

함수 외부에서 선언된 `var` 변수에 어디서 접근할 수 있는지 생각해 보세요.

## --video-solution--

3

## --text--

다음 코드의 출력 결과는 무엇일까요?

```js
var x = 10;

if (true) {
  var x = 20;
  console.log(x);
}

console.log(x);
```

## --answers--

```js
10
10
```

### --feedback--

`var`는 함수 범위 또는 전역 범위이며, 같은 범위 내에서 재선언을 허용한다는 점을 기억하세요.

---

```js
20
20
```

---

```js
10
20
```

### --feedback--

`var`는 함수 범위 또는 전역 범위이며, 같은 범위 내에서 재선언을 허용한다는 점을 기억하세요.

---

```js
20
10
```

### --feedback--

`var`는 함수 범위 또는 전역 범위이며, 같은 범위 내에서 재선언을 허용한다는 점을 기억하세요.

## --video-solution--

2

## --text--

다음 중 현대 JavaScript에서 `var` 사용을 피해야 하는 이유가 아닌 것은 무엇인가요?

## --answers--

`var`는 같은 범위 내에서 변수 재선언을 허용한다.

### --feedback--

`var`의 동작이나 지원에 대해 거짓인 설명이 무엇인지 생각해 보세요.

---

`var`는 현대 브라우저에서 지원되지 않는다.

---

`var` 변수는 함수 범위이며, 블록 범위가 아니다.

### --feedback--

`var`의 동작이나 지원에 대해 거짓인 설명이 무엇인지 생각해 보세요.

---

`var` 변수는 호이스팅된다.

### --feedback--

`var`의 동작이나 지원에 대해 거짓인 설명이 무엇인지 생각해 보세요.

## --video-solution--

2
