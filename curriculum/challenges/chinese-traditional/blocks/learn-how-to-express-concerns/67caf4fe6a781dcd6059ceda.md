---
id: 67caf4fe6a781dcd6059ceda
title: 任務 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

聆聽音訊並完成以下句子。  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

這表示提供協助或使某事變得更容易。  

---  

`regular`  

### --feedback--

這表示持續發生或在固定間隔內發生。  

# --explanation--

`Helpful` 是指提供協助或使某事變得更容易。 例如：

`It was helpful to have clear instructions before starting the task。`－這表示指示使任務更容易完成。

`Regular` 意味著持續發生或在設定的間隔內發生。 例如：

`We have regular meetings every Monday.`－這表示會議會持續在每週一舉行。

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
