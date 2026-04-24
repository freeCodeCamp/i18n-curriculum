---
id: 657e1fd7b5ffaebc0ff4bd9f
title: タスク 26
challengeType: 19
dashedName: task-26
lang: en-US
---

<!-- (audio) Tom: Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me. -->

# --description--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

なぜトムはソフィーに感謝しているのでしょうか？

## --answers--

時間管理アプリを教えてくれたから。

### --feedback--

トムはアプリをもらったのではなく、アドバイスに感謝しています。

---

ソフィーのアドバイスが役に立つから。

---

ランチに誘ってくれたから。

### --feedback--

感謝しているのはアドバイスに対してで、ランチの誘いではありません。

---

プロジェクトを手伝ってくれたから。

### --feedback--

トムの感謝は組織化のアドバイスに関するもので、特定のプロジェクトの手助けではありません。

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
      "filename": "2.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 58.29,
      "finishTimestamp": 63.00
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
      "finishTime": 5.71,
      "dialogue": {
        "text": "Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 6.21
    }
  ]
}
```
