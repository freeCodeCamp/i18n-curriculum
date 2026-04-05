---
id: 679afc19cfcee1abd9e60ce2
title: 작업 61
challengeType: 19
dashedName: task-61
lang: en-US
---

<!-- (Audio) Brian: If people don't feel valued, they might lose motivation, right? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Brian은 팀 내에서 반대하는 사람들의 의견을 듣지 않으면 어떤 일이 일어날 수 있다고 생각하나요?

## --answers--

사람들이 동기를 잃을 수 있습니다.

---

그들은 더 이상 반대하지 않을 것입니다.

### --feedback--

사람들의 의견을 무시한다고 해서 반대가 멈추는 것이 아니라, 오히려 사람들이 덜 참여하게 될 수 있습니다.

---

그들은 자신의 주장을 증명하기 위해 더 열심히 일할 것입니다.

### --feedback--

Brian은 소중하게 여기지 않는다고 해서 사람들이 더 열심히 일한다고 말하지 않습니다.

---

그들은 자동으로 모든 것에 동의할 것입니다.

### --feedback--

사람들의 말을 듣지 않는다고 해서 모두 동의하는 것이 아니라, 오히려 참여를 멀리할 수 있습니다.

## --video-solution--

1

# --explanation--

`To feel valued`는 자신의 생각, 노력, 기여가 인정받는다고 느낄 때 경험하는 감정을 설명합니다. 예를 들어:

`The project manager always dedicates some time during the meeting to hear what we have to say. This makes everyone in the team feel valued.` - 이것은 프로젝트 관리자의 태도가 팀에 좋은 결과를 가져오고 있다는 의미입니다.

Brian이 제안하는 것은 팀원들의 의견이 무시되면 그들이 중요하지 않다고 느낄 수 있다는 점입니다. 팀원들이 소중하게 여겨지면 더 적극적으로 참여하고 새로운 아이디어를 기여할 가능성이 높아집니다.

반면, 자신의 의견이 중요하지 않다고 느끼면 참여를 멀리하고 기여할 동기를 잃어 전체 팀워크와 생산성에 해를 끼칠 수 있습니다.

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
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.54,
      "finishTimestamp": 46.1
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
      "finishTime": 4.56,
      "dialogue": {
        "text": "If people don't feel valued, they might lose motivation, right?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
