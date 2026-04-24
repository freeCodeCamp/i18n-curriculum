---
id: 67c70abfeb7c6fb8cbd3fed7
title: タスク 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。  

# --questions--

## --text--

マリアはジェームズと何について話したいですか？  

## --answers--

ボブの今週のスケジュール。  

### --feedback--

マリアはボブのスケジュールについては言及していません。  

---

彼女のボブとの最近のミーティング。  

---

将来のプロジェクトの締め切り。  

### --feedback--

マリアは締め切りについては言及しておらず、ボブとのミーティングだけを話しています。  

---

クライアントの予算リクエスト。  

### --feedback--

マリアはこの文でクライアントのリクエストについては言及していません。  

## --video-solution--

2  

# --explanation--

`Can we talk about...` は話題を紹介するために使われます。これは何か重要なことについて話をしたいと丁寧にお願いする表現です。例えば：

`Can we talk about the changes to the project timeline?` - これは話者がプロジェクトのタイムライン調整について話したいことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
