---
id: 698dea0c7932b3cc4b19c945
title: Implementando Quicksort
challengeType: 11
videoId: 7k5rxhK3X_Y
dashedName: implementing-quicksort
---

# --description--

En este video, aprenderás cómo implementar el algoritmo quicksort en Python.

# --questions--

## --text--

¿Cuál es el caso base para esta implementación de quicksort en Python?

## --answers--

```python
while len(values) > 1:
    values.pop()
```

---

```python
for i in range(len(values)):
    if values[i] > 0:
        values[i] -= 1
```

---

```python
for i in range(len(values)):
    values[i] += 1
```

---

```python
if len(values) <= 1:
    return values
```

## --video-solution--

4
