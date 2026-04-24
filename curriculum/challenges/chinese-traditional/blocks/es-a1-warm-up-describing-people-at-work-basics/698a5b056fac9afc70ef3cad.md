---
id: 698a5b056fac9afc70ef3cad
title: 任務 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

讓我們複習一下你目前學過的幾個國家。

| 國家 | 國籍（女性） | 國籍（男性） |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

在西班牙語中，國家名稱是專有名詞，且總是以大寫字母開頭。

請注意，國籍 `brasileño`/`brasileña` 和 `panameño`/`panameña` 使用了獨特的字母 `eñe`（`ñ`）。

Camila 正在練習這些國家。你能辨認出它們嗎？

# --instructions--

聆聽音訊並完成下面的序列。

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

這個國家是南美洲最大的國家，且以大寫字母開頭。

---

`Panamá`

### --feedback--

這個國家以著名的運河聞名。記得在最後一個字母 `a` 上加上重音符號，並將第一個字母大寫。

# --explanation--

序列是 `Brasil` - `Colombia` - `Panamá`。

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
