---
id: 67b5b3dfdec8df1a5f326bc0
title: タスク 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

これは強くはっきりしていないことを意味します。優しくて柔らかく、すぐには気づかないかもしれません。

---

`palette`

### --feedback--

これはデザインや作品で使われる色の範囲を指します。この場合、`color palette`はアプリやプロジェクトのデザインに選ばれた色のセットを意味します。

# --explanation--

`Subtle`は繊細で目立たないものを指します。例えば：

`The artist used subtle shades of blue in the painting.` - これはアーティストが強くなく目を引かない、淡いまたは柔らかい青の色合いを使ったことを意味します。

`Palette`はアーティストやデザイナーが使う色や素材の範囲を指します。例えば：

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` - これはデザイナーがウェブサイトのデザインに赤、オレンジ、黄色などの暖色系の色を選んだことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
