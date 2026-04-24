---
id: 67dd5cfeacc0cad2fc967438
title: タスク16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェームズは何を知りたいと思っていますか？

## --answers--

最初のフェーズの締め切りについて合意したかどうか。

---

プロジェクトがキャンセルされたかどうか。

### --feedback--

ジェームズはプロジェクトのキャンセルについては言及していません。

---

アリスが最初のフェーズの責任者かどうか。

### --feedback--

ジェームズは責任については尋ねていません。

---

チームが最終フェーズを終えたかどうか。

### --feedback--

ジェームズは最終フェーズについて話していません。

## --video-solution--

1

# --explanation--

`By the way` は会話に新しいが関連した話題を導入するために使われます。話し手がちょうど思い出したことや確認したいことを持ち出すことが多いです。例えば：

`By the way, have you seen the updated report?` – これはすでに話されている内容に関連した新しい質問を導入します。

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
