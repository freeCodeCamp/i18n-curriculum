---
id: 64de4bccf5becb208a48ca97
title: 步骤 13
challengeType: 20
dashedName: step-13
---

# --description--

在汉诺塔谜题中，你可以根据用途识别三根杆：

- 第一根杆是源头，游戏开始时，所有圆盘都堆叠在这里。
- 第二根杆是辅助杆，它有助于将圆盘移动到目标杆。
- 第三根杆是目标，游戏结束时所有圆盘应按顺序摆放在此处。

目前，`move()` 函数不接受任何参数。 将函数声明更改为采用 4 个参数：`n`、`source`、`auxiliary` 和 `target`。 然后，将 `NUMBER_OF_DISKS` 和字符串 `'A'`、`'B'` 和 `'C'` 作为参数传递给函数调用。 记住参数传递的顺序是很重要的。

# --hints--

你的 `move()` 函数应该具有 `n`、`source`、`auxiliary` 和 `target` 作为参数。 记住参数传递的顺序是很重要的。

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

你应该将 `NUMBER_OF_DISKS` 和字符串 `'A'`、`'B'` 和 `'C'` 传递给 `move()`。 记住参数传递的顺序是很重要的。

```js
({test: () => assert.match(code, /^move\(\s*NUMBER_OF_DISKS\s*,\s*('|")A\1\s*,\s*('|")B\2\s*,\s*('|")C\3\s*\)/m)
})
```

# --seed--

## --seed-contents--

```py
NUMBER_OF_DISKS = 3
number_of_moves = 2**NUMBER_OF_DISKS - 1
rods = {
    'A': list(range(NUMBER_OF_DISKS, 0, -1)),
    'B': [],
    'C': []
}

--fcc-editable-region--
def move():
    print(rods)

move()
--fcc-editable-region--
```
