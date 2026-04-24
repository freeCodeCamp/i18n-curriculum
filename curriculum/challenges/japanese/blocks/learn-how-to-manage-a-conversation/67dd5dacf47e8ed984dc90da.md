---
id: 67dd5dacf47e8ed984dc90da
title: タスク 17
challengeType: 19
dashedName: task-17
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

<!-- SPEAKING -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

アリスは、現時点で締め切りに関する決定がないことを短くどう答えられますか？

## --answers--

`Not yet.`

### --audio-id--

EN6acf22f8

---

`We're still looking for it.`

### --audio-id--

EN391abad4

### --feedback--

これは締め切りの設定に関する質問とは関係がありません。

## --video-solution--

1

# --explanation--

`Not yet` は、何かが現在までに起こっていない、または完了していないが、将来的には起こる可能性があることを短く自然に表現する方法です。例えば：

- **Manager:** `Have you sent the email?` - ここでは、送るべきメールについて尋ねています。

- **Employee:** `Not yet.` – これはメールはまだ送られていないが、送る予定であることを意味します。

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
