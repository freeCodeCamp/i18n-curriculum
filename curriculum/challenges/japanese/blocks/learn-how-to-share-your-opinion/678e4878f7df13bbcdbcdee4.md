---
id: 678e4878f7df13bbcdbcdee4
title: タスク 54
challengeType: 22
dashedName: task-54
lang: en-US
---

<!-- (audio) Jake: It's customizable, which is useful for our different teams. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`It's BLANK, which is useful for our different teams.`

## --blanks--

`customizable`

### --feedback--

この単語は、何かが個々の好みやニーズに合わせて変更や調整ができることを意味します。

# --explanation--

`Customizable` は、異なる好みやニーズ、要件に合わせて変更や修正ができるものを指します。例えば：

`The dashboard in this project management tool is customizable, allowing each team to organize their tasks in their preferred way.` - これは、ダッシュボードが各チームのニーズに応じて変更できることを意味し、作業をより効率的に整理するのに役立ちます。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 24.32,
      "finishTimestamp": 27.88
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 4.56,
      "dialogue": {
        "text": "It's customizable, which is useful for our different teams.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
