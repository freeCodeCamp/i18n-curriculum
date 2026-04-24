---
id: 67ee802cf777fd1dcdeac13a
title: タスク19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ソフィーはどんな要件について話していますか？

## --answers--

マークは不要なコード行を削除するべきです。

### --feedback--

ソフィーはコードの削除については話していません。

---

マークはコードを完全に書き直すべきです。

### --feedback--

ソフィーはコード全体の書き直しを提案していません。

---

マークはループの使用を避けるべきです。

### --feedback--

ソフィーはループの使用を避けることについては何も言っていません。

---

マークはコードにメモを使うべきです。

## --video-solution--

4

# --explanation--

`comment`はコード内の注釈で、コードの動作を説明するのに役立ちます。例えば：

- `I added a comment to explain why this loop is necessary.` - あるループを使う理由を説明するコメントを書きました。

- `You can use comments to leave notes about issues that need fixing later.` - コメントは、修正や改善が必要な点を思い出すためにコード内に追加できます。

コメントは他の人がコードを理解するのを助け、後でコードをレビューするときに重要なポイントを思い出させてくれます。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
