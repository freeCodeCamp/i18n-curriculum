---
id: 65ef1a1fcb527bba0ca82ccf
title: 6단계
challengeType: 20
dashedName: step-6
---

# --description--

만약 `square_target`가 `1`와 같다면, 변수 `root`를 선언하고 값 `1`을 할당하세요. 또한, 메시지 `'The square root of {square_target} is 1'`를 출력하세요. 메시지는 f-string을 사용해 형식을 맞추는 것을 기억하세요.

# --hints--

`pass` 키워드를 제거해야 합니다.

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

값 `1`을 변수 `root`에 할당하고 `'The square root of {square_target} is 1'` 본문 안에서 메시지 `if`를 출력해야 합니다.

```js

({
    test: () => 
    {        
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].is_equivalent("root = 1\\nprint(f'The square root of {square_target} is 1')")`));
    }
})

```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
def square_root_bisection(square_target, tolerance=1e-7, max_iterations=100):
    if square_target < 0:
        raise ValueError('Square root of negative number is not defined in real numbers')
    if square_target == 1:
        pass

--fcc-editable-region--
```
