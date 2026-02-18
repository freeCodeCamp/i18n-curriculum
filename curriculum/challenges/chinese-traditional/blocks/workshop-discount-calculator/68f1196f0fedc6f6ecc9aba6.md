---
id: 68f1196f0fedc6f6ecc9aba6
title: 步驟 4
challengeType: 20
dashedName: step-4
---

# --description--

在 Python 中，返回類型提示顯示函式（程式）或方法預期的返回型別。你可以透過在方法定義的參數列後添加 `-> return_type` 來達成這個目的。

以下是一個同時具有參數和返回類型提示且返回類型為 `bool` 的方法範例：

```py
def example_method(self, value: int) -> bool:
  pass
```

你可能會使用的其他返回類型提示包括 `str`、`None`、`float` 等。

在現有的 `__init__` 方法中，為返回類型添加 `None` 的提示，因為建構式不會傳回值。

# --hints--

你的 `__init__` 方法應該有一個 `None` 的返回類型提示。

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
