---
id: 67f39babe1e2ec1fb6eea32a
title: 字典和集合复习
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## 字典

- **字典**：字典是内置的数据结构，用于保存键值对集合。键需要是不可变的数据类型。这是 Python 字典的通用语法：

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` 构造函数**：`dict()` 构造函数是构建字典的备选方法。你将一个元组列表作为参数传递给 `dict()` 构造函数。这些元组包含第一个元素作为密钥，第二个元素作为值。

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **方括弧表示法**：要访问一个点对的值，你可以使用称为方括弧表示法的语法。

```python
dictionary[key]
```

## 常用字典方法

- **`get()` 方法**：`get()` 方法检索与密钥关联的值。它类似于方括弧表示法，但允许你设置默认值，从而防止密钥不存在时出现误差。

```python
dictionary.get(key, default)
```

- **`keys()` 和 `values()` 方法**：`keys()` 和 `values()` 方法分别返回包含字典中所有密钥和值的视图对象。视图对象是一种查看字典内容而不创建数据单独拷贝的方式。

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

- **`items()` 方法**：`items()` 方法返回一个包含字典中所有键值点对的视图对象，包括键和值。

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()` 方法**：`clear()` 方法从字典中移除所有的密钥-值点对。

```python
pizza.clear()
```

- **`pop()` 方法**：`pop()` 方法移除第一个参数指定的密钥对应的点对并返回其值。如果密钥不存在，则返回第二个参数指定的默认值。如果密钥不存在且未指定默认值，则引起 `KeyError`。

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()` 方法**：在 Python 3.7 及以上版本中，`popitem()` 方法会移除最后插入的项。

```python
pizza.popitem()
```

- **`update()` 方法**：`update()` 方法使用另一个字典的键值对更新键值对。如果它们有相同的键，则其值将被覆盖。新键将作为新的键值对添加到字典中。

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## 遍历字典的循环

- **迭代值**：如果你需要迭代字典中的值，可以编写一个带有 `values()` 的 `for` 循环来获取字典的所有值。

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

输出:

```md
990
600
250
70
```

- **迭代密钥**：如果你需要迭代上面 `products` 字典中的密钥，你可以写 `products.keys()` 或直接写 `products`。

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

输出:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **迭代密钥-值点对**：如果你需要同时迭代密钥及其对应的值，你可以迭代 `products.items()`。你将获得包含密钥及其对应值的单个元组。

```python
for product in products.items():
    print(product)
```

输出:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

要将密钥和值分别保存到不同的循环变量中，你需要用逗号将它们分开。第一个变量保存密钥，第二个保存值。

```python
for product, price in products.items():
    print(product, price)
```

输出:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **`enumerate()` 函数**：如果你需要在迭代字典的同时跟踪计数器，可以调用 `enumerate()` 函数。该函数返回一个 `enumerate` 对象，它为每个项赋值一个整数，就像计数器一样。你可以从任意数字开始计数，但默认从 0 开始。

将索引和项赋值给单独的循环变量是使用 `enumerate()` 的常见方式。例如，使用 `products.items()`，你可以除了索引外，还获取整个键值点对：

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

输出:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

要自定义计数的初始值，你可以向 `enumerate()` 传递第二个参数。例如，这里我们从 1 开始计数。

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

输出:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## 集合

- **集合**：集合是 Python 中的内置数据结构，不允许有副本值。集合是可变的且无序的，这意味着它们的元素不会以任何特定顺序保存，因此你不能使用索引或密钥来访问它们。此外，集合只能包含不可变数据类型的值，比如数字、字串和元组。

- **定义一个集合**：要定义一个集合，你需要将它的元素写在括弧状的括号内，并用逗号分隔。

```python
my_set = {1, 2, 3, 4, 5}
```

- **定义空集**：如果你需要定义一个空集，必须使用 `set()` 函数。仅写空的括弧状的花括弧会自动创建一个字典。

```python
set() # Set
{}    # Dictionary
```

## 常用集合方法

- **`add()` 方法**：你可以使用 `add()` 方法为集合添加一个元素，将新元素作为参数传入。

```python
my_set.add(6)
```

- **`remove()` 和 `discard()` 方法**：要从集合中移除一个元素，你可以使用 `remove()` 方法或 `discard()` 方法，将你想移除的元素作为参数传入。若未找到该元素，`remove()` 方法会引起 `KeyError`，而 `discard()` 方法则不会。

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()` 方法**：`clear()` 方法从集合中移除所有元素。

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

