---
id: 66234ab7decaffe8ecb8327d
title: المهمة 56
challengeType: 22
dashedName: task-56
lang: en-US
---

<!-- (Audio) Sophie: Ok, so if I make changes here, do you think it could affect other functionalities? -->

# --description--

تعني `To affect` التأثير في شيء ما أو إحداث تغيير عليه. في البرمجة، يعني `affecting` جزءًا من النظام أن التغييرات في مساحة واحدة قد تؤثر على كيفية عمل المساحات الأخرى.

على سبيل المثال، تعني عبارة `Changing the database structure could affect the application's performance` أن التعديلات قد تؤثر على الأداء.

# --fillInTheBlank--

## --sentence--

`Ok, so if I make changes here, do you think it could BLANK other BLANK?`

## --blanks--

`affect`

### --feedback--

في هذا السياق، يشير ذلك إلى التأثير المحتمل لتغييرات صوفي على أجزاء أخرى من النظام.

---

`functionalities`

### --feedback--

هي العمليات أو الميزات المختلفة في النظام التي قد تتأثر بالتغييرات.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 21.3,
      "finishTimestamp": 25.64
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "Okay, so if I make changes here,",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.36,
      "finishTime": 5.34,
      "dialogue": {
        "text": "do you think it could affect other functionalities?",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.84
    }
  ]
}
```
