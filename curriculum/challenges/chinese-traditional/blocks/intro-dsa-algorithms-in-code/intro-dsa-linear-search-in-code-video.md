---
id: 698dca057932b3cc4b19c926
title: 程式碼中的線性搜尋
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code-introduction-to-algorithms-and-data-structures
---

# --description--

在這個影片中，你將使用 Python 撰寫線性搜尋演算法的程式碼。

# --questions--

## --text--

以下哪一種是撰寫線性 `search` `function` 的正確方式？

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
