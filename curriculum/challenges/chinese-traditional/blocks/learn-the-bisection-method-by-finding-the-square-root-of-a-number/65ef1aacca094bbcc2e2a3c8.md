---
id: 65ef1aacca094bbcc2e2a3c8
title: 第 9 步
challengeType: 20
dashedName: step-9
---

# --description--

在 Python 中，`max()` 函式傳回輸入值中最大的值。

```python
max(1, 2, 3) # Output: 3
```

變數 `low` 和 `high` 將用來定義平方根所在的初始區間。

在 `else` 語句中，將 `low` 變數初始化為 `0`，並將 `high` 變數初始化為 `1` 或 `square_target` 中的最大值，因為一個數字的平方根總是小於或相等於該數字本身。

# --hints--

你應該移除 `pass` 關鍵字。

```js
({
    test: () => 
    {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].has_pass()`))
    }
})
```

你應該宣告一個變數 `low` 並指定、設值為 `0`。

```js
({
    test: () => 
    {
        assert(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[2].find_variable("low").is_equivalent("low = 0")`));    }
})

```

你應該宣告一個變數 `high`，並使用 `max()` 函式（程式）將 `1` 和 `square_target` 之間的最大值指定給它。

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
