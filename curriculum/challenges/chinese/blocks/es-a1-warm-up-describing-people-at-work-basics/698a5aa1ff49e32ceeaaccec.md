---
id: 698a5aa1ff49e32ceeaaccec
title: 任务 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

现在 Camila 正在练习如何用西班牙语说 `número de teléfono`，意思是“电话号码”。

注意单词 `número` 在字母 `u` 上有重音符号，单词 `teléfono` 在第二个字母 `e` 上有重音符号。

# --instructions--

听音频并在下面写出单词。

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

这个词在西班牙语中字面意思是“数字”。记得在字母 `u` 上写重音符号，并且首字母要大写。

---

`teléfono`

### --feedback--

这个词在西班牙语中字面意思是“电话”。记得在第二个字母 `e` 上写重音符号。

# --explanation--

`Número de teléfono` 在西班牙语中表示“电话号码”。

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
