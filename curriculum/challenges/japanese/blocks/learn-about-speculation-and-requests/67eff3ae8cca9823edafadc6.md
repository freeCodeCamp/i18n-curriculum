---
id: 67eff3ae8cca9823edafadc6
title: タスク 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェイクは何について尋ねていますか？

## --answers--

アップデートが適用されたかどうか。

---

新しいセキュリティアップデートがリリースされたかどうか。

### --feedback--

ジェイクは新しいアップデートが存在するかどうかは尋ねていません。

---

誰がセキュリティアップデートの責任者か。

### --feedback--

ジェイクは特定の人物については尋ねていません。

---

セキュリティアップデートがどのように機能するか。

### --feedback--

ジェイクはジェシカがセキュリティアップデートについて知っていると想定しています。

## --video-solution--

1

# --explanation--

ジェイクは、誰かがすべてのアップデートがインストールされているか確認したか知りたいのです。

`Have you checked...?`で、ジェシカが何かを調べたか尋ねています。

`whether all security updates were applied`で、アップデートが正常にインストールされたか尋ねています。

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
      "startTimestamp": 10.52,
      "finishTimestamp": 13.02
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
      "finishTime": 3.5,
      "dialogue": {
        "text": "Have you checked whether all security updates were applied?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4
    }
  ]
}
```
