---
id: 68f1196f0fedc6f6ecc9aba6
title: 4단계
challengeType: 20
dashedName: step-4
---

# --description--

Python에서 반환 타입 힌트는 함수나 메서드가 반환할 것으로 예상되는 타입을 나타냅니다. 메서드 정의에서 매개변수 목록 뒤에 `-> return_type`를 추가하여 이 작업을 합니다.

다음은 매개변수와 반환 타입 힌트가 모두 있는 메서드 예시로, 반환 타입은 `bool`입니다:

```py
def example_method(self, value: int) -> bool:
  pass
```

사용할 수 있는 다른 반환 타입 힌트로는 `str`, `None`, `float` 등이 있습니다.

기존 `__init__` 메서드에 생성자는 값을 반환하지 않으므로 `None` 반환 타입 힌트를 추가하세요.

# --hints--

`__init__` 메서드에는 `None` 반환 타입 힌트가 있어야 합니다.

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
