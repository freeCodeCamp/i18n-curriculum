---
id: 678e5a7c4de8c4ccf4ed6ca9
title: 任务 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

这个词的意思是持相同意见或达成共识。 

---

`disagree`

### --feedback--

这个词意味着持有不同意见或不一致。

# --explanation--

`Agree` 意味着同意或与某人持相同意见。例如：  

`We both agree that improving security is important.` - 这意味着你与另一个人对安全性有相同的看法。

`Disagree` 意味着有不同的观点或不一致。例如：  

`Jake and Maria disagree on which software to use。` - 这表明 Jake 和 Maria 对软件的选择有不同的意见。

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
      "startTimestamp": 56.0,
      "finishTimestamp": 58.28
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
      "finishTime": 3.28,
      "dialogue": {
        "text": "Okay, let's agree to disagree.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 3.78
    }
  ]
}
```
