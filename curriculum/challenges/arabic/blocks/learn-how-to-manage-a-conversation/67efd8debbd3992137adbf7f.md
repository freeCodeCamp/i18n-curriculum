---
id: 67efd8debbd3992137adbf7f
title: المهمة 91
challengeType: 22
dashedName: task-91
lang: en-US
---

<!-- (Audio) Brian: How's everything going on your end? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`How's everything going on your BLANK?`

## --blanks--

`end`

### --feedback--

سبقها `on your`، تشير إلى وضع أو جانب أو موقع شخص معين.

# --explanation--

تُستخدم عبارة `On your end` للإشارة إلى وضع شخص ما أو ما يحدث معه، غالبًا في سياق محادثة أو عمل. على سبيل المثال:

`Let me know if you need any help on your end.` – هذا يعني أن المتحدث يريد معرفة ما إذا كان الشخص الآخر يحتاج إلى مساعدة في عمله أو وضعه.

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
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.56,
      "finishTimestamp": 7.28
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
      "finishTime": 2.72,
      "dialogue": {
        "text": "How's everything going on your end?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.22
    }
  ]
}
```
