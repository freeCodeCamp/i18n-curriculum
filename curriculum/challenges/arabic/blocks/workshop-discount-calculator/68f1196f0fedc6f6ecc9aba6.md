---
id: 68f1196f0fedc6f6ecc9aba6
title: الخطوة 4
challengeType: 20
dashedName: step-4
---

# --description--

في Python، يشير تلميح نوع الإرجاع إلى نوع القيمة المتوقع إرجاعها من دالة أو طريقة. تفعل ذلك بإضافة `-> return_type` بعد قائمة المعلمات في تعريف الطريقة.

إليك مثالًا على طريقة تحتوي على تلميحات لكل من المعلمات ونوع الإرجاع، حيث يكون نوع الإرجاع `bool`:

```py
def example_method(self, value: int) -> bool:
  pass
```

تلميحات أنواع الإرجاع الأخرى التي قد تستخدمها تشمل `str`، `None`، `float` والمزيد.

في الطريقة `__init__` الموجودة، أضف تلميح نوع إرجاع `None` لأن دوال البناء لا تُرجع قيمة.

# --hints--

يجب أن تحتوي طريقتك `__init__` على تلميح نوع إرجاع `None`.

```js
({
  test: () => runPython(`assert _Node(_code).find_class("Product").find_function("__init__").has_returns("None")`)
})
```

# --seed--

## --seed-contents--

```py
class Product:
--fcc-editable-region--
    def __init__(self, name: str, price: float):
--fcc-editable-region--
        self.name = name
        self.price = price

    def __str__(self):
        return f'{self.name} - ${self.price}'
```
