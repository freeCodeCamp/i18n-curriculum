---
id: 67a9efcabf0dac0baa0ec536
title: 작업 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

사람들이 집에서 일하는 공간을 개선하는 데 필요한 것이 무엇인지 생각해 보세요. 여기에는 책상, 의자, 선반 등이 포함됩니다.

# --explanation--

`Office furniture`는 책상, 의자, 선반 등 작업 공간에서 사용하는 물건을 가리킵니다.

이 대화에서 Bob은 직원들이 원격 근무 수당을 어떻게 쓰는지 이야기하고 있습니다. 집에서 일하려면 편안하고 생산적인 환경이 필요하기 때문에 많은 사람이 인체공학적 의자나 넓은 책상 같은 사무용 가구를 사는 데 수당을 사용합니다.

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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.46,
      "finishTimestamp": 8
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
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
