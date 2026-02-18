---
id: 67f39babe1e2ec1fb6eea32a
title: 字典與集合複習
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 字典

- **字典**：字典是內建的資料結構，用來儲存鍵值配對的群集。鍵必須是不可變的資料型別。這是 Python 字典的一般語法：

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` 建構式**：`dict()` 建構式是建置字典的另一種方式。你將一個包含多個元組的列表作為引數傳遞給 `dict()` 建構式。這些元組的第一個元素是鍵，第二個元素是值。

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **括號表示法**：要存取鍵值對的值，你可以使用稱為括號表示法的語法。

```python
dictionary[key]
```

## 常用字典方法

- **`get()` 方法**：`get()` 方法會取得與鍵相關的值。它類似於括號表示法，但允許你設定預設值，避免在鍵不存在時發生錯誤。

```python
dictionary.get(key, default)
```

- **`keys()` 和 `values()` 方法**：`keys()` 和 `values()` 方法分別傳回包含字典中所有鍵與值的檢視物件。檢視物件是一種查看字典內容而不建立資料獨立副本的方式。

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

- **`items()` 方法**：`items()` 方法傳回一個檢視物件，該物件包含字典中所有的鍵值對組，包括鍵和值。

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()` 方法**：`clear()` 方法會從字典中移除所有的鍵值配對。

```python
pizza.clear()
```

- **`pop()` 方法**：`pop()` 方法會移除以第一個引數指定的鍵的鍵值對，並傳回其值。如果該鍵不存在，則傳回第二個引數指定的預設值。如果該鍵不存在且未指定預設值，則會引發 `KeyError`。

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()` 方法**：在 Python 3.7 及以上版本中，`popitem()` 方法會移除最後插入的項目。

```python
pizza.popitem()
```

- **`update()` 方法**：`update()` 方法會使用另一個字典的鍵值對來更新鍵值對。如果它們有共同的鍵，則其值會被覆寫。新的鍵會作為新的鍵值對被添加到字典中。

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## 對字典進行迴圈

- **迭代值**：如果你需要迭代字典中的值，你可以寫一個帶有 `values()` 的 `for` 迴圈來取得字典的所有值。

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

- **迭代鍵**：如果你需要迭代上述 `products` 字典中的鍵，你可以寫 `products.keys()` 或直接寫 `products`。

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

- **迭代鍵值配對**：如果你需要同時迭代鍵及其對應的值，你可以迭代 `products.items()`。你會得到包含鍵及其對應值的個別元組。

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

要將鍵和值儲存在不同的迴圈變數中，你需要用逗號將它們分開。第一個變數儲存鍵，第二個變數儲存值。

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

- **`enumerate()` 函式**：如果你需要在迭代字典時同時追蹤計數器，你可以呼叫 `enumerate()` 函式。該函式傳回一個 `enumerate` 物件，會為每個項目指定一個整數，像是計數器。你可以從任何數字開始計數，但預設值是從 0 開始。

將索引和項目指定給不同的迴圈變數是使用 `enumerate()` 的常見方式。 例如，使用 `products.items()`，你可以取得整個鍵值對組以及索引：

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

要自訂計數的初始值，你可以傳遞第二個引數給 `enumerate()`。例如，這裡我們從 1 開始計數。

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

## 集合

- **集合**：集合是 Python 內建的資料結構，不允許重複的值。集合是可變的且無序的，這表示其元素不會以特定順序儲存，因此你無法使用索引或鍵來存取它們。此外，集合只能包含不可變資料型別的值，例如數字、字串和元組。

- **定義集合**：要定義集合，你需要將其元素寫在大括號內並以逗號分隔。

```python
my_set = {1, 2, 3, 4, 5}
```

- **定義空集合**：如果你需要定義空集合，必須使用 `set()` 函式。僅寫空的大括號會自動創建字典。

```python
set() # Set
{}    # Dictionary
```

## 常用集合方法

- **`add()` 方法**：你可以使用 `add()` 方法為集合添加元素，並將新元素作為引數傳入。

```python
my_set.add(6)
```

- **`remove()` 和 `discard()` 方法**：要從集合中移除元素，你可以使用 `remove()` 方法或 `discard()` 方法，並將你想移除的元素作為引數傳入。若找不到該元素，`remove()` 方法會引發 `KeyError`，而 `discard()` 方法則不會。

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()` 方法**：`clear()` 方法會移除集合中的所有元素。

```python
my_set.clear()
```

## 數學集合操作

