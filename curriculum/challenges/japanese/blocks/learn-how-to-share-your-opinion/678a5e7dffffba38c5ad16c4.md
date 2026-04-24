---
id: 678a5e7dffffba38c5ad16c4
title: タスク 17
challengeType: 22
dashedName: task-17
lang: en-US
---

<!-- (audio) Linda: In my case, I prefer Python because it's great for data analysis. Plus, it's really good for building prototypes quickly. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`In my case, I prefer Python because it's BLANK data analysis. Plus, it's really BLANK building prototypes quickly.`

## --blanks--

`great for`

### --feedback--

この2語のフレーズは、何かが特定の目的に非常に適している、または効果的であることを意味します。

---

`good for`

### --feedback--

この2語のフレーズは、何かが特定の作業や状況に適している、または有益であることを意味します。

# --explanation--

`great for` と `good for` はどちらも、何かが特定の目的に非常に役立ち、適している、または効果的であることを意味します。例えば：

- `This new software is great for managing large projects.` - これは、そのソフトウェアが大規模なプロジェクトの管理に非常に適していて効果的であることを意味します。

- `Cloud storage is good for backing up large volumes of data.` - これは、クラウドストレージが大量のデータを安全に保存するのに非常に効果的で適していることを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.04,
      "finishTimestamp": 21.9
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.3,
      "dialogue": {
        "text": "In my case, I prefer Python because it's great for data analysis.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.64,
      "finishTime": 6.86,
      "dialogue": {
        "text": "Plus it's really good for building prototypes quickly.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.36
    }
  ]
}
```
