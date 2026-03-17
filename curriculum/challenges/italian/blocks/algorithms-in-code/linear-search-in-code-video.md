---
id: 698dca057932b3cc4b19c926
title: Ricerca lineare nel codice
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code
---

# --description--

In questo video, scriverai il codice dell'algoritmo di ricerca lineare usando Python.

# --questions--

## --text--

Qual è il modo corretto per scrivere una funzione di ricerca lineare?

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
