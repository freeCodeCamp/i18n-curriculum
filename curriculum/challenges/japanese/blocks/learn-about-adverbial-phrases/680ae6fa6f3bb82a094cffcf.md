---
id: 680ae6fa6f3bb82a094cffcf
title: タスク 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

結果に対してマリアがポジティブに驚いていることを示すには、何と言えばよいでしょうか？

## --answers--

`That's impressive.`

### --audio-id--

EN70c3200b

---

`Maybe we should lower our expectations.`

### --audio-id--

EN342dc19a

### --feedback--

これは結果に対する興奮ではなく、自信のなさを示しています。

## --video-solution--

1

# --explanation--

`Impressive` は、何かが非常に良い、大きい、または効果的であるために注目、称賛、尊敬に値することを意味します。例えば：

`Your presentation was really impressive! It covered everything clearly and confidently.` – これはプレゼンテーションが高品質で強いポジティブな印象を残したことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
