---
id: 67f39babe1e2ec1fb6eea32a
title: 辞書とセットのレビュー
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 辞書

- **辞書**: 辞書は組み込みのデータ構造で、キーと値のペアのコレクションを格納します。キーは一意である必要があります。キーには数値、文字列、数値と文字列のタプルを使えますが、リストを含むタプルは使えません。値は繰り返し可能で、任意のデータ型を取れます。辞書はアイテムが追加された順序も保持します。Pythonの辞書の一般的な構文は以下の通りです。

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

- **ブラケット代入**: ブラケット記法を使って新しいキーと値のペアを追加したり、既存のキーの値を更新したりできます。キーが存在しなければ追加され、すでに存在すれば値が置き換えられます。

```python
dictionary[key] = value
```

- **ループ中の値の更新**: `items()`でループしながら、各キーに代入することで既存のキーの値を更新できます。

```python
products = {'apple': 10, 'pear': 20}

for product, price in products.items():
    products[product] = round(price * 0.8)

print(products)  # {'apple': 8, 'pear': 16}
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

- **セット**: セットはPythonの組み込みデータ構造で、重複する値を許しません。セットは変更可能で順序がなく、要素は特定の順序で格納されないため、インデックスやキーでアクセスできません。セットの要素には数値、文字列、数値と文字列のタプルを使えますが、リストを含むタプルは使えません。

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

- **複合セット演算子**: 演算子 `|=`, `&=`, `-=`, `^=` は和集合、積集合、差集合、対称差集合の演算を行いますが、新しいセットを作るのではなく既存のセットを更新します。

```python
my_set = {1, 2, 3}

my_set |= {3, 4}          # {1, 2, 3, 4}
my_set &= {2, 3, 4, 5}    # {2, 3, 4}
my_set -= {4}             # {2, 3}
my_set ^= {3, 5}          # {2, 5}
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

- **アスタリスク（`*`）を使ったインポート文**: アスタリスクはモジュールの公開されている名前をすべてインポートし、モジュール名を接頭辞として使う必要がなくなります。モジュールが `__all__` を定義していれば、そのリストでインポートされる名前が制御されます。そうでなければ、アンダースコアで始まる名前は除外されます。

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

このため、Pythonスクリプトでこの条件文をよく見かけます。これはPythonスクリプトがメインプログラムとして実行されている場合に**のみ**実行したいコードを含んでいます。

```python
if __name__ == '__main__': 
    # Code
```

## データの検証

- **イテラブルからセットを作成する**: `set()` コンストラクタはリスト、文字列、辞書（キーを返す）などのイテラブルを受け入れます。ただし、その要素がセットに格納可能である必要があります。例えば、数値のリストは有効ですが、リストを含むリストは無効です。これは期待するキーと実際に持っているキーを比較するのに便利です。

```python
expected_keys = {'name', 'age'}
data = {'name': 'Jessica', 'age': 30}

print(set(data) == expected_keys)  # True
```

- **`**` を使った辞書のアンパック**: `**` 演算子は辞書をキーワード引数にアンパックします。各キーがパラメータ名として使われます。

```python
def greet(name, age):
    print(f'{name} is {age}')

data = {'name': 'Jessica', 'age': 30}
greet(**data)  # Jessica is 30
```

- **正規表現と `re.search()`**: 正規表現はテキストパターンを表します。`re.search()` 関数は文字列のどこかにパターンがあるか探します。見つかればマッチオブジェクトを返し、なければ `None` を返します。

```python
import re

print(re.search('cat', 'concatenate'))  # <re.Match object; span=(3, 6), match='cat'>
print(re.search('dog', 'concatenate'))  # None
```

- **`re.IGNORECASE` を使った大文字小文字を区別しないマッチング**: 3番目の引数に `re.IGNORECASE` を渡すと、大文字と小文字の違いを無視します。

```python
print(re.search('cat', 'CAT', re.IGNORECASE))  # <re.Match object; span=(0, 3), match='CAT'>
```

- **生文字列と `\d`**: 生文字列は `r` で始まり、バックスラッシュを文字通り扱うため正規表現が読みやすくなります。パターン中の `\d` は任意の1桁の数字にマッチします。

```python
print(re.search(r'\d', 'room 5'))  # <re.Match object; span=(5, 6), match='5'>
```

- **`+` 量指定子**: `+` 量指定子は直前のパターンが1回以上繰り返される部分にマッチします。

```python
print(re.search(r'\d+', 'room 305'))  # <re.Match object; span=(5, 8), match='305'>
```

- **`re.fullmatch()` 関数**: `re.fullmatch()` 関数は文字列全体がパターンにマッチした場合のみマッチオブジェクトを返します。そうでなければ `None` を返します。

```python
print(re.fullmatch(r'\d+', '305'))      # <re.Match object; span=(0, 3), match='305'>
print(re.fullmatch(r'\d+', 'room 305')) # None
```

- **`is` と `is not` によるオブジェクト同一性の判定**: `is` 演算子は2つの名前が同じオブジェクトを指しているかをチェックし、`is not` はそうでないことをチェックします。これらは値が `None` かどうかを判定する標準的な方法です。

```python
result = None

print(result is None)      # True
print(result is not None)  # False
```

- **`all()` 関数**: `all()` 関数はイテラブルのすべての要素が真であれば `True` を返します。空のイテラブルでも `True` を返します。

```python
print(all([1, 'a', True]))  # True
print(all([1, 0, True]))    # False
```

# --assignment--

辞書とセットのトピックと概念を復習してください。
