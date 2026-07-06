---
id: 67ddb67d2bbf41bb5dce0fb3
title: المهمة 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يمكن أن نستنتج من إجابة جيمس؟

## --answers--

يحتاج إلى حل مشكلة أولاً.

### --feedback--

جيمس لا يقول شيئًا عن مسألة أخرى.

---

هو ينهي المحادثة بطريقة ودية.

---

يريد جدولة اجتماع الآن.

### --feedback--

لا يوجد ذكر لجدولة أي شيء.

---

هو يطلب المزيد من المساعدة.

### --feedback--

جيمس لا يقدم طلبًا.

## --video-solution--

2

# --explanation--

في المحادثة، غالبًا ما تُحذف الكلمات عندما يكون المعنى واضحًا. في `Talk to you later`، تم حذف الفاعل `I'll` (اختصار لـ `I will`). الجملة الكاملة ستكون `I'll talk to you later`. هذا النوع من الحذف شائع في الكلام العادي. مثال آخر:

`See you tomorrow!` - هذه طريقة مختصرة لقول `I'll see you tomorrow`.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
