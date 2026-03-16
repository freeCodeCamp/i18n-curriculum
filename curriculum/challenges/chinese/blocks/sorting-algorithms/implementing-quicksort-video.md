---
id: 698dea0c7932b3cc4b19c945
title: 实现快速排序
challengeType: 11
videoId: 7k5rxhK3X_Y
dashedName: implementing-quicksort
---

# --description--

在这个 `video` 中，你将学习如何用 Python `implement` 快速排序 `algorithm`。

# --questions--

## --text--

这个 Python 快速排序实现的基本情形是什么？

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
