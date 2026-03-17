---
id: 69ae96dfa9e6da4eb0d5f7f5
title: Використання конструкторів
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

У цьому відео ви навчитеся працювати з конструкторами в класах.

# --questions--

## --text--

Який із наведених варіантів є правильним способом написання конструктора?

## --answers--

```py
class Dog:
    def __init__(self, name):
        name = name

    def bark(self):
        print(f"{self.name} says: Woof!")
```

---

```py
class Dog:
    def __init__(name):
        self.name = name

    def bark(self):
        print(f"{self.name} says: Woof!")
```

---

```py
class Dog:
    def __init__(self, name):
        self.name = name

    def bark(self):
        print(f"{self.name} says: Woof!")
```

---

```py
class Dog:
    def __init__ self, name:
        self.name = name

    def bark(self):
        print(f"{self.name} says: Woof!")
```

## --video-solution--

3
