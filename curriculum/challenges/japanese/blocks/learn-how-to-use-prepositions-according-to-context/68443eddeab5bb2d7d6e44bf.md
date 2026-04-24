---
id: 68443eddeab5bb2d7d6e44bf
title: タスク 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

この2語のフレーズは、何かを使えるように準備または手配することを意味します。

---

`break room`

### --feedback--

この2語のフレーズは、従業員が仕事から離れてくつろげる場所を指します。

# --explanation--

`Set up` は、何かを使えるように準備または手配することを意味します。例えば：

`We need to set up the new computers before the meeting.` – これはそれらを準備することを意味します。

`Break room` は、オフィス内で人々が休憩したり、食事をしたり、くつろいだりする場所です。例えば：

`Let's meet in the break room after lunch.` – これは休憩用のスペースを指します。

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
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
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
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
