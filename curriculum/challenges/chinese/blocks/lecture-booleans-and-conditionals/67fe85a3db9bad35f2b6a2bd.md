---
id: 67fe85a3db9bad35f2b6a2bd
title: 条件式语句和逻辑操作符如何工作？
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

条件式语句，或称条件式，让你根据某些条件是真还是假来控制你的程序流程。

但在进入所有这些之前，让我们先了解条件式的基本创建块，从比较操作符开始。比较操作符是让你比较两个或多个值，并返回布尔值的操作符。

在之前的课程中，你学习了布尔是 Python 中的一种数据类型，并且只能是 `True` 或 `False`。

这是一个包含 Python 中比较操作符的表格：

| Operator | Name | Description |
| --- | --- | --- |
| `==` | Equal | Checks if two values are equal |
| `!=` | Not equal | Checks if two values are not equal |
| `>` | Greater than | Checks if the value on the left is greater than the value on the right |
| `<` | Less than | Checks if the value on the left is less than the value on the right |
| `>=` | Greater than or equal | Checks if the value on the left is greater than or equal to the value on the right |
| `<=` | Less than or equal | Checks if the value on the left is less than or equal to the value on the right |

以下是一些求值为 `True` 或 `False` 的表达式：

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

这些操作符可以在条件式中使用，以比较值并根据条件式是否计算为 `True` 或 `False` 来运行特定代码。

在 Python 中，最基本的条件式是 `if` 语句。以下是基本语法：

```python
if condition:
    pass # Code to execute if condition is True
```

* `if` 语句以 `if` 关键字开始。
    
* `condition` 是一个求值为 `True` 或 `False` 的表达式，后跟冒号（`:`）。

* `if` 语句的体构成一个 <dfn>代码块</dfn>，它是一组属于同一整体的语句。在 Python 中，缩排的级别决定了代码块。
    
在上面的示例中，`if` 语句的体包含一个 `pass` 语句。当执行 `pass` 语句时，不会发生任何事情。这是一个特殊的关键字，可用作未来代码的占位符，当不允许空代码块时非常有用。

`if` 语句体内的代码仅在条件计算结果为 `True` 时运行。例如：

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

注意 `print('You are an adult')` 之前的缩排。虽然其他编程语言使用花括弧等字符来定义代码块，并且仅将缩排用于可读性，但在 Python 中，代码块是由缩排决定的。

以下代码会引起一个 `IndentationError`，这是 Python 用来表示在代码某处需要缩排的方式：

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

虽然你可以使用任意数量的空格（只要你保持一致）来确定每个缩排级别，但 Python 风格指南建议使用四个空格。

块也出现在循环和函数中，你将在后续课程中学习它们。

回到我们的例子，如果 `age` 小于 `18`，终端中不会打印任何内容：

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

但是如果你还想在 `age` 小于 `18` 时打印一些内容呢？这就是 `else` 子句的作用。`else` 子句在 `if` 条件为假时运行。下面是 `if…else` 语句的语法：

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

例如：

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

可能会有你想要考虑多个条件的情况。为此，Python 允许你使用 `elif`（else if）关键字扩展你的 if 语句。

语法如下：

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

例如：

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

请注意，你可以使用任意数量的 `elif` 语句：

```python
age = 2

if age >= 65:
    print('You are a senior citizen')
elif age >= 30:
    print('You are an adult in your prime')
elif age >= 18:
    print('You are a young adult')
elif age >= 13:
    print('You are a teenager')
elif age >= 3:
    print('You are a young child')
else:
    print('You are a toddler or an infant') # You are a toddler or an infant
```

既然你已经了解了比较操作符和条件式在 Python 中的工作原理，你就可以开始编写基于逻辑和输入做出决策的程序。无论你是在比较值还是通过多个条件分支，这些工具都是编写灵活、响应式代码的基础。

# --questions--

## --text--

比较操作符的作用是什么？

## --answers--

对布尔值执行数学计算

### --feedback--

这些操作符用于查看诸如相等性或哪个值更大之类的内容，结果要么是 `True`，要么是 `False`。

---

将字串转换为布尔值。

### --feedback--

这些操作符用于查看诸如相等性或哪个值更大之类的内容，结果要么是 `True`，要么是 `False`。

---

比较两个值并返回一个布尔值。

---

创建循环和迭代。

### --feedback--

这些操作符用于查看诸如相等性或哪个值更大之类的内容，结果要么是 `True`，要么是 `False`。

## --video-solution--

3

## --text--

下面代码的结果是什么？

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') 
```

## --answers--

`You are an adult` 将打印到控制台。

### --feedback--

查看课程最后部分以获取正确答案。

---

`You are a teenager` 将打印到控制台。

### --feedback--

查看课程最后部分以获取正确答案。

---

`You are a child` 将打印到控制台。

---

误差将打印到控制台。

### --feedback--

查看课程最后部分以获取正确答案。

## --video-solution--

3

## --text--

表达式 `3 >= 4` 会计算为什么值？

## --answers--

`True`

### --feedback--

3 不大于或相等于 4。

---

`SyntaxError`

### --feedback--

3 不大于或相等于 4。

---

`None`

### --feedback--

3 不大于或相等于 4。

---

`False`

## --video-solution--

4
