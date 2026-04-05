---
id: 69ae96dfa9e6da4eb0d5f7f5
title: 생성자 사용하기
challengeType: 11
videoId: CDFRHw4SACU
dashedName: using-constructors
---

# --description--

이 영상에서는 클래스에서 생성자를 다루는 방법을 배우세요.

# --questions--

## --text--

다음 중 생성자를 올바르게 작성한 방법은 무엇인가요?

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
