---
id: 6aeaec9c8f05dde6a77e511f
title: Python 中共享列表的行为如何？
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

你已经学会了名字引用对象，并且列表是可变的。让我们看看当多个名字引用同一个列表时会发生什么。

## 比较相等的列表和别名

两个列表可以包含相等的值，但不一定是同一个对象。回想一下，`==` 检查相等性，而 `is` 检查同一性：

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

每个 `['milk']` 表达式都会创建一个独立的列表。然而，`alias = items` 并不会创建拷贝。它将另一个名字绑定到现有列表。我们称这个名字为别名。

通过任一名字修改列表，另一名字也能看到变化：

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

独立的 `equal_items` 列表保持不变。

## 通过函数参数修改列表

参数是通过赋值传递的。参数是一个局部名字，最初绑定到调用者提供的对象。Python 不会自动拷贝该对象。

这里，参数 `items` 和调用者的变量 `groceries` 引用的是同一个列表：

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

调用 `append()` 会修改共享列表。函数没有 `return` 语句，因此返回 `None`，但对列表的修改仍然对调用者可见。

重新赋值局部参数会产生不同的效果：

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

赋值使局部名字 `items` 指向一个新列表。它不会改变原始列表，也不会重新赋值调用者的变量 `groceries`。

## 返回一个新列表

函数可以创建并返回一个新列表，而不是修改传入的列表。`+` 操作符串接列表，创建一个包含它们元素的新外层列表：

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

调用者将返回的列表赋值给 `groceries`。名字 `alias` 仍然引用原始列表。如果调用函数但不赋值或使用其返回值，`groceries` 也会继续引用原始列表。

串接创建了一个新的外层列表，但不会拷贝任何嵌套对象。如果元素本身是列表，新的外层列表包含对同一个内层列表的引用。

## 比较列表的 `+` 和 `+=`

对于内置列表，`items = items + [...]` 创建一个新列表并重新赋值给 `items`。相比之下，`items += [...]` 是在原地扩展现有列表：

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

在第一个函数中，只有局部名字引用新列表。在第二个函数中，共享列表被修改，局部名字仍然引用它。这就是为什么当列表有其他引用时，`+=` 不能与先加后赋值互换。

## 使用列表作为默认参数

默认参数在调用者省略该参数时提供一个值。如果你使用空列表作为默认值，Python 会在函数定义时创建该列表一次。省略参数的调用会重用同一个列表：

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

第二次调用接收到的是第一次调用修改过的列表。虽然每次调用都有自己的局部参数名，但该名字引用的是同一个默认对象。列表不会在调用间重新变为空。

如果每次调用在未提供列表时都应从新列表开始，使用 `None` 作为默认值，并在函数内部创建列表：

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

这里，`items = []` 在每次省略参数或显式传入 `None` 时执行，为该调用创建一个新列表。

你仍然可以传入一个现有列表以供修改：

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

检查 `items is None` 用于区分缺失的列表和调用者传入的空列表。使用 `if not items` 也会匹配空列表并替换为新列表，因此调用者的空列表不会接收到添加的项。

## 重复引用嵌套列表

你已经看到列表重复如何创建像 `[0] * 3` 这样的列表。重复创建一个新的外层列表，但重复的是对元素的引用，而不是拷贝元素本身。

当元素是可变的时，这一点很重要：

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

表达式 `[[]]` 创建了一个内层列表。重复它会在三个位置放置对同一个内层列表的引用。通过 `rows[0]` 修改它，在所有位置都可见。

对于 `numbers = [0] * 3`，赋值 `numbers[0] = 1` 替换了一个元素引用；它没有修改不可变的整数 `0`。这就是为什么其他位置仍然是 `0`。

如果你需要独立的内层列表，请分别创建每一个：

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

在本模块后面，你将学习如何使用列表推导式创建指定数量的独立内层列表。

# --questions--

## --text--

以下代码将打印出什么？

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

追加操作会修改共享列表，而重新赋值只会改变局部名字。

---

`['c']`

### --feedback--

追加操作会修改共享列表，而重新赋值只会改变局部名字。

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

追加操作会修改共享列表，而重新赋值只会改变局部名字。

## --video-solution--

3

## --text--

在执行 `items = ['milk']` 和 `alias = items` 后，哪个语句会将 `'eggs'` 添加到 `alias` 引用的列表中？

## --answers--

`items = items + ['eggs']`

### --feedback--

想想哪个操作是在原地扩展现有列表。

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

想想哪个操作是在原地扩展现有列表。

---

`items + ['eggs']`

### --feedback--

想想哪个操作是在原地扩展现有列表。

## --video-solution--

2

## --text--

为什么在执行 `rows = [[]] * 3` 后，向 `rows[0]` 追加元素会使三个位置都显示新项？

## --answers--

每个位置都引用同一个内层列表。

---

Python 会自动将每次修改拷贝到独立的内层列表中。

### --feedback--

列表重复是重复对元素的引用，而不是拷贝元素本身。

---

`append()` 方法总是修改程序中的每个列表。

### --feedback--

列表重复是重复对元素的引用，而不是拷贝元素本身。

---

乘法操作符会执行三次 `append()`。

### --feedback--

列表重复是重复对元素的引用，而不是拷贝元素本身。

## --video-solution--

1
