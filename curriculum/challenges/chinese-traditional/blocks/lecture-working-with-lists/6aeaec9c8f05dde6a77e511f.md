---
id: 6aeaec9c8f05dde6a77e511f
title: Python 中共用列表的行為方式
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

你已經學會名稱是指向物件，且列表是可變的。讓我們來看看當多個名稱指向同一個列表時會發生什麼。

## 比較相等的列表與別名

兩個列表可以包含相等的值，但不一定是同一個物件。回想一下，`==` 用來檢查相等性，而 `is` 用來檢查身分：

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

每個 `['milk']` 運算式都會創建一個獨立的列表。然而，`alias = items` 不會創建複本。它是將另一個名稱綁定到現有列表。我們稱這個名稱為別名。

透過任一名稱改變列表，另一個名稱也能看到變化：

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

獨立的 `equal_items` 列表保持不變。

## 透過函式參數變異列表

引數是透過指定傳遞。參數是區域名稱，最初綁定到呼叫者提供的物件。Python 不會自動複製該物件。

在這裡，參數 `items` 和呼叫者的變數 `groceries` 指向同一個列表：

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

呼叫 `append()` 會變異共用的列表。函式沒有 `return` 述語，因此傳回 `None`，但列表的變更仍對呼叫者可見。

重新指定區域參數會有不同的效果：

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

這個指派讓區域名稱 `items` 指向一個新的列表。它不會改變原始列表，也不會重新指定呼叫者的變數 `groceries`。

## 傳回新的列表

函式可以創建並傳回一個新的列表，而不是變異傳入的列表。`+` 運算子串接列表，創建一個包含其元素的新外層列表：

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

呼叫者將傳回的列表指定給 `groceries`。名稱 `alias` 仍指向原始列表。若呼叫函式卻不指定或使用其返回值，`groceries` 仍會指向原始列表。

串接會創建新的外層列表，但不會複製任何巢狀物件。如果元素本身是列表，新的外層列表會包含指向同一內層列表的引用。

## 比較列表的 `+` 與 `+=`

對內建列表來說，`items = items + [...]` 會創建新列表並重新指定 `items`。相反地，`items += [...]` 則是在原地擴展現有列表：

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

在第一個函式中，只有區域名稱指向新列表。在第二個函式中，共用列表被變異，區域名稱仍指向它。這就是為什麼當列表有其他引用時，`+=` 不能與加法後指派互換。

## 使用列表作為預設引數

預設引數會在呼叫者省略該引數時提供值。如果你使用空列表作為預設，Python 會在函式定義時創建該列表一次。省略該引數的呼叫會重複使用同一個列表：

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

第二次呼叫會收到第一次呼叫改變過的列表。雖然每次呼叫都有自己的區域參數名稱，但該名稱指向同一個預設物件。列表不會在呼叫間再次變空。

如果每次呼叫在未提供列表時都應從新列表開始，請使用 `None` 作為預設，並在函式內創建列表：

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

這裡，`items = []` 會在每次省略引數或明確傳入 `None` 時執行，為該次呼叫創建新列表。

你仍然可以傳入現有列表以供變異：

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

檢查 `items is None` 用來區分缺少列表與呼叫者傳入的空列表。使用 `if not items` 也會符合空列表並替換成新列表，因此呼叫者的空列表不會收到新增項目。

## 重複引用巢狀列表

你已經看到列表重複如何創建像 `[0] * 3` 的列表。重複會創建新的外層列表，但會重複引用其元素，而非複製那些元素。

當元素是可變的時，這點很重要：

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

運算式 `[[]]` 創建一個內層列表。重複它會在三個位置放入指向同一內層列表的引用。透過 `rows[0]` 變異它，所有位置都能看到變化。

對於 `numbers = [0] * 3`，指派 `numbers[0] = 1` 是替換一個元素引用；它不會變異不可變的整數 `0`。這就是為什麼其他位置仍是 `0`。

如果你需要獨立的內層列表，請分別創建每一個：

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

在本模組後面，你將學習如何用列表推導式創建指定數量的獨立內層列表。

# --questions--

## --text--

以下程式碼會列印什麼？

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

附加會改變共用列表，而重新指定只會改變區域名稱。

---

`['c']`

### --feedback--

附加會改變共用列表，而重新指定只會改變區域名稱。

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

附加會改變共用列表，而重新指定只會改變區域名稱。

## --video-solution--

3

## --text--

在 `items = ['milk']` 和 `alias = items` 之後，哪個敘述會將 `'eggs'` 加入 `alias` 指向的列表？

## --answers--

`items = items + ['eggs']`

### --feedback--

想想哪個操作會在原地擴展現有列表。

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

想想哪個操作會在原地擴展現有列表。

---

`items + ['eggs']`

### --feedback--

想想哪個操作會在原地擴展現有列表。

## --video-solution--

2

## --text--

為什麼在 `rows = [[]] * 3` 後，對 `rows[0]` 附加會讓三個位置都顯示新項目？

## --answers--

每個位置都指向同一個內層列表。

---

Python 會自動將每個變更複製到獨立的內層列表。

### --feedback--

列表重複會重複引用元素，而不會複製元素本身。

---

`append()` 方法總是改變程式中的每個列表。

### --feedback--

列表重複會重複引用元素，而不會複製元素本身。

---

乘法運算子會執行三次 `append()`。

### --feedback--

列表重複會重複引用元素，而不會複製元素本身。

## --video-solution--

1
