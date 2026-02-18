---
id: 6914d94cee63aa7cbcafab2c
title: 任務 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Mateo 正在用西班牙語提到他的名字和職業。 

這裡，動詞 `ser` 用來表達他的身分和職業。

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

這個動詞表單來自動詞 `ser`，用於描述你是誰或你做什麼。

---

`Soy`

### --feedback--

這個動詞表單來自動詞 `ser`，用於描述你是誰或你做什麼。

# --explanation--


`Soy` 是一個動詞，用來描述你是誰或你做什麼。例如：

`Soy Mateo. Soy ingeniero de software.` - 我是 Mateo。我是軟體工程師。

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

