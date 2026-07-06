---
id: 67cadf5ea48ca37df972fac6
title: المهمة 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما هو الطلب الأكثر أهمية الذي تذكره ماريا من الفريق؟

## --answers--

هم بحاجة إلى المزيد من المساعدة.

---

يريدون مهلة أطول.

### --feedback--

ماريا لم تذكر تمديد المهلة.

---

يرغبون في تقليل عدد المهام.

### --feedback--

ماريا لم تذكر تقليل عدد المهام.

---

هم يطلبون المزيد من الاجتماعات.

### --feedback--

ماريا لم تذكر اجتماعات إضافية.

## --video-solution--

1  

# --explanation--

تُستخدم كلمة `First` عندما تريد ترقيم الإجراءات حسب الأهمية أو الترتيب الزمني. في هذه الحالة، تسرد ماريا ما يحتاجه الفريق، بدءًا بما يبدو أنه الطلب الأكثر أهمية (الحصول على المزيد من الدعم). مثال آخر:

`First, we should analyze the problem. Then, we can discuss solutions.` - هذا يعني أن تحليل المشكلة يأتي قبل أي شيء آخر.

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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
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
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
