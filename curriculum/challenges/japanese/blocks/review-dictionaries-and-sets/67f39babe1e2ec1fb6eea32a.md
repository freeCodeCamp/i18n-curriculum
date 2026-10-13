---
id: 67f39babe1e2ec1fb6eea32a
title: 辞書とセットのレビュー
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 辞書

- **辞書**: 辞書はキーと値のペアを格納する組み込みのデータ構造です。キーは不変のデータ型である必要があります。Python辞書の一般的な構文は以下の通りです。

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` コンストラクタ**: `dict()` コンストラクタは辞書を作成する別の方法です。キーを最初の要素、値を2番目の要素とするタプルのリストを `dict()` コンストラクタに渡します。

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **ブラケット記法**: キーと値のペアの値にアクセスするには、ブラケット記法と呼ばれる構文を使います。

```python
dictionary[key]
```

## 辞書の一般的なメソッド

- **`get()` メソッド**: `get()` メソッドはキーに関連付けられた値を取得します。ブラケット記法に似ていますが、キーが存在しない場合にエラーを防ぐためのデフォルト値を設定できます。

```python
dictionary.get(key, default)
```

- **`keys()` と `values()` メソッド**: `keys()` と `values()` メソッドは辞書内のすべてのキーと値のビューオブジェクトをそれぞれ返します。ビューオブジェクトは辞書の内容を別コピーを作らずに見る方法です。

```python
pizza = {
    'name': 'Margherita Pizza',
    'price': 8.9,
    'calories_per_slice': 250
}

pizza.keys()
# dict_keys(['name', 'price', 'calories_per_slice'])

pizza.values()
# dict_values(['Margherita Pizza', 8.9, 250])
```

- **`items()` メソッド**: `items()` メソッドは辞書内のすべてのキーと値のペアを含むビューオブジェクトを返します。

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()` メソッド**: `clear()` メソッドは辞書内のすべてのキーと値のペアを削除します。

```python
pizza.clear()
```

- **`pop()` メソッド**: `pop()` メソッドは最初の引数で指定したキーのキーと値のペアを削除し、その値を返します。キーが存在しない場合は、2番目の引数で指定したデフォルト値を返します。デフォルト値が指定されておらずキーが存在しない場合は `KeyError` が発生します。

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()` メソッド**: Python 3.7以降では `popitem()` メソッドは最後に挿入されたアイテムを削除します。

```python
pizza.popitem()
```

- **`update()` メソッド**: `update()` メソッドは別の辞書のキーと値のペアで辞書を更新します。共通のキーがある場合は値が上書きされ、新しいキーは新しいキーと値のペアとして追加されます。

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## 辞書のループ処理

- **値の反復処理**: 辞書の値を反復処理したい場合は、`for` ループと `values()` を使って辞書のすべての値を取得できます。

```python
products = {
    'Laptop': 990,
    'Smartphone': 600,
    'Tablet': 250,
    'Headphones': 70,
}

for price in products.values():
    print(price)
```

出力:

```md
990
600
250
70
```

- **キーの反復処理**: 上記の `products` 辞書のキーを反復処理したい場合は、`products.keys()` または `products` を直接書くことができます。

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

出力:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **キーと値のペアの反復処理**: キーと対応する値を同時に反復処理したい場合は `products.items()` を反復処理します。キーと対応する値の個別のタプルが得られます。

```python
for product in products.items():
    print(product)
```

出力:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

キーと値を別々のループ変数に格納するには、カンマで区切る必要があります。最初の変数がキーを、2番目の変数が値を格納します。

```python
for product, price in products.items():
    print(product, price)
```

出力:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **`enumerate()` 関数**: カウンターを追跡しながら辞書を反復処理したい場合は `enumerate()` 関数を呼び出せます。この関数は `enumerate` オブジェクトを返し、各アイテムに整数を割り当てます。カウンターは任意の数から開始できますが、デフォルトは0です。

インデックスとアイテムを別々のループ変数に割り当てるのが `enumerate()` の一般的な使い方です。例えば `products.items()` を使うと、インデックスに加えてキーと値のペア全体を取得できます。

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

出力:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

カウントの初期値をカスタマイズしたい場合は `enumerate()` に2番目の引数を渡せます。以下はカウントを1から開始する例です。

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

出力:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## セット

- **セット**: セットはPythonの組み込みデータ構造で、重複する値を許しません。セットはミュータブルで順序付けされていないため、要素は特定の順序で格納されず、インデックスやキーでアクセスできません。また、セットには数値、文字列、タプルのような不変データ型の値のみを含められます。

- **セットの定義**: セットを定義するには、波括弧の中に要素を書き、カンマで区切ります。

```python
my_set = {1, 2, 3, 4, 5}
```

- **空のセットの定義**: 空のセットを定義する場合は `set()` 関数を使う必要があります。空の波括弧だけを書くと自動的に辞書が作成されます。

```python
set() # Set
{}    # Dictionary
```

## セットの一般的なメソッド

- **`add()` メソッド**: `add()` メソッドを使ってセットに要素を追加できます。新しい要素を引数として渡します。

```python
my_set.add(6)
```

- **`remove()` と `discard()` メソッド**: セットから要素を削除するには `remove()` メソッドか `discard()` メソッドを使います。削除したい要素を引数として渡します。`remove()` メソッドは要素が見つからない場合 `KeyError` を発生させますが、`discard()` メソッドは発生させません。

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()` メソッド**: `clear()` メソッドはセットのすべての要素を削除します。

