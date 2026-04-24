---
id: 660684bfc24bf48cfaaf9cfa
title: タスク 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot` は何かを試してみることを意味します。これは `Try it` と言うようなものです。

例えば、友達がコーディングクラスに参加するのをためらっているとき、難しすぎると思っている場合、`Why not give it a shot? You might enjoy it more than you think.` と言って参加を勧めることができます。

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

これは `I will` の短縮形です。ソフィーはブライアンの提案を試してみる決心を表しています。

---

`shot`

### --feedback--

この文脈では、何かを試みることや挑戦を意味します。ソフィーはブライアンの勧めを試してみると言っています。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
