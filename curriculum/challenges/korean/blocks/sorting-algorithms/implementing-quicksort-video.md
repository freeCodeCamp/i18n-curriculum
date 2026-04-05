---
id: 698dea0c7932b3cc4b19c945
title: 퀵소트 구현하기
challengeType: 11
videoId: 7k5rxhK3X_Y
dashedName: implementing-quicksort
---

# --description--

이 영상에서는 Python으로 퀵소트 알고리즘을 구현하는 방법을 배우세요.

# --questions--

## --text--

이 Python 퀵소트 구현에서 기본 사례(base case)는 무엇인가요?

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
