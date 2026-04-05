---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: 작업 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Mark가 무엇을 더 했어야 할까요?

## --answers--

그는 전체 코드를 다시 작성했어야 했습니다.

### --feedback--

Mark는 모든 코드를 다시 작성할 필요가 없었습니다.

---

그는 먼저 코드를 테스트했어야 했습니다.

---

그는 모든 주석을 제거했어야 했습니다.

### --feedback--

주석은 유용하므로 제거하면 안 됩니다.

---

그는 테스트가 너무 오래 걸리기 때문에 테스트를 건너뛰었어야 했습니다.

### --feedback--

테스트는 코드를 제출하기 전에 중요한 단계입니다.

## --video-solution--

2

# --explanation--

`test suite`는 프로그램이 제대로 작동하는지 확인하는 테스트 모음입니다. 예를 들어:

- `We ran the test suite to check if the app works properly.` - 팀은 앱이 예상대로 작동하는지 확인하기 위해 모든 테스트를 실행했습니다.

- `We need to add more tests to the test suite to check for edge cases.` - 팀은 모든 가능한 상황을 포괄하기 위해 더 많은 테스트를 포함해야 합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
