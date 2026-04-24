---
id: 680e2de44baaad7305adc8ee
title: タスク 46
challengeType: 22
dashedName: task-46
lang: en-US
---

<!-- (Audio) Josh: I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you? -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`I'll draft a new quote with these specifics and send it over to you by tomorrow. BLANK for you?`

## --blanks--

`Does that work`

### --feedback--

これら3つの単語は一緒に使われて、計画や提案が問題ないか丁寧に尋ねる表現です。最初の単語の最初の文字は大文字です。

# --explanation--

`Does that work` は、提案や取り決めが相手にとって問題ないかを丁寧に確認する表現です。例えば：

`We can meet at 3 PM. Does that work for you?` – これは時間が相手にとって都合が良いかどうかを尋ねています。

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Josh",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 70.14,
      "finishTimestamp": 75.94
    }
  },
  "commands": [
    {
      "character": "Josh",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Josh",
      "startTime": 1,
      "finishTime": 6.8,
      "dialogue": {
        "text": "I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you?",
        "align": "center"
      }
    },
    {
      "character": "Josh",
      "opacity": 0,
      "startTime": 7.3
    }
  ]
}
```
