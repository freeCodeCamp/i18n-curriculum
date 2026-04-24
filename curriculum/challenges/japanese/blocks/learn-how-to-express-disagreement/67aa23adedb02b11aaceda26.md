---
id: 67aa23adedb02b11aaceda26
title: タスク8
challengeType: 19
dashedName: task-8
lang: en-US
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

アンナによると、何がより重要ですか？

## --answers--

コンピューターのアップグレード。

---

新しいオフィス家具の購入。

### --feedback--

アンナは家具が重要だと認めていますが、多くの人が別のものが必要だと言っていると述べています。

---

リモートワーク手当の増額。

### --feedback--

アンナは手当の増額については話しておらず、人々がそれをどう使いたいかについて話しています。

---

調査質問の変更。

### --feedback--

アンナは調査質問については何も言及していません。

## --video-solution--

1

# --explanation--

`computer upgrade`とは、メモリ（RAM）を増やしたり、より高速なプロセッサーやより良い画面に交換したりすることでコンピューターを改善することを意味します。例えば：

- `I need a computer upgrade to run the latest software.` - 話者の現在のコンピューターは十分な性能がないため、より良いものが必要です。

- `After the computer upgrade, everything runs much faster.` - コンポーネントを更新または交換した後、システムの性能が向上しました。

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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 12.06,
      "finishTimestamp": 15.8
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "While furniture is important, many people mentioned that their computers need upgrades.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
