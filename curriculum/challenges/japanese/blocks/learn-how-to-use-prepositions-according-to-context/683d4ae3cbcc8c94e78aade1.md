---
id: 683d4ae3cbcc8c94e78aade1
title: タスク 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ボブは何を説明していますか？

## --answers--

非常口が塞がれていること。

### --feedback--

ボブは出口が塞がれているとは言っていません。場所について話しています。

---

裏口の鍵を新しくする必要があること。

### --feedback--

ボブは鍵や裏口の修理については何も言っていません。

---

サーバールームを掃除する必要があること。

### --feedback--

ボブの発言には掃除についての言及はありません。

---

何かが非常口の近くにあること。

## --video-solution--

4

# --explanation--

ボブは `Exactly. It's in the back, next to the emergency exit` と言っています。これは何かの場所を非常口のすぐそばであると確認していることを意味します。

修理や掃除、問題については話していません。

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
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
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
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
