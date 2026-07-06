---
id: 67f36533ffaeffe3ac2dad2b
title: المهمة 131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تشرح جيسيكا؟

## --answers--

كانت هناك مشكلة في جدول التحديث الحالي.

### --feedback--

جيسيكا تتحدث عن توقيت الميزة، وليس عن جدول التحديث نفسه.

---

ميزة تتبع الميزانية ستكون في التحديث التالي، وليس في التحديث الحالي.

---

تمت إزالة ميزة تتبع الميزانية من التحديث الحالي.

### --feedback--

جيسيكا لم تذكر أن الميزة قد أُزيلت.

---

تم تضمين الميزة عن طريق الخطأ في هذا التحديث.

### --feedback--

جيسيكا لم تقل إن الميزة أُدرجت عن طريق الخطأ.

## --video-solution--

2

# --explanation--

تقول جيسيكا، `The budget tracking feature is planned for the next update`، موضحة أن الميزة غير مدرجة في التحديث الحالي لكنها ستُضاف في التحديث التالي.

هذا يزيل الالتباس حول توقيت الميزة.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
