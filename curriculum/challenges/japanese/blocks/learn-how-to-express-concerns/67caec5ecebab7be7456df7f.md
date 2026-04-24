---
id: 67caec5ecebab7be7456df7f
title: タスク130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。  

# --questions--

## --text--

チームが指摘した他の問題は何ですか？

## --answers--

更新が早すぎること。

### --feedback--

マリアはまったく逆のことを言っています。

---

コミュニケーションをあまり取りたくないこと。

### --feedback--

マリアはチームのコミュニケーション意欲については言及していません。  

---

変更についてタイムリーに聞けないことが多い。

---

コミュニケーションに関わる人が多すぎると思っていること。

### --feedback--

マリアは関わる人数については言及していません。

## --video-solution--

3  

# --explanation--

`isn't great`と言うと、否定的なメッセージを和らげる表現になります（例えば`it is bad`と言う代わりに）。批判をより丁寧で間接的に聞こえるようにします。以下の文を見てみましょう：

- `The design is bad.` - これは強い否定的な表現で、しばしば失礼に聞こえます。

- `The design isn't great. Maybe we can improve it.` - これを言うと、きつくなく建設的に聞こえます。

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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
