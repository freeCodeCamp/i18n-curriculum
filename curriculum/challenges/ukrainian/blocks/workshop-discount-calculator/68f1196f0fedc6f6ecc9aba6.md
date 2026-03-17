---
id: 68f1196f0fedc6f6ecc9aba6
title: Крок 4
challengeType: 20
dashedName: step-4
---

# --description--

У Python підказка типу повернення вказує очікуваний тип повернення функції або методу. Ви робите це, додавши `-> return_type` після списку параметрів у визначенні методу.

Ось приклад методу з підказками типів для параметрів і повернення, де тип повернення — `bool`:

```py
def example_method(self, value: int) -> bool:
  pass
```

Інші підказки типу повернення, які ви можете використовувати, включають `str`, `None`, `float` та інші.

У наявному методі `__init__` додайте підказку типу повернення `None`, оскільки конструктори не повертають значення.

# --hints--

Ваш метод `__init__` має мати підказку типу повернення `None`.

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
