---
id: 698dea0c7932b3cc4b19c945
title: Реалізація алгоритму швидкого сортування
challengeType: 11
videoId: 7k5rxhK3X_Y
dashedName: implementing-quicksort
---

# --description--

У цьому відео ви навчитеся реалізовувати алгоритм швидкого сортування на Python.

# --questions--

## --text--

Який базовий випадок у цій реалізації швидкого сортування на Python?

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
