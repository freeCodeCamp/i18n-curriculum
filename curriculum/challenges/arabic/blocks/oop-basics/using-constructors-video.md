---
id: 69ae96dfa9e6da4eb0d5f7f5
title: استخدام دوال البناء
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

في هذا الفيديو، ستتعلم كيفية العمل مع دوال البناء في الأصناف.

# --questions--

## --text--

أي من الطرق التالية هي الطريقة الصحيحة لكتابة دالة البناء؟

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


