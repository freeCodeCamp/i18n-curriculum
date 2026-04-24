---
id: 67baf3ed288e8b06f4ab0dfb
title: タスク 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

この2つの単語は一緒に、同僚間の団結感や協力の気持ちを指します。最初の単語は一緒に働くグループを意味し、2つ目の単語は共有された熱意ややる気に関係しています。

---

`problem-solving`

### --feedback--  

この複合語は、チャレンジの解決策を見つけるプロセスを指します。最初の部分は修正が必要な問題を意味し、2つ目の部分は解決策を見つけることを意味する動詞です。2つの部分の間には`-`を使うことを忘れないでください。

# --explanation--

デイビッドは、オフィスで働くことが`team spirit`（同僚間のつながりや団結感）を強め、`problem-solving`（チャレンジの解決策をより効率的に見つけること）を改善すると考えています。

彼は、同じ物理的空間にいることで、従業員同士が協力し支え合うことが容易になると主張しています。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
