---
id: 67d7dcfb9afa344d0e95fa4f
title: 任務 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

這個兩字詞語表示導致或造成某事發生。  

---

`delay`

### --feedback--

這表示使某事花費比預期更長的時間。  

# --explanation--

`Lead to` 意味著導致某事發生或產生某種結果。 例如：

`Poor planning can lead to missed deadlines.`－這表示如果規劃不良，可能無法在期限內完成。  

`Delay` 是指使某事比預期花費更長時間或將其延後。例如：

`The software release was delayed due to unexpected bugs。`－這表示因為技術問題，發布被延後了。  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
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
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
