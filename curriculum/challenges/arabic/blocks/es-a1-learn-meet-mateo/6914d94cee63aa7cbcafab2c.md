---
id: 6914d94cee63aa7cbcafab2c
title: المهمة 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

يذكر ماتيو اسمه ومهنته بالإسبانية.

هنا، يُستخدم الفعل `ser` للتعبير عن هويته ومهنته.

# --instructions--

استمع إلى التسجيل الصوتي وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

هذا التصريف للفعل مشتق من الفعل `ser` ويُستخدم لوصف من أنت أو ماذا تعمل.

---

`Soy`

### --feedback--

هذا التصريف للفعل مشتق من الفعل `ser` ويُستخدم لوصف من أنت أو ماذا تعمل.

# --explanation--


`Soy` هو فعل يُستخدم لوصف من أنت أو ماذا تعمل. على سبيل المثال:

`Soy Mateo. Soy ingeniero de software.` - أنا ماتيو. أنا مهندس برمجيات.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 2.35,
      "finishTimestamp": 5.39
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 1.82,
      "dialogue": {
        "text": "Soy Mateo.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "startTime": 2.5,
      "finishTime": 4.04,
      "dialogue": {
        "text": "Soy ingeniero de software.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 4.54
    }
  ]
}
```

