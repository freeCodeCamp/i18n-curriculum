---
id: 68443eddeab5bb2d7d6e44bf
title: 작업 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

이 두 단어 구는 무언가를 사용하기 위해 준비하거나 정리하는 것을 의미합니다.

---

`break room`

### --feedback--

이 두 단어 구는 직원들이 업무에서 벗어나 쉴 수 있는 공간을 가리킵니다.

# --explanation--

`Set up`는 무언가를 사용하기 위해 준비하거나 정리하는 것을 의미합니다. 예를 들어:

`We need to set up the new computers before the meeting.` – 이것은 그것들을 준비한다는 뜻입니다.

`Break room`는 사람들이 쉬거나, 먹거나, 휴식을 취하는 사무실 내 공간입니다. 예를 들어:

`Let's meet in the break room after lunch.` – 이것은 휴식을 위한 공간을 의미합니다.

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
