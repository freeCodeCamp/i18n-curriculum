---
id: 66db5c0fafea6d794c92ccea
title: タスク 58
challengeType: 19
dashedName: task-58
lang: en-US
---
<!--
AUDIO REFERENCE:
Linda: Yes. The navigation bar and footer adjustments have already made a big difference.
-->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

更新された要素はどのように機能していますか？

## --answers--

すべてのデバイスで正しく動作しておらず、これが大きな違いを生んでいます。

### --feedback--

リンダは更新に関して問題を言及していません。

---

正しく動作するためにさらに調整が必要で、これが何の違いも生んでいません。

### --feedback--

リンダはさらなる調整の必要性を言及していません。

---

ユーザーインターフェースに新たな問題を引き起こしており、これが大きな違いを生んでいます。

### --feedback--

リンダは更新が新たな問題を引き起こしたとは言っていません。

---

うまく機能しており、調整が大きな違いを生んでいます。

## --video-solution--

4

# --explanation--

何かがうまく機能しているかどうかを知るには、良い結果や改善を示す言葉やフレーズを探してください。

リンダは `have already made a big difference` というフレーズを使っています。

`Made a big difference` は重要または目立つ変化を示唆します。何かが肯定的な文脈で `made a big difference` を持つ場合、それは通常、その変化が役立つか効果的であることを意味します。

つまり、リンダの返答は更新された要素がうまく機能しており、状況が改善されたことを示しています。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.66,
      "finishTimestamp": 19.46
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
      "finishTime": 3.16,
      "dialogue": {
        "text": "Yes, the navigation bar and footer adjustments",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 3.16,
      "finishTime": 4.6,
      "dialogue": {
        "text": "have already made a big difference,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 5.1
    }
  ]
}
```
