---
id: 67f39babe1e2ec1fb6eea32a
title: 字典和集合复习
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 字典

- **字典**：字典是内置的数据结构，用于保存键值对集合。键必须唯一。数字、字串和数字与字串组成的元组可以用作键，但包含列表的元组不能。值可以重复，且可以是任何数据类型。字典还会保持添加项的顺序。这是 Python 字典的一般语法：

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` 构造函数**：`dict()` 构造函数是构建字典的另一种方式。你可以将元组列表作为参数传递给 `dict()` 构造函数。这些元组的第一个元素是键，第二个元素是值。

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **方括弧表示法**：要访问键值对的值，可以使用称为方括弧表示法的语法。

```python
dictionary[key]
```

- **方括弧赋值**：你可以用方括弧语法添加新的键值对，或者更新已有键的值。如果键不存在，则添加该键；如果键已存在，则替换其值。

```python
dictionary[key] = value
```

- **在循环中更新值**：你可以在遍历 `items()` 的循环中，通过赋值给每个键来更新已有键的值。

```python
products = {'apple': 10, 'pear': 20}

for product, price in products.items():
    products[product] = round(price * 0.8)

print(products)  # {'apple': 8, 'pear': 16}
```

## 常用字典方法

- **`get()` 方法**：`get()` 方法用于获取与键关联的值。它类似于方括弧表示法，但允许你设置默认值，避免键不存在时出现错误。

```python
dictionary.get(key, default)
```

- **`keys()` 和 `values()` 方法**：`keys()` 和 `values()` 方法分别返回包含字典所有键和值的视图对象。视图对象是一种查看字典内容而不创建数据副本的方式。

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

- **`items()` 方法**：`items()` 方法返回包含字典所有键值对的视图对象，包括键和值。

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()` 方法**：`clear()` 方法删除字典中的所有键值对。

```python
pizza.clear()
```

- **`pop()` 方法**：`pop()` 方法删除指定键的键值对并返回其值。如果键不存在，则返回作为第二个参数指定的默认值。如果键不存在且未指定默认值，则会引发 `KeyError`。

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()` 方法**：在 Python 3.7 及以上版本中，`popitem()` 方法删除最后插入的项。

```python
pizza.popitem()
```

- **`update()` 方法**：`update()` 方法使用另一个字典的键值对更新当前字典。如果有相同的键，其值会被覆盖。新键会作为新的键值对添加到字典中。

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## 遍历字典

- **遍历值**：如果你需要遍历字典中的值，可以写一个 `for` 循环，使用 `values()` 获取字典的所有值。

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

输出：

```md
990
600
250
70
```

- **遍历键**：如果你需要遍历上面 `products` 字典中的键，可以直接写 `products.keys()` 或 `products`。

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

输出：

```md
Laptop
Smartphone
Tablet
Headphones
```

- **遍历键值对**：如果你需要同时遍历键及其对应的值，可以遍历 `products.items()`。你会得到包含键及其对应值的元组。

```python
for product in products.items():
    print(product)
```

输出：

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

要将键和值存储在不同的循环变量中，需要用逗号分隔。第一个变量存储键，第二个变量存储值。

```python
for product, price in products.items():
    print(product, price)
```

输出：

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **`enumerate()` 函数**：如果你需要在遍历字典时跟踪计数器，可以调用 `enumerate()` 函数。该函数返回一个 `enumerate` 对象，为每个项分配一个整数计数器。计数器可以从任意数字开始，默认从 0 开始。

将索引和值分别赋给不同的循环变量是使用 `enumerate()` 的常见方式。例如，使用 `products.items()`，你可以获得索引以及整个键值对：

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

输出：

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

要自定义计数的初始值，可以向 `enumerate()` 传入第二个参数。例如，这里我们从 1 开始计数。

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

输出：

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## 集合

- **集合**：集合是 Python 内置的数据结构，不允许重复值。集合是可变且无序的，这意味着它们的元素没有特定顺序，因此不能用索引或键来访问。数字、字串和数字与字串组成的元组可以作为集合元素，但包含列表的元组不能。

- **定义集合**：要定义集合，需要将元素写在花括弧内，并用逗号分隔。

```python
my_set = {1, 2, 3, 4, 5}
```

- **定义空集合**：如果需要定义空集合，必须使用 `set()` 函数。仅写空花括弧会自动创建一个字典。

```python
set() # Set
{}    # Dictionary
```

## 常用集合方法

- **`add()` 方法**：你可以使用 `add()` 方法向集合添加元素，传入新元素作为参数。

```python
my_set.add(6)
```

- **`remove()` 和 `discard()` 方法**：要从集合中移除元素，可以使用 `remove()` 方法或 `discard()` 方法，传入要移除的元素作为参数。`remove()` 方法在元素不存在时会引发 `KeyError`，而 `discard()` 方法不会。

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()` 方法**：`clear()` 方法移除集合中的所有元素。

