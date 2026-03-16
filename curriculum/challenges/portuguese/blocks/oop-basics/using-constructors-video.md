---
id: 69ae96dfa9e6da4eb0d5f7f5
title: Usando Construtores
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

Neste vídeo, você aprenderá como trabalhar com construtores em classes.

# --questions--

## --text--

Qual das seguintes é a maneira correta de escrever um `constructor`?

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


