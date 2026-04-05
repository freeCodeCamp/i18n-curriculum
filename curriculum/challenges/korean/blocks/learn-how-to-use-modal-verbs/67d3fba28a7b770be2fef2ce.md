---
id: 67d3fba28a7b770be2fef2ce
title: 작업 6
challengeType: 19
dashedName: task-6
lang: en-US
---

<!-- (Audio) Jessica: Hi Mark, we need to talk about security protocols for the new project. There are a few things you must do to ensure compliance. -->

<!-- SPEAKING -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Mark는 Jessica와 이야기하는 것을 꺼리지 않고 무엇을 해야 하는지 알고 싶어 합니다. Mark가 뭐라고 말할까요?

## --answers--

`Sorry, Jessica. I'm too busy right now.`

### --audio-id--

EN415e8cd4

### --feedback--

이 응답은 Mark가 이야기하려는 의지와 맞지 않습니다.

---

`Sure, Jessica. What do I need to do?`

### --audio-id--

EN61f614de

## --video-solution--

2

# --explanation--

정답은 Mark가 이야기할 의지가 있고 필요한 단계를 알고 싶어 한다는 점을 보여줍니다.

`Sure, Jessica`는 동의와 대화에 대한 개방성을 표현합니다.

`What do I need to do?`는 Mark가 지시를 요청하는 것으로, Jessica가 준수 보장을 위해 해야 할 일에 대해 말한 내용과 일치합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "Hi, Mark. We need to talk about security protocols for the new project.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 5.22,
      "finishTime": 7.62,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.12
    }
  ]
}
```