- **`issubset()` 和 `issuperset()` 方法**：`issubset()` 和 `issuperset()` 方法分別檢查一個集合是否為另一個集合的子集合或超集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **`isdisjoint()` 方法**：`isdisjoint()` 方法用來檢查兩個集合是否不相交，即它們沒有共同的元素。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **聯集（數學）運算子 (`|`)**：聯集（數學）運算子 `|` 傳回一個包含兩個集合中所有元素的新集合。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **交集運算子 (`&`)**：交集運算子 `&` 傳回一個只包含集合共同元素的新集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **差集運算子 (`-`)**：差集運算子 `-` 傳回一個新集合，該集合包含第一個集合中不在其他集合內的元素。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **對稱差運算子 (`^`)**：對稱差運算子 `^` 傳回一個新集合，該集合包含只存在於第一個集合或第二個集合中，但不包含兩者皆有的元素。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **`in` 運算子**：你可以使用 `in` 運算子檢查元素是否在集合中。

```python
print(5 in my_set) # True
```

## Python 標準程式庫

- **Python 標準程式庫**：函式庫提供你預先撰寫且可重複使用的程式碼，例如函式、類別和資料結構，你可以在你的專案中重複使用。Python 擁有廣泛的標準程式庫，內建模組實作了許多問題和任務的標準化解決方案。一些受歡迎的內建模組範例有 `math`、`random`、`re`（「regular expressions」的縮寫）和 `datetime`。

## 匯入述語

- **匯入述語**：為了存取內建模組中定義的元素，你使用匯入述語。匯入述語通常寫在檔案的頂端。匯入述語對於函式（程式）、類別、常數、變數以及模組中定義的任何其他元素皆適用。

- **基本匯入述語**：你可以使用 `import` 關鍵字，後面接模組名稱：

```python
import module_name
```

然後，如果你需要從該模組呼叫一個方法，你會使用點記法，先寫模組名稱，接著寫方法名稱。

```python
module_name.method_name()
```

例如，你會在你的程式碼中寫下以下內容來匯入 `math` 模組並取得 36 的平方根：

```python
import math

math.sqrt(36)
```

- **以不同名稱匯入模組**：如果你需要以不同名稱（也稱為「別名」）匯入模組，你可以在匯入述語的結尾使用 `as` 後接別名。這通常用於模組名稱過長或避免命名衝突。

```python
import module_name as module_alias
```

例如，要在你的程式碼中將 `math` 模組指涉為 `m`，你可以這樣指定別名：

```python
import math as m
```

然後，你可以使用別名來存取該模組的元素：

```python
m.sqrt(36)
```

- **匯入特定元素**：如果你不需要模組中的所有內容，你可以使用 `from` 匯入特定元素。在這種情況下，匯入述語以 `from` 開頭，接著是模組名稱，然後是 `import` 關鍵字，最後是你想匯入的元素名稱。

```python
from module_name import name1, name2
```

然後，你可以在你的 Python 腳本中使用這些名稱，而不需要模組前置式。 例如：

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
這很有幫助，但如果你已經有相同名稱的函式或變數，可能會導致命名衝突。選擇你想使用的匯入述語型別時，請記住這一點。

如果你需要為這些名稱指定別名，也可以使用 `as` 關鍵字，後面接別名。

```python
from module_name import name1 as alias1, name2 as alias2
```

- **使用星號（`*`）的匯入述語**：星號告訴 Python 你想要匯入該模組中的所有內容，但你想要匯入的方式是不需要使用該模組名稱作為前置式。

```python
from module_name import *
```

例如，如果你使用這個來匯入 `math` 模組，你將能夠呼叫該模組中定義的任何函式，而無需指定模組名稱作為前置式。

```python
from math import *
print(sqrt(36))  # 6.0
```

然而，這通常不建議，因為它可能導致命名空間衝突，並使得難以知道名稱的來源。

## `if __name__ == '__main__'`

- **`__name__` 變數**：`__name__` 是 Python 中一個特殊的內建變數。當一個 Python 檔案被直接執行時，Python 會將此變數的值設為字串 `"__main__"`。但如果該 Python 檔案被匯入為另一個 Python 腳本的模組，則 `__name__` 變數的值會被設為該模組的名稱。

這就是為什麼你經常會在 Python 腳本中看到這個條件。它包含你只想在 Python 腳本作為主要程式執行時**才**執行的程式碼。

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

檢視 Dictionaries 和 Sets 主題與概念。
