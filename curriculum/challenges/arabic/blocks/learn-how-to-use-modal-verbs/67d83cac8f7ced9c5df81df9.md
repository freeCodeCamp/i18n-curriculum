---
id: 67d83cac8f7ced9c5df81df9
title: المهمة 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

هذا الفعل الناقص يعبر عن احتمال أو عدم يقين بشأن حدث في الماضي.

---

`have taken`

### --feedback--

هذا الفعل هو صيغة `Past Perfect`، تُستخدم للحديث عن شيء قد يكون حدث في الماضي. استخدم كلمتين.

# --explanation--  

`Might` يعبر عن الاحتمال.

`Have taken` هي صيغة `Past Perfect` من `take`، تُستخدم للحديث عن فعل محتمل في الماضي. على سبيل المثال:

`The attacker might have taken sensitive files.` - لا تعرف بالتأكيد، لكنه ممكن.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 53.8,
      "finishTimestamp": 57.7
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "This will help us understand the extent of the breach and what they might have taken.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
