---
id: 68f1196f0fedc6f6ecc9aba6
title: ステップ 4
challengeType: 20
dashedName: step-4
---

# --description--

Pythonでは、戻り値の型ヒントは関数やメソッドの期待される戻り値の型を示します。これはメソッド定義のパラメータリストの後に`-> return_type`を追加することで行います。

以下は、パラメータと戻り値の型ヒントの両方があり、戻り値の型が`bool`であるメソッドの例です。

```py
def example_method(self, value: int) -> bool:
  pass
```

他に使うかもしれない戻り値の型ヒントには`str`、`None`、`float`などがあります。

既存の`__init__`メソッドには、コンストラクタは値を返さないため、戻り値の型ヒントとして`None`を追加してください。

# --hints--

あなたの`__init__`メソッドには、戻り値の型ヒントとして`None`を付ける必要があります。

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
