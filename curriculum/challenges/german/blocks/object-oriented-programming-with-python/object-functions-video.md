---
id: 697fe3cb32baa3841ab62a63
title: Funktionen in Objekten
challengeType: 11
videoId: 3Mla2uUDSu8
dashedName: object-functions
---

# --description--

In diesem Video lernen Sie, wie Sie mit Funktionen innerhalb von Klassen arbeiten.

# --questions--

## --text--

Welche der folgenden Möglichkeiten ist der richtige Weg, um eine Funktion innerhalb einer Klasse zu erstellen?

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
