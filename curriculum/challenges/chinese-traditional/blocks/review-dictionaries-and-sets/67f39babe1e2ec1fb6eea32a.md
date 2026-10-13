---
id: 67f39babe1e2ec1fb6eea32a
title: 字典與集合複習
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 字典（Dictionaries）

- **字典**：字典是內建的資料結構，用來儲存鍵值對集合。鍵必須是不可變的資料型別。以下是 Python 字典的一般語法：

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` 建構式**：`dict()` 建構式是建立字典的另一種方式。你可以將一個包含鍵值對 tuple 的列表作為引數傳入 `dict()` 建構式。這些 tuple 的第一個元素是鍵，第二個元素是值。

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **中括號表示法**：要存取鍵值對的值，可以使用稱為中括號表示法的語法。

```python
dictionary[key]
```

## 常用字典方法

- **`get()` 方法**：`get()` 方法用來取得與鍵相關聯的值。它類似中括號表示法，但允許你設定預設值，避免鍵不存在時發生錯誤。

```python
dictionary.get(key, default)
```

- **`keys()` 和 `values()` 方法**：`keys()` 和 `values()` 方法分別回傳字典中所有鍵和值的檢視物件。檢視物件是一種查看字典內容而不建立資料複本的方式。

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

- **`items()` 方法**：`items()` 方法回傳包含字典所有鍵值對的檢視物件，包含鍵和值。

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()` 方法**：`clear()` 方法會移除字典中所有的鍵值對。

```python
pizza.clear()
```

- **`pop()` 方法**：`pop()` 方法會移除指定為第一個引數的鍵值對，並回傳其值。如果鍵不存在，則回傳第二個引數指定的預設值。如果鍵不存在且未指定預設值，則會引發 `KeyError`。

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()` 方法**：在 Python 3.7 及以上版本，`popitem()` 方法會移除最後插入的項目。

```python
pizza.popitem()
```

- **`update()` 方法**：`update()` 方法會用另一個字典的鍵值對更新字典。如果有相同的鍵，值會被覆寫。新的鍵會被加入字典。

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## 遍歷字典

- **遍歷值**：如果你需要遍歷字典中的值，可以寫一個 `for` 迴圈搭配 `values()` 來取得字典的所有值。

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

輸出：

```md
990
600
250
70
```

- **遍歷鍵**：如果你需要遍歷上述 `products` 字典的鍵，可以直接寫 `products.keys()` 或 `products`。

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

輸出：

```md
Laptop
Smartphone
Tablet
Headphones
```

- **遍歷鍵值對**：如果你需要同時遍歷鍵和對應的值，可以遍歷 `products.items()`。你會得到包含鍵和值的個別 tuple。

```python
for product in products.items():
    print(product)
```

輸出：

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

要將鍵和值分別存放在不同的迴圈變數中，需要用逗號分隔。第一個變數存放鍵，第二個存放值。

```python
for product, price in products.items():
    print(product, price)
```

輸出：

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **`enumerate()` 函式**：如果你需要在遍歷字典時同時追蹤計數器，可以呼叫 `enumerate()` 函式。該函式回傳一個 `enumerate` 物件，會為每個項目分配一個整數計數器。你可以從任意數字開始計數，但預設從 0 開始。

將索引和值分別指定給不同的迴圈變數是使用 `enumerate()` 的常見方式。例如，使用 `products.items()`，你可以取得索引以及整個鍵值對：

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

輸出：

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

要自訂計數的起始值，可以傳入第二個引數給 `enumerate()`。以下範例從 1 開始計數。

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

輸出：

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## 集合（Sets）

- **集合**：集合是 Python 內建的資料結構，不允許重複值。集合是可變且無序的，這表示元素沒有特定順序，因此無法用索引或鍵來存取。集合只能包含不可變資料型別的值，例如數字、字串和 tuple。

- **定義集合**：要定義集合，需要將元素寫在大括號內並用逗號分隔。

```python
my_set = {1, 2, 3, 4, 5}
```

- **定義空集合**：如果你需要定義空集合，必須使用 `set()` 函式。只寫空的大括號會自動建立字典。

```python
set() # Set
{}    # Dictionary
```

## 常用集合方法

- **`add()` 方法**：你可以使用 `add()` 方法將元素加入集合，並將新元素作為引數傳入。

```python
my_set.add(6)
```

- **`remove()` 和 `discard()` 方法**：要從集合中移除元素，可以使用 `remove()` 方法或 `discard()` 方法，並將要移除的元素作為引數傳入。`remove()` 方法在找不到元素時會引發 `KeyError`，而 `discard()` 方法則不會。

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()` 方法**：`clear()` 方法會移除集合中所有元素。

