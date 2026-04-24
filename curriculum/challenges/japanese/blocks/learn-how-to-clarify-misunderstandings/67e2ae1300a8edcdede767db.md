---
id: 67e2ae1300a8edcdede767db
title: タスク 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

この動詞は、誰かが情報や許可を得たいときに使います。

---

`about`

### --feedback--

この前置詞は、関連する話題や主題をつなげます。

# --explanation--

`Ask about` は、特定の話題に関する情報を求めることを意味します。例えば：

`I asked about the new feature.` – 機能についての情報が欲しかった場合です。

`Can I ask you about...` は、情報や助けを求めるときに丁寧に質問を始める方法です。特定の話題について話す許可を求めていることを示します。例えば：

`Can I ask you about the project deadline?` – これは締め切りについて話し、詳細を知りたいという意味です。

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
