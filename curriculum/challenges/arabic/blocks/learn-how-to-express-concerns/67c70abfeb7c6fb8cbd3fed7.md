---
id: 67c70abfeb7c6fb8cbd3fed7
title: المهمة 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تريد ماريا أن تناقش مع جيمس؟

## --answers--

جدول بوب للأسبوع.

### --feedback--

ماريا لم تذكر جدول بوب.

---

اجتماعها الأخير مع بوب.

---

موعد نهائي لمشروع مستقبلي.

### --feedback--

ماريا لم تذكر موعدًا نهائيًا، فقط اجتماعها مع بوب.

---

طلب ميزانية العميل.

### --feedback--

ماريا لم تشير إلى طلب العميل في هذه الجملة.

## --video-solution--

2  

# --explanation--

تُستخدم عبارة `Can we talk about...` لتقديم موضوع للنقاش. إنها طريقة مهذبة لطلب محادثة حول أمر مهم. على سبيل المثال:

`Can we talk about the changes to the project timeline?` - هذا يعني أن المتحدث يريد مناقشة تعديلات جدول المشروع.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
