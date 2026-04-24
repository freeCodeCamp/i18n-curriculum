---
id: 67f38fac88ead216c0db1dcb
title: タスク81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (audio) Jake: Did you check whether there was any unusual access from external IPs or locations? -->

<!-- SPEAKING -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェシカはまだ確認していませんが、これから行う予定です。彼女は何と言うべきでしょうか？

## --answers--

`No, I won't check it.`

### --audio-id--

ENaa826774

### --feedback--

`Won't` は `will not` の短縮形です。ジェシカは確認する予定です。

---

`No, I didn't. I'll do that.`

### --audio-id--

EN97950753

## --video-solution--

2

# --explanation--

ジェシカはジェイクの質問に対して、まだ確認していないがこれから行うことを認めています。この返答は、ジェイクが尋ねている内容に沿って、タスクを完了する準備ができていることを示しています。

`No, I didn't` はまだ確認していないことを示しています。

`I'll do that` はすぐにタスクを完了する意図を示しています。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.52,
      "finishTimestamp": 48.58
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
      "finishTime": 6.06,
      "dialogue": {
        "text": "Did you check whether there was any unusual access from external IPs or locations?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 6.56
    }
  ]
}
```
