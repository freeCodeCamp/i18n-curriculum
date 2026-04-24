---
id: 679cebb26c5d61aaed58b4db
title: タスク 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェームズは最新のアップデートの問題について何を知っていますか？

## --answers--

彼は問題が何かを正確に知っています。

### --feedback--

ジェームズは明確に何も聞いていないと言っています。

---

彼はそのことについて何も知りません。

---

彼はすでにクライアントと話しました。

### --feedback--

ジェームズはクライアントと話したとは言っていません。

---

彼は問題についてメールを受け取りました。

### --feedback--

ジェームズは何も聞いていないと言っています。

## --video-solution--

2

# --explanation--

助動詞を使った短い返答は、質問の助動詞を繰り返して肯定や否定を表します。この場合、マリアは`Did you hear anything?`と尋ね、ジェームズは`No, I didn't.`と答えています。単に`No.`と言う代わりにです。ほかの例をいくつか挙げます：

- `Are you coming to the meeting?` → `Yes, I am.`  

- `Have they finished the report?` → `No, they haven't.`  

- `Will she be here on time?` → `Yes, she will.`  

短い返答は、自然で完全なレスポンスに聞こえ、全文の繰り返しを避けられます。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      },
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
