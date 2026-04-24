---
id: 66c8fb021dcfcb767dfec33a
title: タスク16
challengeType: 19
dashedName: task-16
lang: en-US
---
<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

次のうち正しい文はどれですか？

## --answers--

彼らはこれまでにこのような問題を一度も解決したことがありません。

### --feedback--

リンダが似たような問題の経験について言及しているかどうかを考えてください。

---

彼らはすでに別のプロジェクトでこの正確な問題を解決しています。

### --feedback--

リンダがこの特定の問題の経験について話しているのか、それとも似た問題について話しているのかを考えてください。

---

彼らはこの正確な問題は解決していませんが、似た問題は以前に解決したことがあります。

---

彼らはこの問題を何度も解決しています。

### --feedback--

リンダがこの正確な問題を解決したと言っているのか、似た問題を解決したと言っているのかを考えてください。
  
## --video-solution--

3

# --explanation--

正しい答えを見つけるには、リンダが`exact issue`か`similar issues`のどちらを解決したと言っているかに注目してください。

リンダはこの正確な問題はまだ解決していないと明言していますが、過去に似た問題は解決したことがあるとも言っています。

正しい答えは、このバランスを示し、正確な問題はないが関連する問題の経験はあることを認めるものです。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
