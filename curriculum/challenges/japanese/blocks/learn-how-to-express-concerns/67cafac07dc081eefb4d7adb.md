---
id: 67cafac07dc081eefb4d7adb
title: タスク135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。  

# --questions--

## --text--

週次ミーティングを行う目的は何ですか？

## --answers--

チームのタスク数を減らすため。

### --feedback--

ボブはタスクを減らすことについては言及していません。  

---

プロジェクトに変更を加えないようにするため。

### --feedback--

ボブは変更を避けることを提案していません。

---

明確な目的なしにミーティングの回数を増やすため。

### --feedback--

ボブは具体的な目的を持っていると述べています。

---

全員がプロジェクトの最新情報を把握できるようにするため。

## --video-solution--

4  

# --explanation--

`To keep someone in the loop` は、重要な更新や決定事項について情報を共有し続けることを意味します。例えば：

`Please keep me in the loop about any changes to the schedule.` - これは、何か変更があればスピーカーに知らせてほしいという意味です。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
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
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
