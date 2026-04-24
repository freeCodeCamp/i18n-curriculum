---
id: 657fb5afeeba2de5d01dda0e
title: タスク 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

トムはサラのSFコンベンションへの招待にどのように応じていますか？

## --answers--

すぐに受け入れる。

### --feedback--

トムは招待を受け入れていません。SFに興味がないことを述べています。

---

丁寧に断る。

---

興味がないことを示す。

### --feedback--

トムは興味がないことを表現していますが、単に興味を示さないのではなく、丁寧に招待を断っています。

---

招待を無視する。

### --feedback--

トムは招待を認識して応答しているので、無視はしていません。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
