---
id: 67d3fccf15badf0cae314d1c
title: タスク 7
challengeType: 22
dashedName: task-7
lang: en-US
---

<!-- (Audio) Mark: Sure, Jessica. What do I need to do? -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. What do I BLANK to BLANK?`

## --blanks--

`need`

### --feedback--

この動詞は必要性を示し、何かが必要であることを意味します。

---

`do`

### --feedback--

この動詞は`need`の後に続き、行動について尋ねるときに使われます。

# --explanation--

`Need to`は必要な行動を尋ねるときに使われます。動詞の原形（`do`）が続きます。例えば：

- `We need to do more testing before releasing the app.` - アプリを起動する前にテストする必要があります。

- `We need to do some updates to fix the bugs.` - 問題を解決するためにシステムを更新する必要があります。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 7,
      "finishTimestamp": 9.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Sure, Jessica. What do I need to do?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
