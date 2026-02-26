---
id: 69399bbb6d7a7bfeedaddd96
title: 任務 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

動詞 `escribir` 意思是寫。當西班牙語使用者想解釋一個字是如何書寫或拼寫時，他們經常使用表達式 `se escribe`。

這個表單來自動詞 `escribir`，通常用於拼寫名字、電子郵件或其他字母逐字拼寫的字。 例如：

- `Carlos se escribe c-a-r-l-o-s.` – Carlos 拼寫為 c-a-r-l-o-s。

- `Mi apellido se escribe con z.` – 我的姓氏拼寫中有 z。

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK s-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

這個小字是用來說明某事如何書寫時常用表達式的零件。

---

`escribe`

### --feedback--

這個動詞表單來自 `escribir`，用於拼寫一個字。

# --explanation--

`Se escribe` 用於說明一個字或名字如何書寫。

它來自動詞 `escribir`，通常用於逐字拼寫某物之前。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 0.81,
      "finishTimestamp": 16.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 2.41,
      "dialogue": {
        "text": "Hola, buenas noches.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 3.32,
      "finishTime": 6.25,
      "dialogue": {
        "text": "Me llamo Sebastián Ávila Gómez.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 7.36,
      "finishTime": 16.69,
      "dialogue": {
        "text": "Sebastián se escribe s-e-b-a-s-t-i-á-n, con acento en la última a.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 17.19
    }
  ]
}
```
