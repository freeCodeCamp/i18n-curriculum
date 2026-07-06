---
id: 67dbf936fe4d33ccbccae40d
title: المهمة 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

يُستخدم هذا للاعتذار عن شيء حدث. لا تنسَ كتابة الحرف الأول كبيرًا.

# --explanation--

`To be sorry for something` تُستخدم عند الاعتذار عن فعل قد تسبب في إزعاج أو ضرر. على سبيل المثال:

`I'm sorry for being late to the meeting.` - هذا يعني أن المتحدث يندم على التأخر ويعتذر. لاحظ أن `being` في صيغة `-ing` لأنها تأتي مباشرة بعد `for` (حرف جر).

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.55
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 3.55,
      "dialogue": {
        "text": "Hey, James. Sorry for the interruption earlier.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 4.05
    }
  ]
}
```
