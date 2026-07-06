---
id: 68555dfadef342c2db9b5abf
title: المهمة 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

هذه العبارة المكونة من كلمتين تعني قدم أو تسبب في ظهور شيء أو أن يصبح مشكلة. الكلمة الأولى هي صيغة الماضي من `bring`.

---

`unexpected`

### --feedback--

هذه الكلمة تعني أن شيئًا حدث دون تخطيط أو توقع. تنتهي بـ `-ed`.

# --explanation--

تعني `Brought up` تسبب في ظهور شيء، خاصة مشكلة أو مسألة. هنا، `brought` هي صيغة الماضي من `bring`. على سبيل المثال:

`The new feature brought up several bugs.` – هذا يعني أن الميزة تسببت في ملاحظة الأخطاء البرمجية.

تصف كلمة `Unexpected` شيئًا يحدث دون تحذير أو تخطيط. على سبيل المثال:

`We had an unexpected delay due to server issues.` – هذا يعني أن التأخير لم يكن متوقعًا.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
