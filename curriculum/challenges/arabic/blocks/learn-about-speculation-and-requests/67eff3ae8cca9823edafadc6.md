---
id: 67eff3ae8cca9823edafadc6
title: المهمة 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

عن ماذا يسأل جيك؟

## --answers--

هل تم تطبيق التحديثات.

---

هل تم إصدار تحديثات أمان جديدة.

### --feedback--

جيك لا يسأل عما إذا كانت هناك تحديثات جديدة.

---

من المسؤول عن تحديثات الأمان.

### --feedback--

جيك لا يسأل عن شخص معين.

---

كيف تعمل تحديثات الأمان.

### --feedback--

جيك يفترض أن جيسيكا تعرف عن تحديثات الأمان.

## --video-solution--

1

# --explanation--

يريد جيك أن يعرف إذا تحقق أحد من تثبيت كل التحديثات.

بعبارة `Have you checked...?` يسأل إذا كانت جيسيكا قد تحققت من شيء ما.

بعبارة `whether all security updates were applied` يسأل إذا تم تثبيت التحديثات بنجاح.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.52,
      "finishTimestamp": 13.02
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.5,
      "dialogue": {
        "text": "Have you checked whether all security updates were applied?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4
    }
  ]
}
```