```python
my_set.clear()
```

## 数学集合操作

- **`issubset()` 和 `issuperset()` 方法**：`issubset()` 和 `issuperset()` 方法分别检查一个集合是否是另一个集合的子集或超集。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **`isdisjoint()` 方法**：`isdisjoint()` 方法检查两个集合是否不相交，即没有共同元素。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **并集操作符（`|`）**：并集操作符 `|` 返回一个包含两个集合所有元素的新集合。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **交集操作符（`&`）**：交集操作符 `&` 返回一个只包含两个集合共有元素的新集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **差集操作符（`-`）**：差集操作符 `-` 返回一个包含第一个集合中不在另一个集合中的元素的新集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **对称差集操作符（`^`）**：对称差集操作符 `^` 返回一个包含只在第一个或第二个集合中出现但不同时出现的元素的新集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **复合集合操作符**：操作符 `|=`、`&=`、`-=` 和 `^=` 分别执行并集、交集、差集和对称差集操作，但它们会更新现有集合，而不是创建新集合。

```python
my_set = {1, 2, 3}

my_set |= {3, 4}          # {1, 2, 3, 4}
my_set &= {2, 3, 4, 5}    # {2, 3, 4}
my_set -= {4}             # {2, 3}
my_set ^= {3, 5}          # {2, 5}
```

- **`in` 操作符**：你可以使用 `in` 操作符检查元素是否在集合中。

```python
print(5 in my_set) # True
```

## Python 标准函数库

- **Python 标准函数库**：库为你提供预先编写且可重用的代码，如函数、类和数据结构，你可以在项目中复用。Python 拥有丰富的标准函数库，内置模块实现了许多问题和任务的标准化解决方案。一些流行的内置模块示例包括 `math`、`random`、`re`（正则表达式的缩写）和 `datetime`。

## 导入语句

- **导入语句**：要访问内置模块中定义的元素，使用导入语句。导入语句通常写在文件顶部。导入语句对函数、类、常量、变量以及模块中定义的其他元素的作用相同。

- **基本导入语句**：你可以使用 `import` 关键字后跟模块名：

```python
import module_name
```

然后，如果你需要调用该模块中的函数，使用点表示法，模块名后跟函数名。

```python
module_name.function_name()
```

例如，下面的代码导入 `math` 模块并计算 36 的平方根：

```python
import math

math.sqrt(36)
```

- **使用别名导入模块**：如果需要用不同名称（别名）导入模块，可以在导入语句末尾使用 `as` 关键字加上别名。这通常用于模块名较长或避免命名冲突。

```python
import module_name as module_alias
```

例如，要在代码中将 `math` 模块称为 `m`，可以这样赋予别名：

```python
import math as m
```

然后，可以使用别名访问模块的元素：

```python
m.sqrt(36)
```

- **导入特定元素**：如果不需要模块中的所有内容，可以使用 `from` 导入特定元素。此时导入语句以 `from` 开头，后跟模块名，再用 `import` 关键字，最后是要导入的元素名。

```python
from module_name import name1, name2
```

然后，在 Python 脚本中可以直接使用这些名称，无需模块前缀。例如：

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
这很方便，但如果你已有同名函数或变量，可能会导致命名冲突。选择导入方式时请注意。

