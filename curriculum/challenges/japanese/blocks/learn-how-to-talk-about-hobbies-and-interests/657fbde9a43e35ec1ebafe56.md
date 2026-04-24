---
id: 657fbde9a43e35ec1ebafe56
title: タスク 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

この文脈でのフレーズ `Would you like to come?` は何を伝えていますか？

## --answers--

招待を断っている。

### --feedback--

このフレーズは「いいえ」と言っているわけではありません。招待を申し出ている内容です。

---

招待をしている。

---

感謝の気持ちを表している。

### --feedback--

このフレーズは「ありがとう」という意味ではありません。誰かを招待している内容です。

---

情報を求めている。

### --feedback--

このフレーズは情報を尋ねる質問ではなく、イベントへの丁寧な招待です。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
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
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
