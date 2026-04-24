---
id: 679d3cfdaca2eb81f8d81cf7
title: タスク 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

マリアはジェームズに何をしてほしいと頼んでいますか？

## --answers--

問題をすぐに修正すること。

### --feedback--

マリアはジェームズにすぐに問題を修正するよう頼んでいません。

---

問題をクライアントに報告すること。

### --feedback--

マリアはクライアントに報告することには触れていません。

---

問題を調査すること。

---

今は問題を無視すること。

### --feedback--

マリアはジェームズに問題を無視するよう頼んでいません。

## --video-solution--

3

# --explanation--

`Can` は、誰かに何かをしてほしいと丁寧に頼むときによく使われる表現です。例えば、

`Can you send me the report by noon?` - これは誰かにレポートを送るよう丁寧に頼む言い方です。

この会話では、マリアがジェームズに問題を調査するよう頼んでいます。

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
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
