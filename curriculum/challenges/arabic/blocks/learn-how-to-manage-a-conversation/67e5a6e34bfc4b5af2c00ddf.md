---
id: 67e5a6e34bfc4b5af2c00ddf
title: المهمة 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

هذا يعني خطير جدًا أو مهم. يُستخدم غالبًا عندما يحتاج شيء إلى اهتمام فوري.

---

`affect`

### --feedback--

هذا يعني تغيير شيء أو التأثير عليه. يصف غالبًا كيف يتسبب شيء في تغيير شيء آخر.

# --explanation--

`Critical` تعني مهم جدًا أو خطير. على سبيل المثال:

`We have a critical deadline tomorrow.` – هذا يعني أن الموعد النهائي مهم جدًا ولا يمكن تفويته.

`To affect` تعني التأثير على شيء أو التسبب في تغيير. على سبيل المثال:

`The new policy may affect employee performance.` – هذا يعني أن السياسة قد تغير طريقة أداء الموظفين.

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
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
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
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
