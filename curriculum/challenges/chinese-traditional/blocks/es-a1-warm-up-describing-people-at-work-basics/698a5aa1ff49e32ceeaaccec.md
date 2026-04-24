---
id: 698a5aa1ff49e32ceeaaccec
title: 任務 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

現在 Camila 正在練習如何用西班牙語說 `número de teléfono`，意思是「電話號碼」。

注意單字 `número` 在字母 `u` 上有重音符號，而單字 `teléfono` 在第二個字母 `e` 上也有重音符號。

# --instructions--

聆聽音訊並在下方寫出該單字。

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

這個字在西班牙語中字面意思是「數字」。記得在字母 `u` 上加上重音符號，並將第一個字母大寫。

---

`teléfono`

### --feedback--

這個字在西班牙語中字面意思是「電話」。記得在第二個字母 `e` 上加上重音符號。

# --explanation--

`Número de teléfono` 在西班牙語中是「電話號碼」的意思。

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
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
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
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