```python
my_set.clear()
```

## 数学的なセット操作

- **`issubset()` と `issuperset()` メソッド**: `issubset()` と `issuperset()` メソッドはセットが別のセットの部分集合かスーパーセットかをそれぞれチェックします。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **`isdisjoint()` メソッド**: `isdisjoint()` メソッドは2つのセットが共通の要素を持たないかどうか（互いに素か）をチェックします。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **和集合演算子 (`|`)**: 和集合演算子 `|` は両方のセットのすべての要素を含む新しいセットを返します。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **積集合演算子 (`&`)**: 積集合演算子 `&` はセットが共通して持つ要素だけを含む新しいセットを返します。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **差集合演算子 (`-`)**: 差集合演算子 `-` は最初のセットにあって他のセットにない要素だけを含む新しいセットを返します。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **対称差演算子 (`^`)**: 対称差演算子 `^` は最初か2番目のセットのどちらか一方にだけある要素を含む新しいセットを返します。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **`in` 演算子**: `in` 演算子を使って要素がセットに含まれているかどうかをチェックできます。

```python
print(5 in my_set) # True
```

## Python標準ライブラリ

- **Python標準ライブラリ**: ライブラリは関数、クラス、データ構造などの再利用可能なコードを提供します。Pythonには多くの問題やタスクに対する標準化された解決策を実装した組み込みモジュールが豊富にあります。人気のある組み込みモジュールの例には `math`、`random`、`re`（「正規表現」の略）、`datetime` などがあります。

## import文

- **import文**: 組み込みモジュールで定義された要素にアクセスするには import 文を使います。import 文は通常ファイルの先頭に書きます。import 文は関数、クラス、定数、変数、その他モジュール内で定義された要素すべてに同じように機能します。

- **基本的なimport文**: `import` キーワードの後にモジュール名を書きます。

```python
import module_name
```

その後、そのモジュールの関数を呼び出すには、モジュール名の後にドット記法で関数名を書きます。

```python
module_name.function_name()
```

例えば、`math` モジュールをインポートして 36 の平方根を取得するには以下のように書きます。

```python
import math

math.sqrt(36)
```

- **別名でモジュールをインポートする**: モジュールを別名（エイリアス）でインポートしたい場合は、import 文の最後に `as` とエイリアスを書きます。長いモジュール名や名前の衝突を避けるためによく使われます。

```python
import module_name as module_alias
```

例えば、`math` モジュールをコード内で `m` として参照したい場合は以下のようにエイリアスを割り当てます。

```python
import math as m
```

その後、エイリアスを使ってモジュールの要素にアクセスできます。

```python
m.sqrt(36)
```

- **特定の要素だけをインポートする**: モジュールのすべてが必要ない場合は `from` を使って特定の要素だけをインポートできます。この場合、import 文は `from` で始まり、モジュール名、`import` キーワード、インポートしたい要素名が続きます。

```python
from module_name import name1, name2
```

その後、Pythonスクリプト内でこれらの名前をモジュールの接頭辞なしで使えます。例えば：

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
これは便利ですが、同じ名前の関数や変数がすでにある場合に名前の衝突が起こる可能性があります。どのタイプのimport文を使うか選ぶ際に注意してください。

これらの名前にエイリアスを割り当てたい場合は、`as` キーワードの後にエイリアスを書いて割り当てることもできます。

```python
from module_name import name1 as alias1, name2 as alias2
```

- **アスタリスクを使ったimport文 (`*`)**: アスタリスクはモジュール内のすべてをインポートしたいことをPythonに伝えますが、モジュール名を接頭辞として使う必要がなくなります。

```python
from module_name import *
```

例えば、これを使って `math` モジュールをインポートすると、そのモジュール内で定義された関数をモジュール名を指定せずに呼び出せます。

```python
from math import *
print(sqrt(36))  # 6.0
```

しかし、これは名前空間の衝突を引き起こしやすく、名前の由来がわかりにくくなるため、一般的には推奨されません。

## `if __name__ == '__main__'`

- **`__name__` 変数**: `__name__` はPythonの特別な組み込み変数です。Pythonファイルが直接実行されると、この変数の値は文字列 `"__main__"` に設定されます。しかし、そのPythonファイルが別のPythonスクリプトにモジュールとしてインポートされると、`__name__` 変数の値はそのモジュールの名前に設定されます。

このため、Pythonスクリプトでこの条件文をよく見かけます。これはPythonスクリプトがメインプログラムとして実行されている場合にのみ実行したいコードを含みます。

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

辞書とセットのトピックと概念を復習してください。
