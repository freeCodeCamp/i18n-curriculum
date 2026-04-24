---
id: 67acaebb95dabb0ee05500f7
title: タスク 21
challengeType: 22
dashedName: task-21
lang: en-US
---

<!-- (Audio) Anna: If people are working with outdated computers, it can be a setback for productivity. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`If people are working with outdated computers, it can be a BLANK for productivity.`

## --blanks--

`setback`

### --feedback--

この単語は、障害や進行を遅らせるものを意味します。

# --explanation--

`setback` は、進行を遅らせたり妨げたりするものです。遅いまたは非効率なコンピューターは作業に時間がかかり、効率を下げる場合があります。例えば：

- `The project faced a setback due to a critical bug.` - 重大なソフトウェアの問題のためにプロジェクトが遅れたり問題が起きたりしました。

- `Losing important data was a major setback for the team.` - データの紛失が困難を生み、チームの作業を遅らせました。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 35.78,
      "finishTimestamp": 39.68
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "If people are working with outdated computers, it can be a setback for productivity.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
