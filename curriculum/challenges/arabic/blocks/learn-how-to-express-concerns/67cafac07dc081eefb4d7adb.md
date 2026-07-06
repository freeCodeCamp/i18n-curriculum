---
id: 67cafac07dc081eefb4d7adb
title: المهمة 135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما الهدف من عقد اجتماعات أسبوعية؟

## --answers--

لتقليل عدد المهام التي لدى الفريق.

### --feedback--

بوب لم يذكر تقليل المهام.

---

لتجنب إجراء أي تغييرات على المشروع.

### --feedback--

بوب لم يقترح تجنب إجراء تغييرات.

---

لزيادة عدد الاجتماعات بدون هدف واضح.

### --feedback--

بوب لديه هدف محدد وذكره.

---

للتأكد من بقاء الجميع على اطلاع على المشروع.

## --video-solution--

4  

# --explanation--

`To keep someone in the loop` يعني إبقاؤهم على اطلاع بالتحديثات والقرارات المهمة. على سبيل المثال:

`Please keep me in the loop about any changes to the schedule.` - هذا يعني أن المتحدث يريد أن يُحدث إذا طرأ أي تغيير.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
