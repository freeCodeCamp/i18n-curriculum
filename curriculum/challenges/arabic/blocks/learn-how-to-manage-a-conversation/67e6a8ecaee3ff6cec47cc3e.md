---
id: 67e6a8ecaee3ff6cec47cc3e
title: المهمة 75
challengeType: 19
dashedName: task-75
lang: en-US
---

<!-- (Audio) Jessica: I'll try to be quick so we can get back to the main agenda. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

لماذا تريد جيسيكا شرح الخطأ البرمجي للفريق بسرعة؟

## --answers--

لأنها تريد العودة إلى الموضوع الرئيسي للاجتماع.

---

لأنها تريد مغادرة الاجتماع مبكرًا.

### --feedback--

جيسيكا لم تذكر مغادرة الاجتماع.

---

لأن الفريق يعرف الخطأ البرمجي بالفعل.

### --feedback--

جيسيكا تشرح الخطأ البرمجي لأنه قد يؤثر على الفريق.

---

لأنها لا تعتقد أن الخطأ البرمجي مهم.

### --feedback--

جيسيكا تعتقد أن المشكلة مهمة، لكنها تريد أيضًا احترام جدول أعمال الاجتماع.

## --video-solution--

1

# --explanation--

`So we can` تُستخدم لإظهار الغرض — تعني أن الشيء التالي الذي تذكره هو ما تنوي فعله. تشرح سبب قيام شخص بشيء ما. على سبيل المثال:

`I'll finish this now so we can start the next task.` – هذا يعني أن المتحدث يريد إنهاء شيء ما ليبدأ شيئًا آخر قريبًا.

`The main agenda` تشير إلى المواضيع أو الخطة الأساسية لاجتماع أو حدث. على سبيل المثال:

`Let's stick to the main agenda and avoid side discussions.` – هذا يعني البقاء مركزًا على أهم البنود في الاجتماع.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 45.8,
      "finishTimestamp": 48.14
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
      "finishTime": 3.34,
      "dialogue": {
        "text": "I'll try to be quick so we can get back to the main agenda.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 3.84
    }
  ]
}
```
