---
id: 66bbba46fff0ef451b701bcd
title: タスク 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

サラはトムと話す時間がありますか？

## --answers--

いいえ、彼女は忙しくて彼の問題を知りたくありません。

### --feedback--

サラは忙しくないと言っています。

---

はい、彼女は時間があり、問題が何か知りたがっています。

---

いいえ、今は話せません。彼女自身の問題を抱えています。

### --feedback--

サラは忙しくないと言っています。

---

はい、でも自分の問題があるので少しだけです。

### --feedback--

サラは時間を制限していません。単に忙しくないと言っています。

## --video-solution--

2

# --explanation--

サラは直接「自由です」と言う代わりに、否定形の`I'm not busy`を使って、助ける時間があることを強調しています。

これは英語で利用可能であることを丁寧かつ間接的に伝える方法で、会話をより配慮あるものにします。

続く彼女の文、`What's the problem?`は、トムに問題を説明するよう促して、助ける意志を示しています。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
