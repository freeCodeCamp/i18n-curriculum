---
id: 660684bfc24bf48cfaaf9cfa
title: المهمة 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

تعني عبارة `Give it a shot` محاولة القيام بشيء ما. تشبه قولك `Try it`.

على سبيل المثال، إذا كان صديقك مترددًا بشأن الانضمام إلى صنف برمجة لأنه يعتقد أنه قد يكون صعبًا جدًا، يمكنك أن تقول له `Why not give it a shot? You might enjoy it more than you think.` لتشجيعه على تجربة الانضمام إلى هذا الصنف.

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

هي اختصار لـ `I will`. صوفي تعبر عن قرارها بمحاولة ما اقترحه برايان.

---

`shot`

### --feedback--

في هذا السياق، تعني محاولة أو تجربة القيام بشيء ما. صوفي تقول إنها ستحاول ما أوصى به برايان.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
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
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
