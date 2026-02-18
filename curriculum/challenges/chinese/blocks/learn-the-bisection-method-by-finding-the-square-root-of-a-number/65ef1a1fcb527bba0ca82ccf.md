---
id: 65ef1a1fcb527bba0ca82ccf
title: 步骤6
challengeType: 20
dashedName: step-6
---

# --description--

如果 `square_target` 等于 `1`，则声明变量 `root` 并为其赋值 `1` 。 另外，打印消息 `'The square root of {square_target} is 1'`。 记得使用 f 字符串来格式化消息。

# --hints--

你应该删除 `pass` 关键字。

```js
({
     test: () => 
     {
        assert.isFalse(runPython(`_Node(_code).find_function("square_root_bisection").find_ifs()[1].find_bodies()[0].has_pass()`))
    }
})
```

你应该将值 `1` 分配给 `root` 变量，并在 `if` 正文中打印消息 `'The square root of {square_target} is 1'`。

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
