---
id: 698dca057932b3cc4b19c926
title: 코드에서 선형 탐색
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code
---

# --description--

이 영상에서는 Python을 사용해 선형 탐색 알고리즘을 코딩합니다.

# --questions--

## --text--

다음 중 선형 탐색 함수를 올바르게 작성한 것은 무엇인가요?

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
