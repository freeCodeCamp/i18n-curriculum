---
id: 68f1196f0fedc6f6ecc9aba6
title: Schritt 4
challengeType: 20
dashedName: step-4
---

# --description--

In Python zeigt ein Rückgabetyp-Hinweis den erwarteten Rückgabetyp einer Funktion oder Methode an. Sie fügen diesen hinzu, indem Sie `-> return_type` nach der Parameterliste in der Methodendefinition einfügen.

Hier ist ein Beispiel für eine Methode mit sowohl Parameter- als auch Rückgabetyp-Hinweisen, deren Rückgabetyp `bool` ist:

```py
def example_method(self, value: int) -> bool:
  pass
```

Weitere Rückgabetyp-Hinweise, die Sie verwenden könnten, sind `str`, `None`, `float` und mehr.

Fügen Sie in der bestehenden `__init__`-Methode einen Rückgabetyp-Hinweis von `None` hinzu, da Konstruktoren keinen Wert zurückgeben.

# --hints--

Ihre `__init__`-Methode sollte einen Rückgabetyp-Hinweis von `None` haben.

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
