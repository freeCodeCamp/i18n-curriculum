---
id: 68feee5abac0c3186f90b3ad
title: タスク 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ワン・ファ が話している内容の正しいピンインはどれですか？

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

最初の音節の声調が音声と一致していません。

---

`mín zi`

### --feedback--

最初の音節の韻母が彼女の発音と違います。

---

`míng zhī`

### --feedback--

2番目の音節の声母が音声と異なっています。

## --video-solution--

1

# --explanation--

ワン・ファ は `míng zi` と言っています。最初の音節は鼻音の韻母 `ing` で上昇調です。2番目の音節は軽く発音される軽声の全音節です。

# --scene--

```json
{
  "setup": {
    "background": "company1-breakroom.png",
    "characters": [
      {
        "character": "Wang Hua",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 31.51,
      "finishTimestamp": 32.34
    }
  },
  "commands": [
    {
      "character": "Wang Hua",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Wang Hua",
      "startTime": 1,
      "finishTime": 1.83,
      "dialogue": {
        "text": "名字 (míng zi)",
        "align": "center"
      }
    },
    {
      "character": "Wang Hua",
      "opacity": 0,
      "startTime": 2.33
    }
  ]
}
```
