---
id: 67dbf936fe4d33ccbccae40d
title: タスク 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

これは何かが起きたことを謝罪するときに使います。大文字にするのを忘れないでください。

# --explanation--

`To be sorry for something` は、迷惑や不都合をかけたかもしれない行動を謝るときに使います。例えば：

`I'm sorry for being late to the meeting.` - これは話者が遅刻したことを後悔し、謝っている意味です。`being` は `-ing` 形で、`for`（前置詞）の直後にあることに注目してください。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.55
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 3.55,
      "dialogue": {
        "text": "Hey, James. Sorry for the interruption earlier.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 4.05
    }
  ]
}
```
