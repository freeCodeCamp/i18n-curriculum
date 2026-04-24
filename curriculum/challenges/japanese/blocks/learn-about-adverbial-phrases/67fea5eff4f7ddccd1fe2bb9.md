---
id: 67fea5eff4f7ddccd1fe2bb9
title: タスク 22
challengeType: 22
dashedName: task-22
lang: en-US
---

<!-- (Audio) Sarah: We might also consider having weekly updates for parts of the project where changes are less frequent. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`We might also consider having BLANK updates for parts of the project where changes are less frequent.`

## --blanks--

`weekly`

### --feedback--

これは週に一度起こることを指しています。

# --explanation--

`Weekly` は、1週間に1回だけ起こることを表すために使われます。これは、週単位で起こるイベントや行動の頻度を示します。例えば：

`The team has weekly meetings to discuss project progress.` – これは会議が毎週行われることを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.62,
      "finishTimestamp": 49.14
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 3.2,
      "dialogue": {
        "text": "We might also consider having weekly updates",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 3.2,
      "finishTime": 5.52,
      "dialogue": {
        "text": "for parts of the project where changes are less frequent.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.02
    }
  ]
}
```
