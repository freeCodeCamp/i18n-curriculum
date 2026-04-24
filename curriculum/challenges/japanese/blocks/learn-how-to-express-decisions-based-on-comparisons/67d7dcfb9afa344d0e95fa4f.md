---
id: 67d7dcfb9afa344d0e95fa4f
title: タスク 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

この2語のフレーズは、何かを引き起こす、または結果として生じさせることを意味します。  

---

`delay`

### --feedback--

これは、何かを予想より長くかかるようにすることを意味します。  

# --explanation--

`Lead to` は、何かを引き起こしたり、特定の結果をもたらしたりすることを意味します。例えば：

`Poor planning can lead to missed deadlines.` – これは、計画がうまくいかないと締め切りに間に合わないかもしれないという意味です。  

`Delay` は、何かを予想より長くかかるようにしたり、延期したりすることを意味します。例えば：

`The software release was delayed due to unexpected bugs.` – これは、技術的な問題のために発売が遅れたという意味です。  

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
