---
id: 697fe3cb32baa3841ab62a63
title: 객체 함수
challengeType: 11
videoId: 3Mla2uUDSu8
dashedName: object-functions
---

# --description--

이 영상에서는 클래스 내부에서 함수를 다루는 방법을 배우세요.

# --questions--

## --text--

다음 중 클래스 내부에 함수를 만드는 올바른 방법은 무엇인가요?

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
