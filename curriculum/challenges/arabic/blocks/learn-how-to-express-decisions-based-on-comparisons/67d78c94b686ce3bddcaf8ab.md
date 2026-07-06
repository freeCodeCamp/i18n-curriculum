---
id: 67d78c94b686ce3bddcaf8ab
title: المهمة 117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

هذه الكلمات الثلاث معًا تعني تقليل الوقت اللازم لإكمال مهمة.

---

`timelines`

### --feedback--

تشير هذه الكلمة بصيغة الجمع إلى الجداول الزمنية أو المواعيد النهائية لإكمال مشروع.

# --explanation--

تعني عبارة `Save us time` تقليل الوقت المطلوب لإكمال شيء ما، مما يجعل العملية أكثر كفاءة. على سبيل المثال:

تعني الجملة `Using automation tools can save us time on repetitive tasks.` أن أدوات الأتمتة تساعد على إنجاز المهام بشكل أسرع.

تشير كلمة `Timelines` إلى الجداول الزمنية أو المواعيد النهائية التي توضح متى يجب إكمال أجزاء مختلفة من المشروع. على سبيل المثال:

تعني الجملة `We need to adjust our timelines to finish the project on schedule.` تعديل المواعيد النهائية لضمان إكمال المشروع في الوقت المحدد.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 32.34,
      "finishTimestamp": 37.52
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.18,
      "dialogue": {
        "text": "It could save us time and resources. What about timelines? Which option is faster?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.68
    }
  ]
}
```
