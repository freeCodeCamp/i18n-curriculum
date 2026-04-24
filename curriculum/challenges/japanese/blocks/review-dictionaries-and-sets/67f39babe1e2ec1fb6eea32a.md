---
id: 67f39babe1e2ec1fb6eea32a
title: 辞書とセットのレビュー
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 辞書

- **辞書**: 辞書はキーと値のペアのコレクションを格納する組み込みのデータ構造です。キーは不変のデータ型である必要があります。Pythonの辞書の一般的な構文は以下の通りです。

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` コンストラクタ**: `dict()` コンストラクタは辞書を作成する別の方法です。`dict()` コンストラクタにタプルのリストを引数として渡します。これらのタプルは、最初の要素にキー、2番目の要素に値を含みます。

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **ブラケット記法**: キーと値のペアの値にアクセスするには、ブラケット記法として知られる構文を使うことができます。

```python
dictionary[key]
```

## 一般的な辞書のメソッド

- **`get()` メソッド**: `get()` メソッドはキーに関連付けられた値を取得します。ブラケット記法に似ていますが、キーが存在しない場合にエラーを防ぐためにデフォルト値を設定できます。

```python
dictionary.get(key, default)
```

- **`keys()` と `values()` メソッド**: `keys()` と `values()` メソッドは、それぞれ辞書内のすべてのキーと値を含むビューオブジェクトを返します。ビューオブジェクトは、データの別コピーを作成せずに辞書の内容を見る方法です。

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

- **`items()` メソッド**: `items()` メソッドは、キーと値の両方を含む辞書内のすべてのキーと値のペアを含むビューオブジェクトを返します。

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()` メソッド**: `clear()` メソッドは辞書からすべてのキーと値のペアを削除します。

```python
pizza.clear()
```

- **`pop()` メソッド**: `pop()` メソッドは、最初の引数で指定されたキーのキーと値のペアを削除し、その値を返します。キーが存在しない場合は、2番目の引数で指定されたデフォルト値を返します。キーが存在せず、デフォルト値が指定されていない場合は `KeyError` が発生します。

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()` メソッド**: Python 3.7以降では、`popitem()` メソッドは最後に挿入されたアイテムを削除します。

```python
pizza.popitem()
```

- **`update()` メソッド**: `update()` メソッドは、別の辞書のキーと値のペアで辞書を更新します。共通のキーがある場合は、その値が上書きされます。新しいキーは新しいキーと値のペアとして辞書に追加されます。

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## 辞書のループ処理

- **値の繰り返し**: 辞書の値を繰り返す必要がある場合は、`for` ループを `values()` と書いて辞書のすべての値を取得できます。

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

- **キーの繰り返し**: 上記の `products` 辞書のキーを繰り返す必要がある場合は、`products.keys()` または `products` を直接書くことができます。

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

- **キーと値のペアの繰り返し**: キーと対応する値を同時に繰り返す必要がある場合は、`products.items()` を繰り返します。キーと対応する値を含む個別のタプルが得られます。

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

キーと値を別々のループ変数に格納するには、カンマで区切る必要があります。最初の変数がキーを格納し、2番目の変数が値を格納します。

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

- **`enumerate()` 関数**: カウンターを追跡しながら辞書を繰り返す必要がある場合は、`enumerate()` 関数を呼び出せます。この関数は `enumerate` オブジェクトを返し、各アイテムに整数を割り当てます。カウンターは任意の数から開始できますが、デフォルトでは0から始まります。

インデックスとアイテムを別々のループ変数に代入するのが `enumerate()` の一般的な使い方です。例えば、`products.items()` を使うと、インデックスに加えてキーと値のペア全体を取得できます。

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

カウントの初期値をカスタマイズするには、`enumerate()` に2番目の引数を渡します。例えば、ここではカウントを1から開始しています。

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

- **セット**: セットはPythonの組み込みデータ構造で、重複する値を許しません。セットは変更可能で順序付けられていないため、要素は特定の順序で格納されず、インデックスやキーでアクセスできません。また、セットには数値、文字列、タプルなどの不変データ型の値のみを含めることができます。

- **セットの定義**: セットを定義するには、中括弧内に要素を書き、カンマで区切ります。

```python
my_set = {1, 2, 3, 4, 5}
```

- **空のセットの定義**: 空のセットを定義する必要がある場合は、`set()` 関数を使う必要があります。空の中括弧だけを書くと自動的に辞書が作成されます。

```python
set() # Set
{}    # Dictionary
```

## 一般的なセットのメソッド

- **`add()` メソッド**: `add()` メソッドを使ってセットに要素を追加できます。新しい要素を引数として渡します。

```python
my_set.add(6)
```

- **`remove()` と `discard()` メソッド**: セットから要素を削除するには、`remove()` メソッドか `discard()` メソッドを使い、削除したい要素を引数として渡します。`remove()` メソッドは要素が見つからない場合に `KeyError` を発生させますが、`discard()` メソッドは発生させません。

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()` メソッド**: `clear()` メソッドはセットからすべての要素を削除します。

