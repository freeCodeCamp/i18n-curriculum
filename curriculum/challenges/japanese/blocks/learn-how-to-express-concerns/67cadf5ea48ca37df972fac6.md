---
id: 67cadf5ea48ca37df972fac6
title: タスク124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。  

# --questions--

## --text--

マリアがチームからの最も重要なリクエストとして挙げているのは何ですか？  

## --answers--

彼らはもっと助けが必要です。  

---

彼らは締め切りを延ばしてほしいです。  

### --feedback--

マリアは締め切りの延長については言及していません。

---

彼らはタスクの数を減らしたいと思っています。  

### --feedback--

マリアはタスクの数を減らすことについては言及していません。  

---

彼らはもっとミーティングを増やしてほしいと言っています。  

### --feedback--

マリアは追加のミーティングについては言及していません。

## --video-solution--

1  

# --explanation--

`First` は、重要度や時間の順に行動を番号付けしたいときに使います。この場合、マリアはチームが必要としていることを挙げており、最も重要なリクエスト（もっとサポートが必要）から始めています。別の例：

`First, we should analyze the problem. Then, we can discuss solutions.` - これは問題の分析が他の何よりも先に来ることを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
