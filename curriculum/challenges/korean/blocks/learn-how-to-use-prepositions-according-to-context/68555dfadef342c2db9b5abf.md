---
id: 68555dfadef342c2db9b5abf
title: 작업 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

이 두 단어 구는 무언가를 도입하거나 문제로 나타나게 했다는 뜻입니다. 첫 번째 단어는 `bring`의 과거형입니다.

---

`unexpected`

### --feedback--

이 단어는 계획하거나 예측하지 못한 일이 발생했다는 뜻입니다. `-ed`로 끝납니다.

# --explanation--

`Brought up`는 특히 문제나 이슈를 발생시켰다는 뜻입니다. 여기서 `brought`는 `bring`의 과거형입니다. 예를 들어:

`The new feature brought up several bugs.` – 이 표현은 기능이 버그를 발생시켰다는 뜻입니다.

`Unexpected`는 경고나 계획 없이 발생한 일을 뜻합니다. 예를 들어:

`We had an unexpected delay due to server issues.` – 이 표현은 지연이 예상치 못했다는 뜻입니다.

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
