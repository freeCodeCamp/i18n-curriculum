---
id: 65ef1aacca094bbcc2e2a3c8
title: 步骤 9
challengeType: 20
dashedName: step-9
---

# --description--

在 Python 中，`max()` 函数返回输入值的最大值。

```python
max(1, 2, 3) # Output: 3
```

变量 `low` 和 `high` 将用于定义平方根所在的初始区间。

在 `else` 子句中，将 `low` 变量初始化为 `0`，并将 `high` 变量初始化为 `1` 或 `square_target` 中的最大值，因为数字的平方根总是小于或等于数字本身。

# --hints--

你应该删除 `pass` 关键字。

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

你应该声明一个变量 `low` 并为其分配 `0`。

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

你应该声明一个变量 `high` 并使用 `max()` 函数为其分配 `1` 和 `square_target` 之间的最大值。

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
