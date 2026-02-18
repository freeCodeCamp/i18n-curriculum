---
id: 68f1196f0fedc6f6ecc9aba6
title: 步骤4
challengeType: 20
dashedName: step-4
---

# --description--

在 Python 中，返回类型提示表示函数或方法的预期返回类型。你通过在方法定义中的参数列表后添加 `-> return_type` 来实现这一点。

这是一个带有参数和返回类型提示且返回类型为 `bool` 的方法示例：

```py
def example_method(self, value: int) -> bool:
  pass
```

你可能使用的其他返回类型提示包括 `str`、`None`、`float` 等。

在现有的 `__init__` 方法中，添加返回类型提示 `None`，因为构造函数不返回值。

# --hints--

你的 `__init__` 方法应有 `None` 的返回类型提示。

```js
({
  test: () => runPython(`assert _Node(_code).find_class("Product").find_function("__init__").has_returns("None")`)
})
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
class Product:
    def __init__(self, name: str, price: float):
        self.name = name
        self.price = price
--fcc-editable-region--
    def __str__(self):
        return f'{self.name} - ${self.price}'
```
