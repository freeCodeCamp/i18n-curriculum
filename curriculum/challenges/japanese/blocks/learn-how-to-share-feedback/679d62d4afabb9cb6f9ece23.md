---
id: 679d62d4afabb9cb6f9ece23
title: タスク 106
challengeType: 19
dashedName: task-106
lang: en-US
---

<!-- (Audio) Maria: If we rush, it could lead to more problems. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

マリアは何を避けたいと思っていて、その理由は何ですか？

## --answers--

問題を修正することを避けたい。

### --feedback--

マリアは問題を修正すべきでないとは言っていません。

---

助けを求めることを避けたい。

### --feedback--

マリアは助けを求めることについて言及していません。

---

急ぐことを避けたい、なぜならそれがさらなる問題を引き起こす可能性があるから。

---

ソフトウェアの更新を避けたい。

### --feedback--

マリアは更新を避けるべきとは言っていません。

## --video-solution--

3

# --explanation--

`To lead to problems` は、ある行動や決定が困難や悪影響をもたらす可能性があることを意味します。例えば：

`Skipping the testing phase can lead to serious problems in the software.` - これは、適切にテストしないと重大な技術的問題が起こるかもしれないという意味です。

この会話では、マリアは急ぐことで追加の問題が生じることを懸念しています。

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
      "startTimestamp": 47.08,
      "finishTimestamp": 49
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "If we rush, it could lead to more problems.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.42
    }
  ]
}
```
