---
id: 698dca057932b3cc4b19c926
title: Utafutaji wa mstari katika msimbo
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code
---

# --description--

Katika video hii, utaandika msimbo wa algoriti ya utafutaji wa mstari kwa kutumia Python.

# --questions--

## --text--

Ni ipi kati ya zifuatazo ndiyo njia sahihi ya kuandika kitendakazi cha utafutaji wa mstari?

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
