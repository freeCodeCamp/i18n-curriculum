---
id: 698dca057932b3cc4b19c926
title: البحث الخطي في الشفرة
challengeType: 11
videoId: bKkgjdPkL3A
dashedName: linear-search-in-code
---

# --description--

في هذا الفيديو، ستكتب شفرة خوارزمية البحث الخطي باستخدام Python.

# --questions--

## --text--

أي من الطرق التالية هي الطريقة الصحيحة لكتابة دالة البحث الخطي؟

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
