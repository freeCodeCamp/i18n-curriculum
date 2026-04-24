---
id: 67dd5baa84d2fcc56c09dce3
title: タスク 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

これは何かについて選択したり結論を出したりすることを意味します。

---

`phase`

### --feedback--

これはプロセスやプロジェクトの特定の段階や部分を指します。

# --explanation--

`To decide` は、よく考えた上で何かを選ぶことを意味します。例えば：

`We need to decide which tools to use for the project.` – これは選択肢を検討した後にツールを選ぶことを意味します。

`phase` は、より大きなプロセスの一部やステップを指します。例えば：

`We just finished the testing phase of the software.` – これは開発プロセスのテスト段階が完了したことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
