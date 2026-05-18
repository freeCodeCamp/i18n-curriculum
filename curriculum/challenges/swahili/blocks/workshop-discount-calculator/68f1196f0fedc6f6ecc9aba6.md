---
id: 68f1196f0fedc6f6ecc9aba6
title: Hatua 4
challengeType: 20
dashedName: step-4
---

# --description--

Katika Python, kidokezo cha aina ya kurudisha kinaonyesha aina inayotarajiwa kurudishwa na kitendakazi au njia. Unafanya hivi kwa kuongeza `-> return_type` baada ya orodha ya vigezo katika ufafanuzi wa njia.

Hapa kuna mfano wa njia yenye vidokezo vya aina ya kigezo na aina ya kurudisha ambapo aina ya kurudisha ni `bool`:

```py
def example_method(self, value: int) -> bool:
  pass
```

Vidokezo vingine vya aina ya kurudisha ambavyo unaweza kutumia ni pamoja na `str`, `None`, `float` na zaidi.

Katika njia ya `__init__` iliyopo, ongeza kidokezo cha aina ya kurudisha cha `None` kwa kuwa vijenzi havirudishi thamani.

# --hints--

Njia yako ya `__init__` inapaswa kuwa na kidokezo cha aina ya kurudisha cha `None`.

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
