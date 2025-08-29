---
id: 65ef1aacca094bbcc2e2a3c8
title: 步驟 9
challengeType: 20
dashedName: step-9
---

# --description--

在 Python 中，`max()` 函數返回輸入值的最大值。

```python
max(1, 2, 3) # Output: 3
```

變量 `low` 和 `high` 將用於定義平方根所在的初始區間。

在 `else` 子句中，將 `low` 變量初始化爲 `0`，並將 `high` 變量初始化爲 `1` 或 `square_target` 中的最大值，因爲數字的平方根總是小於或等於數字本身。

# --hints--

你應該刪除 `pass` 關鍵字。

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

你應該聲明一個變量 `low` 併爲其分配 `0`。

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

你應該聲明一個變量 `high` 並使用 `max()` 函數爲其分配 `1` 和 `square_target` 之間的最大值。

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