```python
my_set.clear()
```

## 集合の数学的操作

- **`issubset()` と `issuperset()` メソッド**: `issubset()` と `issuperset()` メソッドは、それぞれあるセットが別のセットの部分集合か超集合かをチェックします。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **`isdisjoint()` メソッド**: `isdisjoint()` メソッドは、2つのセットが共通の要素を持たないかどうか（互いに素かどうか）をチェックします。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **和集合演算子 (`|`)**: 和集合演算子 `|` は、両方のセットのすべての要素を含む新しいセットを返します。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **積集合演算子 (`&`)**: 積集合演算子 `&` は、セットが共通して持つ要素だけを含む新しいセットを返します。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **差集合演算子 (`-`)**: 差集合演算子 `-` は、最初のセットにあって他のセットにない要素を含む新しいセットを返します。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **対称差演算子 (`^`)**: 対称差演算子 `^` は、最初か2番目のセットのいずれかに含まれるが両方には含まれない要素を含む新しいセットを返します。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **`in` 演算子**: `in` 演算子を使って、要素がセットに含まれているかどうかをチェックできます。

```python
print(5 in my_set) # True
```

## Python標準ライブラリ

- **Python標準ライブラリ**: ライブラリは、関数、クラス、データ構造などの再利用可能なコードを提供し、プロジェクトで再利用できます。Pythonには多くの問題やタスクに対する標準化された解決策を実装した組み込みモジュールを含む広範な標準ライブラリがあります。人気のある組み込みモジュールの例には `math`、`random`、`re`（「正規表現」の略）、`datetime` があります。

## インポート文

- **インポート文**: 組み込みモジュールで定義された要素にアクセスするには、インポート文を使います。インポート文は通常ファイルの先頭に書きます。インポート文は、関数、クラス、定数、変数、その他モジュール内で定義された要素すべてに対して同じように機能します。

- **基本的なインポート文**: `import` キーワードの後にモジュール名を書きます。

```python
import module_name
```

その後、そのモジュールの関数を呼び出す必要がある場合は、モジュール名の後に関数名をドット記法で書きます。

```python
module_name.function_name()
```

例えば、`math` モジュールをインポートして36の平方根を取得するには、次のようにコードに書きます。

```python
import math

math.sqrt(36)
```

- **別名でモジュールをインポートする**: モジュールを別名（エイリアス）でインポートする必要がある場合は、インポート文の最後に `as` とエイリアスを書きます。これは長いモジュール名や名前の衝突を避けるためによく使われます。

```python
import module_name as module_alias
```

例えば、`math` モジュールをコード内で `m` として参照するには、次のようにエイリアスを割り当てます。

```python
import math as m
```

その後、エイリアスを使ってモジュールの要素にアクセスできます。

```python
m.sqrt(36)
```

- **特定の要素だけをインポートする**: モジュールのすべてが必要ない場合は、`from` を使って特定の要素だけをインポートできます。この場合、インポート文は `from` で始まり、モジュール名、`import` キーワード、そしてインポートしたい要素名が続きます。

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
 
これは便利ですが、同じ名前の関数や変数がすでにある場合に名前の衝突が起こる可能性があります。どのタイプのインポート文を使うか選ぶ際に注意してください。

これらの名前にエイリアスを割り当てることもでき、`as` キーワードの後にエイリアスを書きます。

```python
from module_name import name1 as alias1, name2 as alias2
```

- **アスタリスク付きインポート文 (`*`)**: アスタリスクは、そのモジュール内のすべてをインポートしたいことをPythonに伝えますが、モジュール名を接頭辞として使う必要がなくなります。

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

- **`__name__` 変数**: `__name__` はPythonの特別な組み込み変数です。Pythonファイルが直接実行されると、この変数の値は文字列 `"__main__"` に設定されます。しかし、Pythonファイルが別のPythonスクリプトにモジュールとしてインポートされると、`__name__` 変数の値はそのモジュールの名前に設定されます。

このため、Pythonスクリプトでこの条件文をよく見かけます。これはPythonスクリプトがメインプログラムとして実行されている場合に**のみ**実行したいコードを含みます。

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

辞書とセットのトピックと概念を復習してください。
