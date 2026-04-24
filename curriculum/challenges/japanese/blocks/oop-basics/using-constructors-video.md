---
id: 69ae96dfa9e6da4eb0d5f7f5
title: コンストラクタの使い方
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

このビデオでは、クラスのコンストラクタの使い方を学びます。

# --questions--

## --text--

次のうち、コンストラクタの正しい書き方はどれですか？

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
