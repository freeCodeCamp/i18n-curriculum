---
id: 6939b0e1fac80c2b4fdf8ded
title: タスク 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe B-a-s-t-i. -->

# --description--

このタスクでは、Bastiがニックネームを一文字ずつつづります。

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`B`

### --feedback--

これはBastiがニックネームのつづりを始める最初の文字です。

---

`t`

### --feedback--

この文字は「Basti」の「s」の後に続きます。

---

`i`

### --feedback--

これは「Basti」の最後の文字です。語尾の母音の音に注意してください。

# --explanation--

Bastiはニックネームを`B-a-s-t-i`とつづります。

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
      "startTimestamp": 22.6,
      "finishTimestamp": 27.5
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
      "finishTime": 5.6,
      "dialogue": {
        "text": "Se escribe B-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.9
    }
  ]
}
```
