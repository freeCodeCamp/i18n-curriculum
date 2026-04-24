---
id: 67d3f4b1be72cc09bd3ac4be
title: タスク 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Jessica: There are a few things you must do to ensure compliance. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`There are a few things you BLANK BLANK to ensure compliance.`

## --blanks--

`must`

### --feedback--

このモーダル動詞は必要性や義務を表します。

---

`do`

### --feedback--

この動詞は`must`の後に続き、必要な行動を示します。

# --explanation--

`Must`は必要性や義務を表すモーダル動詞です。例えば：

- `You must wear a seatbelt while driving.` - 必要とされます。

- `We must submit the report by Friday.` - 必要です。

モーダル動詞の後には常に動詞の原形（`to`なし）が続きます。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.02,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 3.6,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.1
    }
  ]
}
```
