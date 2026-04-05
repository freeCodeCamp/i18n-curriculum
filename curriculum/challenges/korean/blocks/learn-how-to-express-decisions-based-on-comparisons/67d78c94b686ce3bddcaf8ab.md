---
id: 67d78c94b686ce3bddcaf8ab
title: 작업 117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

이 세 단어는 함께 작업을 완료하는 데 필요한 시간을 줄인다는 뜻입니다.  

---

`timelines`

### --feedback--

복수형으로 프로젝트 완료를 위한 일정이나 마감일을 의미합니다.  

# --explanation--

`Save us time`는 어떤 일을 완료하는 데 필요한 시간을 줄여 과정을 더 효율적으로 만든다는 뜻입니다. 예를 들어:

`Using automation tools can save us time on repetitive tasks.` – 자동화 도구가 작업을 더 빠르게 완료하는 데 도움이 된다는 의미입니다.  

`Timelines`는 프로젝트의 각 부분을 언제 완료해야 하는지 보여주는 일정이나 마감일을 의미합니다. 예를 들어:

`We need to adjust our timelines to finish the project on schedule.` – 프로젝트가 제시간에 완료되도록 마감일을 변경한다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 32.34,
      "finishTimestamp": 37.52
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
      "finishTime": 6.18,
      "dialogue": {
        "text": "It could save us time and resources. What about timelines? Which option is faster?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.68
    }
  ]
}
```
