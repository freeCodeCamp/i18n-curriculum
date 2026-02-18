---
id: 68eff70d0ade1c408ecbfeb4
title: 任务 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

字母 `d` 被称为 `de`。

在单词开头或在 `l` 或 `n` 之后，它的发音更强，如单词 `dos`（"two"）中。然而，在元音之间它更柔和，如单词 `idea`（"idea"）中。

一个例子是 `doctor` ("doctor")。

# --instructions--

听音频并在下面的空格中写出字母。

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

这是字母表中的第四个字母。

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet.mp3",
      "startTime": 1,
      "startTimestamp": 8.39,
      "finishTimestamp": 9.39
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 2,
      "dialogue": {
        "text": "d",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 2.5
    }
  ]
}
```
