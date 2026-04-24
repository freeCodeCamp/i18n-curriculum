---
id: 65f6f9e9cfbda7f9c04e8af7
title: タスク 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

英語で `by the end of it` というフレーズは、あるプロセスや期間の結論や最終部分を指すためによく使われます。これは、特定の活動が完了した時点で、特定の結果や理解が得られることを意味しています。

# --questions--

## --text--

会話の中で、ブライアン は `by the end of it` で何を意味していますか？

## --answers--

調査をやめる。

### --feedback--

このフレーズは結論に達することについてであり、必ずしも活動をやめることを意味していません。

---

別の活動を始める。

### --feedback--

ブライアン は現在の調査の終わりについて話しており、新しいことを始めるわけではありません。

---

休憩を取る。

### --feedback--

このフレーズはプロセスの終わりに理解を得ることに焦点があり、休憩を取ることではありません。

---

調査の後で状況についてより明確な理解を得る。

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
