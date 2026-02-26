---
id: 69399bbb6d7a7bfeedaddd96
title: 任务 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

动词 `escribir` 意思是写。当讲西班牙语的人想解释一个单词如何书写或拼写时，他们经常使用表达式 `se escribe`。

这个形式来自动词 `escribir`，通常用于拼写名字、电子邮件或其他单词的字母。例如：

- `Carlos se escribe c-a-r-l-o-s.` – Carlos 拼写为 c-a-r-l-o-s。

- `Mi apellido se escribe con z.` – 我的姓用 z 拼写。

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK s-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

这个小词是解释某事如何书写时常用表达式的一部分。

---

`escribe`

### --feedback--

这个动词形式来自 `escribir`，用于拼写一个单词时。

# --explanation--

`Se escribe` 用于解释一个单词或名字是如何书写的。

它来自动词 `escribir`，通常在逐字拼写某物之前使用。

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
