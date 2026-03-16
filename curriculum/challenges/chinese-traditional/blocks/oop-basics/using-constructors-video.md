---
id: 69ae96dfa9e6da4eb0d5f7f5
title: 使用建構式
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

在這個影片中，你將學習如何在類別中使用建構式。

# --questions--

## --text--

以下哪一種是撰寫 `constructor` 的正確方式？

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


