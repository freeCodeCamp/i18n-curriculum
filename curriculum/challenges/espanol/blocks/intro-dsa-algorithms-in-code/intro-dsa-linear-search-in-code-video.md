---
id: 698dca057932b3cc4b19c926
title: Búsqueda lineal en código
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code-introduction-to-algorithms-and-data-structures
---

# --description--

En este video, vas a programar el algoritmo de búsqueda lineal usando Python.

# --questions--

## --text--

¿Cuál de las siguientes es la forma correcta de escribir una función de búsqueda lineal?

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
