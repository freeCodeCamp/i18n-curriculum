---
id: 6aeaec9c8f05dde6a77e511f
title: Pythonで共有リストはどのように振る舞うのか？
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

名前がオブジェクトを参照し、リストは変更可能であることを学びました。複数の名前が同じリストを参照すると何が起こるか見てみましょう。

## 等しいリストとエイリアスの比較

2つのリストは同じ値を含んでいても同じオブジェクトとは限りません。`==`は等価性をチェックし、`is`は同一性をチェックすることを思い出してください：

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

それぞれの`['milk']`式は別々のリストを作成します。しかし、`alias = items`はコピーを作成しません。既存のリストに別の名前を結びつけます。この別の名前をエイリアスと呼びます。

どちらの名前を通じてリストを変更しても、もう一方から変更が見えます：

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

別の`equal_items`リストは変更されていません。

## 関数のパラメータを通じてリストを変更する

引数は代入によって渡されます。パラメータは呼び出し元が渡したオブジェクトに最初に結びつけられたローカル名です。Pythonはそのオブジェクトを自動的にコピーしません。

ここで、パラメータ`items`と呼び出し元の変数`groceries`は同じリストを参照しています：

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

`append()`を呼び出すと共有リストが変更されます。関数に`return`文はないので`None`を返しますが、リストの変更は呼び出し元からも見えます。

ローカルパラメータを再代入すると異なる効果があります：

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

代入はローカル名`items`を新しいリストに参照させます。元のリストは変更されず、呼び出し元の変数`groceries`も再代入されません。

## 新しいリストを返す

関数は渡されたリストを変更する代わりに新しいリストを作成して返すことができます。`+`演算子はリストを連結し、その要素を含む新しい外側のリストを作成します：

```py
def with_extra_item(items):
    return items + ['eggs']

groceries = ['milk']
alias = groceries

groceries = with_extra_item(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk']
print(groceries is alias) # False
```

呼び出し元は返されたリストを`groceries`に代入します。名前`alias`はまだ元のリストを参照しています。返り値を代入や他の方法で使わずに関数を呼び出すと、`groceries`も元のリストを参照したままになります。

連結は新しい外側のリストを作成しますが、ネストされたオブジェクトはコピーしません。要素がリスト自身であれば、新しい外側のリストは同じ内側のリストへの参照を含みます。

## リストの`+`と`+=`の比較

組み込みリストでは、`items = items + [...]`は新しいリストを作成して`items`に再代入します。対照的に、`items += [...]`は既存のリストをその場で拡張します：

```py
def add_with_plus(items):
    items = items + ['eggs']

def add_with_plus_equals(items):
    items += ['eggs']

groceries = ['milk']
alias = groceries

add_with_plus(groceries)
print(groceries) # ['milk']
print(alias) # ['milk']

add_with_plus_equals(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
```

最初の関数ではローカル名だけが新しいリストを参照します。2番目では共有リストが変更され、ローカル名もそれを参照し続けます。これが、他の参照が存在する場合にリストの`+=`が加算と代入の組み合わせと置き換えられない理由です。

## デフォルト引数としてリストを使う

デフォルト引数は呼び出し元がその引数を省略したときに値を提供します。空のリストをデフォルトにすると、関数定義時にそのリストが1回だけ作成されます。引数を省略した呼び出しは同じリストを再利用します：

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

2回目の呼び出しは1回目の呼び出しで変更されたリストを受け取ります。各呼び出しは独自のローカルパラメータ名を持ちますが、その名前は同じデフォルトオブジェクトを参照しています。リストは呼び出し間で再び空になりません。

引数が渡されなかった場合に毎回新しいリストで開始したいなら、デフォルトに`None`を使い、関数内でリストを作成してください：

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

ここでは、引数が省略されるか明示的に`None`が渡されるたびに`items = []`が実行され、その呼び出し用の新しいリストが作成されます。

既存のリストを渡して変更することもできます：

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

groceries = []
add_item('milk', groceries)
add_item('eggs', groceries)
print(groceries) # ['milk', 'eggs']
```

`items is None`のチェックはリストが渡されなかった場合と空のリストが渡された場合を区別します。`if not items`を使うと空のリストもマッチして新しいリストに置き換えられるため、呼び出し元の空リストは追加された要素を受け取りません。

## ネストされたリストへの参照の繰り返し

`[0] * 3`のようなリストの繰り返しがどのようにリストを作るか見てきました。繰り返しは新しい外側のリストを作成しますが、その要素の参照を繰り返し、要素自体はコピーしません。

これは要素が変更可能な場合に重要です：

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

`[[]]`は1つの内側リストを作成します。繰り返すと同じ内側リストへの参照が3つの位置に置かれます。`rows[0]`を通じて変更するとすべての位置に変更が見えます。

`numbers = [0] * 3`の場合、`numbers[0] = 1`は1つの要素参照を置き換えます。変更不可能な整数`0`を変更するわけではありません。だから他の位置は`0`のままです。

別々の内側リストが必要なら、それぞれを別々に作成してください：

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

このモジュールの後半で、リスト内包表記を使って任意の数の別々の内側リストを作成する方法を学びます。

# --questions--

## --text--

次のコードは何を出力しますか？

```py
def update(items):
    items.append('b')
    items = ['c']

letters = ['a']
update(letters)
print(letters)
```

## --answers--

`['a']`

### --feedback--

追加は共有リストを変更し、再代入はローカル名だけを変更します。

---

`['c']`

### --feedback--

追加は共有リストを変更し、再代入はローカル名だけを変更します。

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

追加は共有リストを変更し、再代入はローカル名だけを変更します。

## --video-solution--

3

## --text--

`items = ['milk']`と`alias = items`の後、どの文が`alias`が参照するリストに`'eggs'`を追加しますか？

## --answers--

`items = items + ['eggs']`

### --feedback--

どの操作が既存のリストをその場で拡張するか考えてください。

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

どの操作が既存のリストをその場で拡張するか考えてください。

---

`items + ['eggs']`

### --feedback--

どの操作が既存のリストをその場で拡張するか考えてください。

## --video-solution--

2

## --text--

`rows = [[]] * 3`の後で`rows[0]`に追加するとなぜ3つの位置すべてに新しい項目が表示されるのですか？

## --answers--

各位置が同じ内側リストを参照しているからです。

---

Pythonは各変更を別々の内側リストに自動的にコピーしません。

### --feedback--

リストの繰り返しは要素自体をコピーせずに参照を繰り返します。

---

`append()`メソッドはプログラム内のすべてのリストを常に変更するわけではありません。

### --feedback--

リストの繰り返しは要素自体をコピーせずに参照を繰り返します。

---

乗算演算子は`append()`を3回実行しません。

### --feedback--

リストの繰り返しは要素自体をコピーせずに参照を繰り返します。

## --video-solution--

1
