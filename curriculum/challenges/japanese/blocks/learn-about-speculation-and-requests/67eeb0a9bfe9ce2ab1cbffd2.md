---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: タスク 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

マークは他に何をすべきでしたか？

## --answers--

彼はコード全体を書き直すべきでした。

### --feedback--

マークはすべてを書き直す必要はありませんでした。

---

彼は最初にコードをテストするべきでした。

---

彼はすべてのコメントを削除するべきでした。

### --feedback--

コメントは役に立つので削除すべきではありません。

---

彼はテストに時間がかかるのでスキップするべきでした。

### --feedback--

テストはコードを提出する前の重要なステップです。

## --video-solution--

2

# --explanation--

A `test suite` はプログラムが正しく動作するかを確認するためのテストの集合です。例えば：

- `We ran the test suite to check if the app works properly.` - チームはアプリが期待通りに動作することを確認するためにすべてのテストを実行しました。

- `We need to add more tests to the test suite to check for edge cases.` - チームはすべての可能な状況をカバーするためにもっと多くのテストを含めるべきです。

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
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
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
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
