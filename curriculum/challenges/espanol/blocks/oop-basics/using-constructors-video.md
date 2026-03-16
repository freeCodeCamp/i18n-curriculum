---
id: 69ae96dfa9e6da4eb0d5f7f5
title: Usando estructuras
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

En este video, aprenderás cómo trabajar con estructuras en clases.

# --questions--

## --text--

¿Cuál de las siguientes es la forma correcta de escribir una estructura?

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


