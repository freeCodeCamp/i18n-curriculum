---
id: 680a3cf5ca047daf5e8ecff5
title: タスク 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (Audio) Sophie: This way, we can understand the limits better before we launch it fully. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`This way, we can understand the limits better BLANK we launch it fully.`

## --blanks--

`before`

### --feedback--

これは、ある出来事が別の出来事よりも前に起こることを示すために使われます。

# --explanation--

`Before` は、ある動作が別の動作よりも先に起こることを示すために使われます。例えば：

- `Please save your work before you close the program.` – これは、保存がプログラムを閉じるよりも先に行われるべきだという意味です。

- `He always checks his code carefully before submitting it.` – これは、提出する前にチェックが最初に行われることを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-2.mp3",
      "startTime": 1,
      "startTimestamp": 40.52,
      "finishTimestamp": 43.78
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "This way, we can understand the limits better",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.06,
      "finishTime": 4.26,
      "dialogue": {
        "text": "before we launch it fully.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.76
    }
  ]
}
```
