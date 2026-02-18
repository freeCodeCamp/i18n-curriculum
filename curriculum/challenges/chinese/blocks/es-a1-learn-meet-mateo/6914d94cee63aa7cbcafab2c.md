---
id: 6914d94cee63aa7cbcafab2c
title: 任务 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Mateo 正在用西班牙语介绍他的名字和职业。 

这里，动词 `ser` 用于表达他的同一性和职业。

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

这个动词形式来自动词 `ser`，用于描述你是谁或你做什么。

---

`Soy`

### --feedback--

这个动词形式来自动词 `ser`，用于描述你是谁或你做什么。

# --explanation--


`Soy` 是一个动词，用来描述你是谁或你做什么。例如：

`Soy Mateo. Soy ingeniero de software.` - 我是 Mateo。我是软件工程师。

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