如果需要为这些名称指定别名，也可以使用 `as` 关键字加上别名。

```python
from module_name import name1 as alias1, name2 as alias2
```

- **带星号（`*`）的导入语句**：星号告诉 Python 你想导入模块的公共名称，这样就不需要使用模块名作为前缀。如果模块定义了 `__all__`，则该列表控制导入哪些名称。否则，以下划线开头的名称会被排除。

```python
from module_name import *
```

例如，使用此方式导入 `math` 模块后，可以直接调用该模块定义的任何函数，无需指定模块名。

```python
from math import *
print(sqrt(36))  # 6.0
```

不过，这通常不推荐，因为可能导致命名空间冲突，且难以判断名称来源。

## `if __name__ == '__main__'`

- **`__name__` 变量**：`__name__` 是 Python 中的一个特殊内置变量。当 Python 文件被直接执行时，Python 会将该变量的值设置为字符串 `"__main__"`。但如果该文件作为模块被导入到另一个 Python 脚本中，`__name__` 变量的值则被设置为该模块的名称。

这就是为什么你经常会在 Python 脚本中看到这个条件式。它包含的代码只会在 Python 脚本作为主程序运行时执行。

```python
if __name__ == '__main__': 
    # Code
```

## 验证数据

- **从可迭代对象创建集合**：`set()` 构造函数接受一个可迭代对象，比如列表、字串或字典（字典会取其键），前提是其元素可以存储在集合中。例如，数字列表是有效的，但包含其他列表的列表则无效。这对于比较你期望的键和实际拥有的键很有用。

```python
expected_keys = {'name', 'age'}
data = {'name': 'Jessica', 'age': 30}

print(set(data) == expected_keys)  # True
```

- **使用 `**` 解包字典**：`**` 操作符将字典解包为关键字参数，其中每个键用作参数名。

```python
def greet(name, age):
    print(f'{name} is {age}')

data = {'name': 'Jessica', 'age': 30}
greet(**data)  # Jessica is 30
```

- **正则表达式和 `re.search()`**：正则表达式描述文本模式。`re.search()` 函数在字串中查找该模式的任意位置。如果找到，返回匹配对象；否则返回 `None`。

```python
import re

print(re.search('cat', 'concatenate'))  # <re.Match object; span=(3, 6), match='cat'>
print(re.search('dog', 'concatenate'))  # None
```

- **使用 `re.IGNORECASE` 进行不区分大小写匹配**：将 `re.IGNORECASE` 作为第三个参数传入，以忽略大小写差异。

```python
print(re.search('cat', 'CAT', re.IGNORECASE))  # <re.Match object; span=(0, 3), match='CAT'>
```

- **原始字串和 `\d`**：原始字串以 `r` 开头，将反斜线视为字面字符，使正则表达式更易读。在模式中，`\d` 匹配任意单个数字。

```python
print(re.search(r'\d', 'room 5'))  # <re.Match object; span=(5, 6), match='5'>
```

- **`+` 量词**：`+` 量词匹配前面模式的一次或多次重复。

```python
print(re.search(r'\d+', 'room 305'))  # <re.Match object; span=(5, 8), match='305'>
```

- **`re.fullmatch()` 函数**：`re.fullmatch()` 仅在整个字串完全匹配模式时返回匹配对象，否则返回 `None`。

```python
print(re.fullmatch(r'\d+', '305'))      # <re.Match object; span=(0, 3), match='305'>
print(re.fullmatch(r'\d+', 'room 305')) # None
```

- **使用 `is` 和 `is not` 判断对象同一性**：`is` 操作符检查两个名称是否引用同一个对象，`is not` 检查它们是否不同。这些操作符是判断值是否为 `None` 的标准方式。

```python
result = None

print(result is None)      # True
print(result is not None)  # False
```

- **`all()` 函数**：`all()` 函数在可迭代对象的所有元素都为真值时返回 `True`。对于空的可迭代对象，也返回 `True`。

```python
print(all([1, 'a', True]))  # True
print(all([1, 0, True]))    # False
```

# --assignment--

复习 Dictionaries 和 Sets 主题和概念。
