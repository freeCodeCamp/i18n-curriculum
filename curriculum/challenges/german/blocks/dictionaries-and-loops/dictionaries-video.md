---
id: 3625fbc38b9428ae98d98f23
title: Wörterbücher
challengeType: 11
videoId: FBfYADu3CIo
dashedName: dictionaries
---

# --description--

In diesem Video lernen Sie, wie Sie in Python mit Wörterbüchern arbeiten, um Schlüssel-Wert-Paare zu speichern.

# --questions--

## --text--

Welche der folgenden Optionen gibt den String `"March"` korrekt in der Konsole aus?

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
