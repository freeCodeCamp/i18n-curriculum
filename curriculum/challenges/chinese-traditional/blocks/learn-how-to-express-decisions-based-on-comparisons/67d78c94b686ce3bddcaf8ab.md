---
id: 67d78c94b686ce3bddcaf8ab
title: 任務 117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

這三個字合起來的意思是減少完成任務所需的時間。  

---

`timelines`

### --feedback--

這個字的複數形式指的是完成專案的排程或截止期限。  

# --explanation--

`Save us time` 意味著減少完成某件事所需的時間，使處理程序更高效。 例如：

`Using automation tools can save us time on repetitive tasks.`－這表示自動化工具有助於更快完成任務。  

`Timelines` 指的是顯示專案中不同零件應該完成時間的排程或截止日期。例如：

`We need to adjust our timelines to finish the project on schedule。`－這表示需要更改截止日期以確保專案能準時完成。

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
