---
id: 65ef1c0a03fcabc04ded7e69
title: 步驟 12
challengeType: 20
dashedName: step-12
---

# --description--

在 for 循環內部，計算從 `low` 到 `high` 區間的中點。 將此值分配給變量 `mid`。

另外，計算中點的平方（`mid`）並將其存儲在變量 `square_mid` 中。

# --hints--

你應該刪除 `pass` 關鍵字。

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_for_loops()[0].find_bodies()[0].has_pass()`))

    }

})

```

你應該聲明一個變量 `mid` 並在 `for` 循環體內將其分配給 `(low + high) / 2`。

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

你應該在 for 循環體內聲明一個變量 `square_mid` 並將其分配給 `mid**2`。

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
