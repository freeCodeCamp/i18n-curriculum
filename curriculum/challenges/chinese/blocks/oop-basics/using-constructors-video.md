---
id: 69ae96dfa9e6da4eb0d5f7f5
title: 使用构造函数
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

在这个 `video` 中，你将学习如何在 `class` 中使用 `constructors`。

# --questions--

## --text--

以下哪种是编写 `constructor` 的正确方式？

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


