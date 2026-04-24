---
id: 67caf4fe6a781dcd6059ceda
title: タスク 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

これは支援を提供したり、何かを簡単にすることを意味します。  

---  

`regular`  

### --feedback--

これは一定の間隔で、または規則的に起こることを意味します。  

# --explanation--

`Helpful` は支援を提供したり、何かを簡単にすることを意味します。例えば：

`It was helpful to have clear instructions before starting the task.` - これは指示がタスクの完了を簡単にしたことを意味します。

`Regular` は一定の間隔で、または規則的に起こることを意味します。例えば：

`We have regular meetings every Monday.` - これは会議が毎週月曜日に規則的に行われることを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 40.42,
      "finishTimestamp": 42.58
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.16,
      "dialogue": {
        "text": "It'd be helpful if we had more regular check-ins.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.66
    }
  ]
}
```
