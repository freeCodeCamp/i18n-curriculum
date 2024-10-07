---
id: 587d7b87367417b2b2512b41
title: const 키워드를 사용해 읽기 전용 변수를 선언하기
challengeType: 1
forumTopicId: 301201
dashedName: declare-a-read-only-variable-with-the-const-keyword
---

# --description--

The keyword `let` is not the only new way to declare variables. In ES6, you can also declare variables using the `const` keyword.

`const`는 `let`이 가진 멋진 기능을 모두 가지고 있으며, 또한 추가적으로 `const`를 사용해 선언한 변수들은 읽기 전용이 됩니다. 그 변수는 상수가 되며, 그 의미는 한 번 `const`로 선언하며 할당된 변수는 다시 할당할 수 없다는 뜻입니다.

```js
const FAV_PET = "Cats";
FAV_PET = "Dogs";
```

`FAV_PET`에 다시 값을 할당하고 있기 때문에, 콘솔에서 에러가 표시될 것입니다.

재할당이 필요 없는 변수에게 이름을 붙일 때, 항상 `const` 키워드를 사용하세요. 그렇게 하면 상수여야 하는 변수에게 잘못해서 값을 다시 할당하려는 것을 방지하도록 도울 것입니다.

**노트:** 개발자는 일반적으로 변경 불가(Immutable) 한 값에는 대문자 변수 식별자를 사용하고, 변경 가능(Mutable) 한 값(오브젝트들이나 배열 등) 에는 소문자 또는 카멜 표기법을 사용합니다. 오브젝트나 배열, 변경 가능한 값과 변경 불가능한 값에 대해서는, 이후의 도전에서 더 배울 것입니다. 또한 이후의 도전에서는, 대문자, 소문자, 또는 카멜 표기법의 여러가지 변수 식별자를 사용하는 것을 볼 수 있을 것입니다.

# --instructions--

코드를 변경해서, 모든 변수를 `let` 또는 `const`를 사용해 선언해주세요. 변경이 필요한 변수에는 `let`을 사용하고, 상수로 남아야 하는 변수에는 `const`를 사용해 주세요. 또한 `const`로 선언한 변수의 이름에 대해서, 일반적인 관습을 따르도록 변경해 주세요. 변수에 할당되어 있는 문자열들을 변경해서는 안됩니다.

# --hints--

`var`는 코드 내에 존재해서는 안됩니다.

```js
assert.notMatch(code, /var/g);
```

당신은 `fCC`를 전부 대문자로 바꿔야 합니다.

```js
assert.match(code, /(FCC)/);
assert.notMatch(code, /(fCC)/);
```

`FCC`는 `const`로 선언된 상수의 변수여야 합니다.

```js
assert.match(code, /const\s+FCC/);
```

할당된 문자열 `FCC`는 변경되면 안됩니다.

```js
assert.equal(FCC, 'freeCodeCamp');
```

`fact`는 `let`으로 정의되어야 합니다.

```js
assert.match(code, /(let\s+fact)/g);
```

`console.log`에서 `FCC`와 `fact`의 출력이 달라야 합니다.

```js
assert.match(code, /console\.log\(\s*FCC\s*\,\s*fact\s*\)\s*;?/g);
```

# --seed--

## --seed-contents--

```js
var fCC = "freeCodeCamp"; // Change this line
var fact = "is cool!"; // Change this line
fact = "is awesome!";
console.log(fCC, fact); // Change this line
```

# --solutions--

```js
const FCC = "freeCodeCamp";
let fact = "is cool!";

fact = "is awesome!";
console.log(FCC, fact);
```