- **`isdisjoint()` 方法**：`isdisjoint()` 方法检查两个集合是否不相交，即它们没有共同的元素。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **并集操作符 (`|`)**：并集操作符 `|` 返回一个包含两个集合中所有元素的新建集合。

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **交集操作符 (`&`)**：交集操作符 `&` 返回一个只包含集合共有元素的新建集合。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **差集操作符 (`-`)**：差集操作符 `-` 返回一个新建集合，其中包含第一个集合中不在其他集合内的元素。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **对称差操作符 (`^`)**：对称差操作符 `^` 返回一个新建集合，该集合包含仅存在于第一个集合或第二个集合中的元素，但不包含两者共有的元素。

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **`in` 操作符**：你可以使用 `in` 操作符查看一个元素是否在集合中。

```python
print(5 in my_set) # True
```

## Python 标准函数库

- **Python 标准函数库**：库为你提供预先编写且可重用的代码，如函数、类和数据结构，你可以在你的项目中重复使用。Python 拥有一个庞大的标准函数库，内置模块实现了许多问题和任务的标准化方案。一些流行的内置模块示例包括 `math`、`random`、`re`（“正则表达式”的缩写）和 `datetime`。

## 导入语句

- **导入语句**：要访问内置模块中定义的元素，你使用导入语句。导入语句通常写在文件顶部。导入语句对模块中定义的函数、类、常量、变量以及任何其他元素的作用相同。

- **基本导入语句**：你可以使用 `import` 关键字，后跟模块名称：

```python
import module_name
```

然后，如果你需要调用该模块中的方法，你应使用点符号，模块名称后跟方法名称。

```python
module_name.method_name()
```

例如，你可以在你的代码中写如下内容来导入 `math` 模块并获取 36 的平方根：

```python
import math

math.sqrt(36)
```

- **使用不同名称导入模块**：如果你需要使用不同名称（也称为“别名”）导入模块，可以在导入语句末尾使用 `as` 后跟别名。这通常用于模块名称较长或避免命名冲突。

```python
import module_name as module_alias
```

例如，要在你的代码中将 `math` 模块别名为 `m`，你可以这样赋值别名：

```python
import math as m
```

然后，你可以使用别名访问模块的元素：

```python
m.sqrt(36)
```

- **导入特定元素**：如果你不需要模块中的所有内容，可以使用 `from` 导入特定元素。在这种情况下，导入语句以 `from` 开头，后跟模块名称，然后是 `import` 关键字，最后是你想导入的元素名称。

```python
from module_name import name1, name2
```

然后，你可以在你的 Python 脚本中使用这些名称而无需模块前缀。 例如：

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
这很有帮助，但如果你已经有同名的函数或变量，可能会导致命名冲突。选择你想使用的导入语句类型时请记住这一点。

如果你需要为这些名称赋值别名，也可以使用 `as` 关键字，后跟别名。

```python
from module_name import name1 as alias1, name2 as alias2
```

- **带星号（`*`）的导入语句**：星号告诉 Python 你想导入该模块中的所有内容，但你想导入它以便不需要使用模块名作为前缀。

```python
from module_name import *
```

例如，如果你使用这个来导入 `math` 模块，你将能够调用该模块中定义的任何函数，而无需指定模块名称作为前缀。

```python
from math import *
print(sqrt(36))  # 6.0
```

但是，这通常不被推荐，因为它可能导致命名空间冲突，并且使得难以知道名称的来源。

## `if __name__ == '__main__'`

- **`__name__` 变量**：`__name__` 是 Python 中一个特殊的内置变量。当一个 Python 文件被直接执行时，Python 会将该变量的值设置为字串 `"__main__"`。但如果该 Python 文件作为模块被导入到另一个 Python 脚本中，`__name__` 变量的值则被设置为该模块的名称。

这就是为什么你经常会在 Python 脚本中找到这个条件式。它包含你只想在 Python 脚本作为主程序运行时**才**运行的代码。

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

复习 Dictionaries 和 Sets 主题和概念。
