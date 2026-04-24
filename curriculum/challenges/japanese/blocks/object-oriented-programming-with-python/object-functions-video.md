---
id: 697fe3cb32baa3841ab62a63
title: オブジェクトの関数
challengeType: 11
videoId: 3Mla2uUDSu8
dashedName: object-functions
---

# --description--

このビデオでは、クラスの中で関数を扱う方法を学びます。

# --questions--

## --text--

次のうち、クラスの中に関数を作成する正しい方法はどれですか？

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
