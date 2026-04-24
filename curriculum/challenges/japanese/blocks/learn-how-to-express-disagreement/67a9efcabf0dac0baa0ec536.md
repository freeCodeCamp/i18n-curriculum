---
id: 67a9efcabf0dac0baa0ec536
title: タスク 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

人々が自宅の作業環境を改善するために必要なものについて考えてみてください。これには机、椅子、棚などが含まれます。

# --explanation--

`Office furniture` は、机、椅子、棚など作業空間で使うアイテムを指します。

この会話では、ボブが従業員がリモートワーク手当をどのように使うかについて話しています。自宅で快適かつ生産的に働くために、多くの人がエルゴノミクスチェアや広い机などのオフィス家具を購入するために手当を使っています。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.46,
      "finishTimestamp": 8
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
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
