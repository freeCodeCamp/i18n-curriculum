---
id: 3625fbc38b9428ae98d98f23
title: القواميس
challengeType: 11
videoId: FBfYADu3CIo
dashedName: dictionaries
---

# --description--

في هذا الفيديو، ستتعلم كيفية العمل مع القواميس في Python لتخزين أزواج المفتاح-القيمة.

# --questions--

## --text--

أي مما يلي سيطبع السلسلة النصية `"March"` بشكل صحيح في وحدة التحكم؟

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
