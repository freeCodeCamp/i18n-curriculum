---
id: 67f39babe1e2ec1fb6eea32a
title: 字典和集合复习
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 字典

- **字典**：字典是内置的数据结构，用于存储键值对集合。键必须是不可变的数据类型。Python 字典的一般语法如下：

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

- **集合**：集合是 Python 内置的数据结构，不允许重复值。集合是可变且无序的，这意味着它们的元素没有特定顺序，因此不能使用索引或键访问它们。此外，集合只能包含不可变数据类型的值，如数字、字符串和元组。

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

- **带星号的导入语句（`*`）**：星号告诉 Python 导入模块中的所有内容，但导入后使用时不需要模块名前缀。

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

这就是为什么你经常会在 Python 脚本中看到这个条件语句。它包含了你只想在 Python 脚本作为主程序运行时才执行的代码。

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

复习 Dictionaries 和 Sets 主题和概念。
