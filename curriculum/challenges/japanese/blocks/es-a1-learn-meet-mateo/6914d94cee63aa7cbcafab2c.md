---
id: 6914d94cee63aa7cbcafab2c
title: タスク 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

マテオ はスペイン語で自分の名前と職業を述べています。

ここでは、動詞 `ser` が自分の身元や職業を表現するために使われています。

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

この動詞の形は動詞 `ser` から来ており、自分が誰であるか、何をしているかを説明するために使われます。

---

`Soy`

### --feedback--

この動詞の形は動詞 `ser` から来ており、自分が誰であるか、何をしているかを説明するために使われます。

# --explanation--


`Soy` は自分が誰であるか、何をしているかを説明するために使われる動詞です。例えば：

`Soy Mateo. Soy ingeniero de software.` - 私はマテオです。ソフトウェアエンジニアです。

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
