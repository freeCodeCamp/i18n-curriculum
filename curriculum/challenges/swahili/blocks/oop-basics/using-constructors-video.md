---
id: 69ae96dfa9e6da4eb0d5f7f5
title: Kutumia kijenzi
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

Katika video hii, utafundishwa jinsi ya kufanya kazi na kijenzi katika madarasa ya vitu.

# --questions--

## --text--

Ni ipi kati ya zifuatazo njia sahihi ya kuandika kijenzi?

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
