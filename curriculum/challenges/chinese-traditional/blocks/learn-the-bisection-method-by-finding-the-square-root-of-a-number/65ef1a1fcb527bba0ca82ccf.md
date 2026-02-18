---
id: 65ef1a1fcb527bba0ca82ccf
title: 步驟 6
challengeType: 20
dashedName: step-6
---

# --description--

如果 `square_target` 相等於 `1`，宣告一個變數 `root` 並指定其值為 `1`。同時，列印訊息 `'The square root of {square_target} is 1'`。記得使用 f-string 格式化該訊息。

# --hints--

你應該移除 `pass` 關鍵字。

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

你應該將值 `1` 指定給 `root` 變數，並在 `if` 主體內列印訊息 `'The square root of {square_target} is 1'`。

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
