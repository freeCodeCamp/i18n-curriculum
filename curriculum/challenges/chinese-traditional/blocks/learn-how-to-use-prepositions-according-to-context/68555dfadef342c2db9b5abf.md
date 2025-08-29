---
id: 68555dfadef342c2db9b5abf
title: Task 83
challengeType: 22
dashedName: task-83
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

請聽音頻，並完成下面的填空。

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

This two-word phrase means introduced or caused something to appear or become an issue. The first word is the past tense form of `bring`.

---

`unexpected`

### --反饋--

This word means something happened that was not planned or predicted. It ends with `-ed`.

# --explanation--

`Brought up` means caused something to appear, especially a problem or issue. Here, `brought` is the past tense form of `bring`. 例如：

`The new feature brought up several bugs.` – This means the feature caused the bugs to be noticed.

`Unexpected` describes something that happens without warning or planning. 例如：

`We had an unexpected delay due to server issues.` – This means the delay was not anticipated.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
