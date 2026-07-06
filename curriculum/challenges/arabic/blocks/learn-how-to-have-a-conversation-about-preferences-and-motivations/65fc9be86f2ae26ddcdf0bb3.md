---
id: 65fc9be86f2ae26ddcdf0bb3
title: المهمة 36
challengeType: 19
dashedName: task-36
lang: en-US
---


<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

استمع إلى ماريا وأجب عن السؤال.

# --questions--

## --text--

ما الذي يمكن أن يعزز حماسهم حسب قول ماريا؟

## --answers--

وجود فريق كبير

### --feedback--

فكر في ما الذي يجعل الفريق أكثر حماسًا تحديدًا، وليس فقط حجم الفريق.

---

أخذ استراحة طويلة

### --feedback--

تأمل إذا ما كانت الاستراحات مذكورة كطريقة لزيادة الحماس.

---

رؤية الفريق ملهمًا

---

حل المشكلات بسرعة

### --feedback--

تأمل إذا ما كانت سرعة حل المشكلات هي ما تبرز ماريا كعامل تحفيز.

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 60.96,
      "finishTimestamp": 68.80
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 5.7,
      "dialogue": {
        "text": "But do you know what else is great? Seeing the team's enthusiasm after solving these issues.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 6.16,
      "finishTime": 8.84,
      "dialogue": {
        "text": "When you see the team inspired, it can boost your motivation.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
