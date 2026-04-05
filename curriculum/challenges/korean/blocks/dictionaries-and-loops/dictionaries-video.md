---
id: 3625fbc38b9428ae98d98f23
title: 딕셔너리
challengeType: 11
videoId: FBfYADu3CIo
dashedName: dictionaries
---

# --description--

이 영상에서는 Python에서 딕셔너리를 사용해 키-값 쌍을 저장하는 방법을 배우세요.

# --questions--

## --text--

다음 중 문자열 `"March"`을 콘솔에 올바르게 출력하는 코드는 무엇인가요?

## --answers--

```python
month_conversions = {
    "Jan": "January",
    "Feb": "February",
    "Mar": "March",
    "Apr": "April",
    "May": "May",
    "Jun": "June",
    "Jul": "July",
    "Aug": "August",
    "Sep": "September",
    "Oct": "October",
    "Nov": "November",
    "Dec": "December"
}

print(month_conversions<"Mar">)
```

---

```python
month_conversions = {
    "Jan": "January",
    "Feb": "February",
    "Mar": "March",
    "Apr": "April",
    "May": "May",
    "Jun": "June",
    "Jul": "July",
    "Aug": "August",
    "Sep": "September",
    "Oct": "October",
    "Nov": "November",
    "Dec": "December"
}

print(month_conversions("Mar"))
```

---

```python
month_conversions = {
    "Jan": "January",
    "Feb": "February",
    "Mar": "March",
    "Apr": "April",
    "May": "May",
    "Jun": "June",
    "Jul": "July",
    "Aug": "August",
    "Sep": "September",
    "Oct": "October",
    "Nov": "November",
    "Dec": "December"
}

print(month_conversions["March"])
```

---

```python
month_conversions = {
    "Jan": "January",
    "Feb": "February",
    "Mar": "March",
    "Apr": "April",
    "May": "May",
    "Jun": "June",
    "Jul": "July",
    "Aug": "August",
    "Sep": "September",
    "Oct": "October",
    "Nov": "November",
    "Dec": "December"
}

print(month_conversions["Mar"])
```

## --video-solution--

4
