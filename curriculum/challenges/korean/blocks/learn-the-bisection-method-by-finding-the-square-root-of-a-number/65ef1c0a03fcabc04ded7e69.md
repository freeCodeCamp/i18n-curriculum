---
id: 65ef1c0a03fcabc04ded7e69
title: 12단계
challengeType: 20
dashedName: step-12
---

# --description--

for 루프 안에서 `low`부터 `high`까지 구간의 중간값을 계산하세요. 이 값을 변수 `mid`에 할당하세요.

또한, 중간값(`mid`)의 제곱을 계산하여 변수 `square_mid`에 저장하세요.
    
# --hints--

`pass` 키워드를 제거하세요.

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_for_loops()[0].find_bodies()[0].has_pass()`))
        
    }

})

```

`mid` 루프 본문 안에 변수 `(low + high) / 2`를 선언하고 `for`을 할당하세요.

```js
({
    test: () => 
    {
        assert(runPython(`
	node = _Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_for_loops()[0].find_bodies()[0].find_variable("mid")
	values = ["mid = (low + high) / 2", "mid = (high + low) / 2"]
	any(node.is_equivalent(val) for val in values)
	`))
        
    }

})
```

for 루프 본문 안에 변수 `square_mid`를 선언하고 `mid**2`을 할당하세요.

```js
({ test: () => assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_for_loops()[0].find_bodies()[0].find_variable("square_mid").is_equivalent("square_mid = mid**2")`)) })
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

    else:
        low = 0
        high = max(1, square_target)
        root = None
        
--fcc-editable-region--
        for _ in range(max_iterations):
            pass

--fcc-editable-region--
```
