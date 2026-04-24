---
id: 67325f4cff0ac10ffe3e5bec
title: タスク114
challengeType: 19
dashedName: task-114
lang: en-US
---

<!-- (audio) James: It's interesting to think about it. I used to just write code without thinking much about the end user. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェームズは自分のコーディングの取り組みについて何を説明していますか？

## --answers--

過去に持っていた習慣。

---

将来やろうと考えていること。

### --feedback--

ジェームズは未来の計画について話しているのではなく、以前にしていたことを振り返っています。

---

今も続けている習慣。

### --feedback--

ジェームズは`used to`という表現を使っており、過去にしていたことを説明しているので、現在のことではありません。

---

一度もしたことがないプロセス。

### --feedback--

ジェームズはかつて持っていた習慣について話しているので、一度もしたことがないわけではありません。

## --video-solution--

1

# --explanation--

ジェームズは`I used to just write code without thinking much about the end user.`と言っています。

`Used to`は、過去の習慣や現在は当てはまらない行動を示しています。

この文から、彼は以前はエンドユーザーのことをあまり考えずにコードを書いていたが、その後アプローチを変えたことがわかります。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
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
      "filename": "B1_3-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 34.44
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.84,
      "dialogue": {
        "text": "It's interesting to think about it.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 2.92,
      "finishTime": 6.16,
      "dialogue": {
        "text": "I used to just write code without thinking much about the end user,",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.66
    }
  ]
}
```
