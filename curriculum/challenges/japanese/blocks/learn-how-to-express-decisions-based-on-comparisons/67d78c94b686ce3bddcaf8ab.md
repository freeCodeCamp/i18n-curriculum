---
id: 67d78c94b686ce3bddcaf8ab
title: タスク117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

これら3つの単語は一緒に、タスクを完了するのに必要な時間を短縮することを意味します。  

---

`timelines`

### --feedback--

この単語の複数形は、プロジェクトを完了するためのスケジュールや締め切りを指します。  

# --explanation--

`Save us time` は、何かを完了するのに必要な時間を短縮し、プロセスをより効率的にすることを意味します。例えば：

`Using automation tools can save us time on repetitive tasks.` – これは自動化ツールがタスクをより速く完了するのに役立つことを意味します。  

`Timelines` は、プロジェクトの異なる部分がいつ完了すべきかを示すスケジュールや締め切りを指します。例えば：

`We need to adjust our timelines to finish the project on schedule.` – これはプロジェクトが期限内に完了するように締め切りを変更することを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 32.34,
      "finishTimestamp": 37.52
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.18,
      "dialogue": {
        "text": "It could save us time and resources. What about timelines? Which option is faster?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.68
    }
  ]
}
```
