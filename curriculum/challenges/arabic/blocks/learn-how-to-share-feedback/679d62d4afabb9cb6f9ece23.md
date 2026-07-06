---
id: 679d62d4afabb9cb6f9ece23
title: المهمة 106
challengeType: 19
dashedName: task-106
lang: en-US
---

<!-- (Audio) Maria: If we rush, it could lead to more problems. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تريد ماريا أن تتجنب فعله، ولماذا؟

## --answers--

تريد تجنب إصلاح المشكلة.

### --feedback--

ماريا لا تقول إنه يجب عليهم عدم إصلاح المشكلة.

---

تريد تجنب طلب المساعدة.

### --feedback--

ماريا لا تذكر طلب المساعدة.

---

تريد تجنب التسرع لأنه قد يسبب المزيد من المشاكل.

---

تريد تجنب تحديث البرنامج.

### --feedback--

ماريا لا تقول إنه يجب عليهم تجنب التحديث.

## --video-solution--

3

# --explanation--

`To lead to problems` تعني أن فعلًا أو قرارًا قد يؤدي إلى صعوبات أو عواقب سلبية. على سبيل المثال:

`Skipping the testing phase can lead to serious problems in the software.` - هذا يعني أن عدم الاختبار بشكل صحيح قد يسبب مشاكل تقنية كبيرة.

في هذا الحوار، ماريا قلقة من أن التسرع قد يخلق مشاكل إضافية.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 47.08,
      "finishTimestamp": 49
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "If we rush, it could lead to more problems.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.42
    }
  ]
}
```
