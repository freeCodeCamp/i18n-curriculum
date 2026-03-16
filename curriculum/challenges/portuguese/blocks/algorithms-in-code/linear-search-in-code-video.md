---
id: 698dca057932b3cc4b19c926
title: Busca Linear no Código
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code
---

# --description--

Neste vídeo, você vai codificar o algoritmo de busca linear usando Python.

# --questions--

## --text--

Qual das seguintes é a maneira correta de escrever uma função de busca linear?

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
