---
id: 68f1196f0fedc6f6ecc9aba6
title: Passo 4
challengeType: 20
dashedName: step-4
---

# --description--

Em Python, uma dica de tipo de retorno indica o tipo de retorno esperado de uma função ou método. Você faz isso adicionando `-> return_type` após a lista de parâmetros na definição do método.

Aqui está um exemplo de um método com dicas de tipo para parâmetro e tipo de retorno cujo tipo de retorno é `bool`:

```py
def example_method(self, value: int) -> bool:
  pass
```

Outros tipos de retorno que você pode usar incluem `str`, `None`, `float` e mais.

No método `__init__` existente, adicione uma dica de tipo de retorno `None` já que construtores não retornam um valor.

# --hints--

Seu método `__init__` deve ter uma dica de tipo de retorno `None`.

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
