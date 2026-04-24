---
id: 679d2dc229e6ceeadff4ed48
title: タスク 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

この単語は、前の文で使われた動詞 `update` を繰り返さないために使われています。

---

`delay`

### --feedback--

この単語は、予定より遅らせる、延期するという意味です。

# --explanation--

ジェームズは `If we update the software, it might delay other projects.` と言う代わりに `If we do` と短く言っています。単語 `do` は、前の文で使われた動詞やフレーズの繰り返しを避けるためによく使われます。例えば：

`She wants to join the meeting, and if she does, she'll need the link.` - `if she joins the meeting` と言う代わりに `does` を使うことで繰り返しを避けられます。

`To delay` は、予定より遅らせるという意味です。例えば：

`The flight was delayed due to bad weather.` - これは飛行機が延期されて、予定通りに出発しなかったことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