```python
my_set.clear()
```

## 數學集合運算

- **`issubset()` 和 `issuperset()` 方法**：`issubset()` 和 `issuperset()` 方法分別用來檢查一個集合是否為另一個集合的子集合或超集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **`isdisjoint()` 方法**：`isdisjoint()` 方法用來檢查兩個集合是否不相交，即沒有共同元素。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **聯集運算子 (`|`)**：聯集運算子 `|` 回傳一個包含兩個集合所有元素的新集合。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **交集運算子 (`&`)**：交集運算子 `&` 回傳一個只包含兩個集合共有元素的新集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **差集運算子 (`-`)**：差集運算子 `-` 回傳一個包含第一個集合中不在第二個集合的元素的新集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **對稱差集運算子 (`^`)**：對稱差集運算子 `^` 回傳一個包含只存在於第一或第二集合，但不在兩者共有的元素的新集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **`in` 運算子**：你可以使用 `in` 運算子檢查元素是否存在於集合中。

```python
print(5 in my_set) # True
```

## Python 標準程式庫

- **Python 標準程式庫**：程式庫提供你預先撰寫且可重複使用的程式碼，例如函式、類別和資料結構，你可以在專案中重複使用。Python 擁有豐富的標準程式庫，內建模組實作了許多問題和任務的標準解決方案。常見的內建模組範例有 `math`、`random`、`re`（正規表達式的縮寫）和 `datetime`。

## 匯入陳述式

- **匯入陳述式**：要存取內建模組中定義的元素，你使用匯入陳述式。匯入陳述式通常寫在檔案頂端。匯入陳述式對函式、類別、常數、變數以及模組中定義的其他元素都適用。

- **基本匯入陳述式**：你可以使用 `import` 關鍵字，後面接模組名稱：

```python
import module_name
```

接著，如果你需要呼叫該模組的函式，可以使用點記法，模組名稱後接函式名稱。

```python
module_name.function_name()
```

例如，你可以在程式碼中寫下以下內容，匯入 `math` 模組並取得 36 的平方根：

```python
import math

math.sqrt(36)
```

- **以不同名稱匯入模組**：如果你需要用不同名稱（別名）匯入模組，可以在匯入陳述式末尾使用 `as`，後面接別名。這通常用於模組名稱過長或避免命名衝突。

```python
import module_name as module_alias
```

例如，若要在程式碼中將 `math` 模組稱為 `m`，可以這樣指定別名：

```python
import math as m
```

然後，你可以使用別名存取模組的元素：

```python
m.sqrt(36)
```

- **匯入特定元素**：如果你不需要整個模組，可以使用 `from` 匯入特定元素。此時匯入陳述式以 `from` 開頭，接著是模組名稱，再用 `import` 關鍵字，最後列出要匯入的元素名稱。

```python
from module_name import name1, name2
```

接著，你可以在 Python 腳本中直接使用這些名稱，而不需模組前綴。例如：

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
這很方便，但如果你已有同名的函式或變數，可能會導致命名衝突。選擇匯入方式時要注意。

如果你需要為這些名稱指定別名，也可以使用 `as` 關鍵字，後面接別名。

```python
from module_name import name1 as alias1, name2 as alias2
```

- **使用星號（`*`）的匯入陳述式**：星號告訴 Python 你想匯入該模組的所有內容，但不想使用模組名稱作為前綴。

```python
from module_name import *
```

例如，使用此方式匯入 `math` 模組後，你可以直接呼叫該模組中定義的任何函式，而不需指定模組名稱。

```python
from math import *
print(sqrt(36))  # 6.0
```

不過，這通常不建議使用，因為可能導致命名空間衝突，且難以判斷名稱來源。

## `if __name__ == '__main__'`

- **`__name__` 變數**：`__name__` 是 Python 中一個特殊的內建變數。當 Python 檔案被直接執行時，Python 會將此變數的值設為字串 `"__main__"`。但如果該 Python 檔案被匯入為另一個 Python 腳本的模組，`__name__` 變數的值會設為該模組的名稱。

這就是為什麼你常在 Python 腳本中看到這個條件判斷。它包含了你只想在 Python 腳本作為主程式執行時才執行的程式碼。

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

檢視 Dictionaries 和 Sets 主題與概念。
