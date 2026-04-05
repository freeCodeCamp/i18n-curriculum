---
id: 65ef1aacca094bbcc2e2a3c8
title: 9단계
challengeType: 20
dashedName: step-9
---

# --description--

Python에서 `max()` 함수는 입력값 중 가장 큰 값을 반환합니다.

```python
max(1, 2, 3) # Output: 3
```

변수 `low`과 `high`는 제곱근이 위치하는 초기 구간을 정의하는 데 사용됩니다.

`else` 절 안에서 `low` 변수를 `0`로 초기화하고, `high` 변수를 `1`과 `square_target` 중 최대값으로 할당하세요. 숫자의 제곱근은 항상 그 숫자보다 작거나 같기 때문입니다.

# --hints--

`pass` 키워드를 제거하세요.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

변수 `low`을 선언하고 `0`을 할당하세요.

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

변수 `high`을 선언하고 `max()` 함수를 사용해 `1`와 `square_target` 중 최대값을 할당하세요.

```js

({ test: () => assert(runPython(`
node = _Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("high")
values = ["high = max(1, square_target)", "high = max(square_target, 1)"]
any(node.is_equivalent(val) for val in values)
`)) })
```

# --seed--

## --seed-contents--

```py
def square_root_bisection(square_target, tolerance=1e-7, max_iterations=100):
    if square_target < 0:
        raise ValueError('Square root of negative number is not defined in real numbers')
    if square_target == 1:
        root = 1
        print(f'The square root of {square_target} is 1')
    elif square_target == 0:
        root = 0
        print(f'The square root of {square_target} is 0')
--fcc-editable-region--
    else:
        pass
--fcc-editable-region--
```
