---
id: 698dca057932b3cc4b19c926
title: コードでの線形探索
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code
---

# --description--

この動画では、Pythonを使って線形探索アルゴリズムをコード化します。

# --questions--

## --text--

次のうち、線形探索の関数を正しく書いているのはどれですか？

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
