---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: المهمة 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا ستفعل ماريا بالتعليقات التي حصلت عليها من جيمس؟

## --answers--

ستتجاهلها.

### --feedback--

تعترف ماريا بنقطة جيمس وتخطط لاتخاذ إجراء.

---

ستخبر الفريق بالتوقف عن القلق بشأن التواصل.

### --feedback--

ماريا تريد تحسين التواصل، لا تجاهل المخاوف.

---

ستلغي اجتماعات الفريق الدورية.

### --feedback--

ماريا لم تقل إنها ستلغي الاجتماعات الدورية.

---

ستقترح عقد المزيد من الاجتماعات الدورية لتحسين التواصل.

## --video-solution--

4  

# --explanation--

عند استخدام الفعل `suggest`، استخدم الفعل التالي بصيغة `-ing` بدلاً من المصدر. على سبيل المثال:

- `She suggested taking a break.` - هذا يعني أن الفكرة المقترحة هي أخذ استراحة.

- `He suggested starting the meeting earlier to avoid delays.` - هذا يعني أنه اقترح بدء الاجتماع في وقت أبكر لتجنب التأخير.

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
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
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
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
