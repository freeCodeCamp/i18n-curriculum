---
id: 67caec5ecebab7be7456df7f
title: المهمة 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما المشكلة الأخرى التي أثارها الفريق؟

## --answers--

أنهم يتلقون التحديثات مبكرًا جدًا.

### --feedback--

ماريا تذكر العكس تمامًا.

---

أنهم لا يريدون التواصل كثيرًا.

### --feedback--

ماريا لا تذكر رغبة الفريق في التواصل.

---

أنهم غالبًا لا يسمعون عن التغييرات في الوقت المناسب.

---

أنهم يعتقدون أن عددًا كبيرًا جدًا من الأشخاص يشاركون في التواصل.

### --feedback--

ماريا لا تذكر عدد الأشخاص المشاركين.

## --video-solution--

3  

# --explanation--

عندما تقول أن شيئًا ما `isn't great`، فأنت تخفف من رسالة سلبية (بدلًا من قول `it is bad`، على سبيل المثال). هذا يجعل النقد يبدو أكثر لطفًا أو غير مباشر. ألقِ نظرة على الجمل التالية:

- `The design is bad.` - هذه جملة سلبية قوية، وغالبًا ما تبدو غير مهذبة.

- `The design isn't great. Maybe we can improve it.` - قول هذا يبدو أقل حدة وأكثر بناءً.

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
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
