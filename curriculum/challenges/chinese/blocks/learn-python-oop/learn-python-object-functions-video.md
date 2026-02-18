---
id: 697fe3cb32baa3841ab62a63
title: 对象函数
challengeType: 11
videoId: 3Mla2uUDSu8
dashedName: object-functions-learn-python-full-course-for-beginners
---

# --description--

在本视频中，你将学习如何在类内部使用函数。

# --questions--

## --text--

以下哪种方式是在一个类中创建函数的正确方法？

## --answers--

```python
class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self.function):
        return f"Hello, my name is {self.name} and I am {self.age} years old."
```

---

```python
class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        return f"Hello, my name is {self.name} and I am {self.age} years old."
```

---

```python
class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        self.pass
```

---

```python
class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    greet = (self):
        return f"Hello, my name is {self.name} and I am {self.age} years old."
```

## --video-solution--

2
