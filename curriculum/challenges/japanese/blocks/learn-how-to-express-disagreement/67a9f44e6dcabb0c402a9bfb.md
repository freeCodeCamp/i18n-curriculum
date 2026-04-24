---
id: 67a9f44e6dcabb0c402a9bfb
title: タスク 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ボブは何を知りたいと思っていますか？

## --answers--

従業員がすでにオフィス家具を購入したかどうか。

### --feedback--

ボブは購入の確認を求めていません。

---

オフィス家具の費用がどれくらいかかるか。

### --feedback--

ボブは価格について尋ねていません。

---

会社が手当を増やすかどうか。

### --feedback--

ボブは手当の変更について話していません。

---

アンナが手当をオフィス家具に使うことを良いアイデアだと思っているかどうか。

## --video-solution--

4

# --explanation--

ボブは、`Do you think that's a good idea?` これは提案や計画について誰かの意見を尋ねる方法です。意見を尋ねる他の表現は以下の通りです：

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

この会話では、ボブは従業員がリモートワーク手当をオフィス家具に使うことについて話しています。自分の意見を述べる代わりに、アンナがどう思うかを尋ねています。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
