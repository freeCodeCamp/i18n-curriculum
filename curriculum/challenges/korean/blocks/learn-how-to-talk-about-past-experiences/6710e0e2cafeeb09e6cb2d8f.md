---
id: 6710e0e2cafeeb09e6cb2d8f
title: 작업 55
challengeType: 22
dashedName: task-55
lang: en-US
---

<!-- (Audio) Linda: Well, during the project, I was working closely with the development team, and we were constantly updating the user interface based on user feedback. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Well, during the project, I BLANK BLANK closely with the development team, and we BLANK constantly BLANK the user interface based on user feedback.`

## --blanks--

`was`

### --feedback--

이것은 단수 1인칭 형태로 `Past Continuous`를 만들 때 사용하는 조동사입니다.

---

`working`

### --feedback--

이것은 `Past Continuous`에서 노동하는 행위를 나타내는 주요 동사입니다.

---

`were`

### --feedback--

이것은 복수 1인칭 형태로 `Past Continuous`를 만들 때 사용하는 조동사입니다.

---

`updating`

### --feedback--

이것은 `Past Continuous`에서 무언가를 개선하거나 현대화하는 진행 중인 동작을 나타내는 주요 동사입니다.

# --explanation--

`Past Continuous` 시제는 과거 특정 시점에 진행 중이던 동작을 설명할 때 사용합니다. 두 개의 `Past Continuous` 문장이 함께 쓰일 때, 보통 동시에 일어나는 동작이나 서로 병행되는 동작을 나타냅니다.

이 문장에서 Linda는 자신과 팀이 프로젝트 내내 계속해서 일하고 사용자 인터페이스를 업데이트하고 있었음을 설명합니다. 이는 과거에 동시에 일어난 두 동작을 보여 주며 서로에 대한 배경이나 맥락을 제공합니다. 예를 들어:

`While I was preparing the report, they were testing the new features.` - 이것은 내가 보고서를 준비하는 동작과 새로운 기능을 테스트하는 동작이 동시에 일어났음을 의미합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_2-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.08,
      "finishTimestamp": 17.34
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.36,
      "dialogue": {
        "text": "Well, during the project, I was working closely with the development team,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.5,
      "finishTime": 8.26,
      "dialogue": {
        "text": "and we were constantly updating the user interface based on user feedback.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 8.76
    }
  ]
}
```
