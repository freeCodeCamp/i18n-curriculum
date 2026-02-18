---
id: 697fe3cb32baa3841ab62a63
title: 物件函式
challengeType: 11
videoId: 3Mla2uUDSu8
dashedName: object-functions-learn-python-full-course-for-beginners
---

# --description--

在這個影片中，你將學習如何在類別中使用函式。

# --questions--

## --text--

以下哪一種方式是在類別內創建函式（程式）的正確方法？

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
