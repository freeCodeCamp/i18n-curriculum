---
id: 698dca057932b3cc4b19c926
title: Лінійний пошук у коді
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code
---

# --description--

У цьому відео ви напишете код алгоритму лінійного пошуку на Python.

# --questions--

## --text--

Який із наведених варіантів є правильним способом написання функції лінійного пошуку?

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
