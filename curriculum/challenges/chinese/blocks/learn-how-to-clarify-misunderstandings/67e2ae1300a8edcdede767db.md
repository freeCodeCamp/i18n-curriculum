---
id: 67e2ae1300a8edcdede767db
title: 任务 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

当某人想获取信息或许可时使用此动词。

---

`about`

### --feedback--

这个介词连接相关的主题或对象。

# --explanation--

`Ask about` 意味着请求与特定主题相关的信息。例如：

`I asked about the new feature.` – 你想要关于该特色的信息。 

`Can I ask you about...` 是一种礼貌的提问方式，当你想要信息或帮助时使用。它表示你在征求谈论特定主题的许可。例如：

`Can I ask you about the project deadline?` – 这意味着你想讨论截止日期并获取更多细节。  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
