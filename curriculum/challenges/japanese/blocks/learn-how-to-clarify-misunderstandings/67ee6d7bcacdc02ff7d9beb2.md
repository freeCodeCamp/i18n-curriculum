---
id: 67ee6d7bcacdc02ff7d9beb2
title: タスク 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

この単語は、何かが存在していることや、何かが起こっていることを表すときに使います。`there is` の短縮形です。

---

`problem`

### --feedback--

この単語は、解決や修正が必要な問題や困難を指します。

---

`with`

### --feedback--

この前置詞は、2つのものの関係やつながりを示します。

---

`event handling`

### --feedback--

この2語のフレーズは、ユーザーが行うクリックやキーストロークなどの操作に対して、ソフトウェアやウェブサイトがどのように反応するかを指します。2語目は`-ing`で終わります。

# --explanation--

`There's a problem with` は、何かが正しく動作していないことを表すときに使います。特定のものに関する問題や困難があることを意味します。例えば：

`There's a problem with the network.` – これはネットワークが正しく機能していないことを意味します。

`Event handling` は、プログラムやウェブサイトがクリックやキーボードの押下、マウスの動きなどのユーザーの操作をどのように管理しているかを指します。例えば：

`There's an issue with event handling.` - これはソフトウェアがユーザーの操作に正しく反応していないことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
