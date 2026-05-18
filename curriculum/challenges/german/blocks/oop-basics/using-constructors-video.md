---
id: 69ae96dfa9e6da4eb0d5f7f5
title: Konstruktoren verwenden
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

In diesem Video lernen Sie, wie Sie mit Konstruktoren in Klassen arbeiten.

# --questions--

## --text--

Welche der folgenden Möglichkeiten ist die korrekte Schreibweise für einen Konstruktor?

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


