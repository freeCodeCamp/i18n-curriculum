---
id: 66df6aad5cfef4692e2e2a5a
title: タスク 74
challengeType: 22
dashedName: task-74
lang: en-US
---
<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

2つの動作が同時に起こっていることや、1つの動作が別の動作に依存していることを示す言葉です。

---

`more`

### --feedback--

より多い量や数を示す言葉です。

---

`users`

### --feedback--

更新されたインターフェースを操作している人々を指す言葉です。

---

`navigate`

### --feedback--

ウェブサイトやアプリなどの中を移動することを意味する言葉です。

# --explanation--

`As` は「～している間」や「～するとき」を意味し、ある動作が別の動作の最中に起こることを示すのに使えます。例えば：

- `As I was walking home, they called me.` - 彼らはあなたが家に歩いている間に電話をかけました。

- `You will get better at coding as you practice more.` - 練習すればするほど上達します。

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
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
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
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
