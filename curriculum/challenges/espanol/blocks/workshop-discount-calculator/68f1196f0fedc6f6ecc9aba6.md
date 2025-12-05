---
id: 68f1196f0fedc6f6ecc9aba6
title: Paso 4
challengeType: 20
dashedName: step-4
---

# --description--

En Python, una pista de tipo de retorno indica el tipo de retorno esperado de una función o método. Esto lo haces agregando `-> return_type` después de la lista de parámetros en la definición del método.

Aquí tienes un ejemplo de un método con indicaciones de tipo tanto para el parámetro como para el valor de retorno cuyo tipo de retorno es `bool`:

```py
def example_method(self, value: int) -> bool:
  pass
```

Otros indicios de tipo de retorno que podrías usar incluyen `str`, `None`, `float` y más.

En el método existente `__init__`, agrega una pista de tipo de retorno de `None` ya que las estructuras no devuelven un valor.

# --hints--

Tu método `__init__` debe tener una indicación de tipo de retorno de `None`.

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
