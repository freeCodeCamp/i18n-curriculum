---
id: 698a5b056fac9afc70ef3cad
title: タスク 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

これまでに学んだ国をいくつか復習しましょう。

| 国名 | 国籍（女性形） | 国籍（男性形） |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

スペイン語では、国名は固有名詞であり、常に大文字で始まります。

国籍の `brasileño`/`brasileña` と `panameño`/`panameña` は、特別な文字 `eñe`（`ñ`）を使うことに注意してください。

カミラはこれらの国のいくつかを練習しています。どの国か分かりますか？

# --instructions--

音声を聞いて、以下のシーケンスを完成させてください。

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

この国は南アメリカで最も大きく、大文字で始まります。

---

`Panamá`

### --feedback--

この国は有名な運河で知られています。最後の文字 `a` にアクセント記号を付け、最初の文字を大文字にすることを忘れないでください。

# --explanation--

シーケンスは `Brasil` - `Colombia` - `Panamá` です。

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
