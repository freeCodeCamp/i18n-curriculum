---
id: 693aebb31ed98f7aea7d1a5d
title: タスク 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

このタスクでは、Bastiが国番号を含む電話番号全体を話すのを聞きます。番号は数字のグループごとに話されます。

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

次のうち、Bastiの電話番号はどれですか？

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

最後の数字がBastiの言っているものと違います。

---

+520 4489 2201

### --feedback--

Bastiが言っている国番号は520ではありません。

---

+502 4498 2201

### --feedback--

中央の4桁に小さな間違いがあります。

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201`、は「そして私の番号は+502 4489 2201です」という意味です。

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 64.86,
      "finishTimestamp": 74.84
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
      "finishTime": 10.98,
      "dialogue": {
        "text": "Y mi número es +502 4489 2201.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 11.48
    }
  ]
}
```
