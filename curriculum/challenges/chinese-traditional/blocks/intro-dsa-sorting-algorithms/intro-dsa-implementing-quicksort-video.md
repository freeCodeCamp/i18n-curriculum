---
id: 698dea0c7932b3cc4b19c945
title: 實作 Quicksort
challengeType: 11
videoId: 7k5rxhK3X_Y
dashedName: implementing-quicksort-introduction-to-algorithms-and-data-structures
---

# --description--

在這個影片中，你將學習如何在 Python 中實作快速排序演算法。

# --questions--

## --text--

這個 Python `quicksort` 實作的基本情況是什麼？

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
