---
id: 698dca057932b3cc4b19c926
title: Lineare Suche im Code
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code
---

# --description--

In diesem Video programmieren Sie den Algorithmus der linearen Suche in Python.

# --questions--

## --text--

Welche der folgenden Möglichkeiten ist die korrekte Art, eine lineare Suchfunktion zu schreiben?

## --answers--

```python
def linear_search(list, target):
    for i in range(len(list) - 1):  
        if list[i] == target:
            return i
    return -1
```

---

```python
def linear_search(list, target):
    for i in range(len(list)):
        if i == target:   
            return i
    return -1

```

---

```python
def linear_search(list, target):
    for i in range(len(list)):
        if list[i] == target:
            return i
        else:
            return -1  
```

---

```python
def linear_search(list, target):
    for i in range(len(list)):
        if list[i] == target:
            return i  
    return None
```

## --video-solution--

4
