---
id: 698dea0c7932b3cc4b19c945
title: تنفيذ خوارزمية Quicksort
challengeType: 11
videoId: 7k5rxhK3X_Y
dashedName: implementing-quicksort
---

# --description--

في هذا الفيديو، ستتعلم كيفية تنفيذ خوارزمية quicksort في Python.

# --questions--

## --text--

ما هي الحالة الأساسية لتنفيذ خوارزمية quicksort هذه في Python؟

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
