---
id: 67c03f86bccfec0be6de656b
title: タスク 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

アンナは何を伝えていますか？

## --answers--

彼女はボブに完全に反対し、彼の懸念を否定しています。

### --feedback--

アンナはボブの意見を認めた上で、自分の考えを述べています。

---

彼女はボブの懸念を理解していますが、それでも柔軟性の方が良いと考えています。

---

彼女はボブの懸念を理解していません。

### --feedback--

アンナはボブの主張を理解しています。

---

彼女はボブに同意し、考えを変えました。

### --feedback--

アンナはボブに完全には同意していません。

## --video-solution--

2

# --explanation--

アンナは`I see your point, but`を使って、ボブの懸念を理解しつつも異なる意見を示しています。

彼女は、1つのカテゴリーに固執するよりも柔軟性の方が良い解決策だと考えています。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
