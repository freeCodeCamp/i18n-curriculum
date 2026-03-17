---
id: 68f1196f0fedc6f6ecc9aba6
title: Passaggio 4
challengeType: 20
dashedName: step-4
---

# --description--

In Python, un suggerimento sul tipo di ritorno indica il tipo di ritorno previsto di una funzione o metodo. Lo fai aggiungendo `-> return_type` dopo la lista dei parametri nella definizione del metodo.

Ecco un esempio di un metodo con suggerimenti sia per i parametri sia per il tipo di ritorno, il cui tipo di ritorno è `bool`:

```py
def example_method(self, value: int) -> bool:
  pass
```

Altri suggerimenti sul tipo di ritorno che potresti usare includono `str`, `None`, `float` e altri.

Nel metodo `__init__` esistente, aggiungi un suggerimento sul tipo di ritorno `None` dato che i costruttori non restituiscono un valore.

# --hints--

Il tuo metodo `__init__` dovrebbe avere un suggerimento sul tipo di ritorno `None`.

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
