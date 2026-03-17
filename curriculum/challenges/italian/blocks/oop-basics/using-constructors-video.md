---
id: 69ae96dfa9e6da4eb0d5f7f5
title: Usare i costruttori
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

In questo video imparerai come lavorare con i costruttori nelle classi.

# --questions--

## --text--

Qual è il modo corretto per scrivere un costruttore?

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
