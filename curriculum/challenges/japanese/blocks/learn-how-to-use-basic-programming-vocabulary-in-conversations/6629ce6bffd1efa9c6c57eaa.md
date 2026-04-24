---
id: 6629ce6bffd1efa9c6c57eaa
title: タスク 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

フレーズ `how's it going?` は、相手の調子や近況を尋ねる一般的な表現です。親しみを込めた挨拶としてよく使われます。

例えば、久しぶりに友達に会ったとき、`Hey, how's it going? I haven't seen you for a while!` と言うことがあります。これはカジュアルに相手の近況を尋ねる方法です。もし新しい仕事のことなど特定のことを聞きたい場合は、`How's it going with your new job?` と言うことができます。

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

この短縮形は、カジュアルな挨拶でよく使われます。最初の単語は大文字にしてください。

---

`going`

### --feedback--

この単語は、相手の一般的な状態を尋ねるカジュアルな挨拶を完成させます。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
