---
id: 67f36533ffaeffe3ac2dad2b
title: タスク131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェシカは何を説明していますか？

## --answers--

現在のアップデートのスケジュールに問題がありました。

### --feedback--

ジェシカはアップデート自体のスケジュールではなく、機能のタイミングについて話しています。

---

予算追跡機能は現在のアップデートではなく、次のアップデートに含まれます。

---

予算追跡機能は現在のアップデートから削除されました。

### --feedback--

ジェシカは機能が削除されたとは言っていません。

---

その機能は誤って今回のアップデートに含まれていました。

### --feedback--

ジェシカは機能が誤って含まれたとは言っていません。

## --video-solution--

2

# --explanation--

ジェシカは `The budget tracking feature is planned for the next update` と言い、機能は現在のアップデートには含まれておらず、次のアップデートで追加されると説明しています。

これにより、機能のタイミングに関する混乱が解消されます。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
