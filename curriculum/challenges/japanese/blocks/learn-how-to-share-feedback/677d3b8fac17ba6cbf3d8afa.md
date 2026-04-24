---
id: 677d3b8fac17ba6cbf3d8afa
title: タスク 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

これは動詞 `-ing` の `say` 形で、前置詞 `by` の後に使われ、開始の方法を示します。

---

`QA`

### --feedback--

これは `Quality Assurance` を表し、製品が必要な基準を満たしているかを確認するプロセスを指します。

# --explanation--

動詞が前置詞の後に続く場合、`-ing` 形（動名詞）を使う必要があります。この文では、`saying` が前置詞 `by` の後に続き、ボブ が発言を始める方法を示しています。例えば：

`She improved her skills by practicing regularly.` - ここでは、`practicing` が前置詞 `by` の後に続き、彼女がスキルを向上させた方法を示しています。

ボブ は ジェシカ の `QA` の仕事を褒めています。`QA` は `Quality Assurance` を表します。これは、製品やサービスが特定の品質基準を満たし、正しく機能することを保証するプロセスを指します。別の例：

`The QA team identified several bugs during testing.` - これは、ソフトウェアの品質を確保する責任者がリリース前にバグを検出できたことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
