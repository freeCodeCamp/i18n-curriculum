---
id: 679afc19cfcee1abd9e60ce2
title: タスク 61
challengeType: 19
dashedName: task-61
lang: en-US
---

<!-- (Audio) Brian: If people don't feel valued, they might lose motivation, right? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

チーム内で意見が合わない人の話を聞かないと、ブライアン は何が起こると考えていますか？

## --answers--

彼らはやる気を失うかもしれません。

---

彼らは意見の対立をやめるでしょう。

### --feedback--

人の意見を無視しても意見の対立はなくなりません。むしろ人々の関与が薄れるだけです。

---

彼らは自分の主張を証明するためにもっと頑張るでしょう。

### --feedback--

ブライアン は、評価されないと人がもっと頑張るとは言っていません。

---

彼らは自動的にすべてに同意するでしょう。

### --feedback--

人の話を聞かないからといって、すべてに同意するわけではありません。むしろ関与しなくなる場合があります。

## --video-solution--

1

# --explanation--

`To feel valued` は、自分の考えや努力、貢献が評価されていると感じる感覚を表しています。例えば、

`The project manager always dedicates some time during the meeting to hear what we have to say. This makes everyone in the team feel valued.` - これはプロジェクトマネージャーの態度がチームに良い結果をもたらしていることを意味します。

ブライアン が示唆しているのは、チームメンバーの意見が無視されると、彼らは重要視されていないと感じるかもしれないということです。メンバーが評価されていると感じると、より積極的に関わり、新しいアイデアを出す可能性が高まります。

一方で、自分の意見が重要でないと感じると、関与が薄れ、貢献する意欲を失い、チームワークや生産性に悪影響を及ぼすことがあります。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.54,
      "finishTimestamp": 46.1
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
      "finishTime": 4.56,
      "dialogue": {
        "text": "If people don't feel valued, they might lose motivation, right?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
