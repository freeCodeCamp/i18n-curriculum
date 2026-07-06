---
id: 679d26afcebc4ea8a9478fbf
title: المهمة 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

هل جيمس متأكد من حاجتهم لتحديث البرنامج؟

## --answers--

ليس حقًا، لأنه يطلب رأي ماريا.

---

نعم، لقد قرر بالفعل تحديثه.

### --feedback--

جيمس يسأل ماريا عن ذلك، لذا من المحتمل أنه لم يقرر بعد.

---

نعم، لقد بدأ بالفعل في تحديث البرنامج.

### --feedback--

جيمس يسأل عما إذا كان يجب عليهم تحديث البرنامج أم لا.

---

على العكس، هو متأكد من أنهم لا يجب أن يحدثوا البرنامج.

### --feedback--

جيمس لا يرفض الفكرة تمامًا؛ هو في الواقع يطلب رأي ماريا في الموضوع.

## --video-solution--

1

# --explanation--

`To update` تعني تعديل أو تحسين البرنامج بإصدار نسخة جديدة. التحديثات يمكن أن تشمل إصلاحات لأخطاء برمجية، ميزات جديدة، أو تحسينات في الأداء. على سبيل المثال:

`The company released an update to fix security vulnerabilities in the app.` - هذا يعني أنه تم إطلاق نسخة جديدة لمعالجة مشكلات الأمان.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
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
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
