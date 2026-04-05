---
id: 672e1fff03af3aeed5d7a84b
title: 작업 117
challengeType: 19
dashedName: task-117
lang: en-US
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Anna는 James의 아이디어에 대해 어떻게 생각하며, 무엇을 제안하나요?

## --answers--

그녀는 James의 아이디어에 동의하지 않고 새로운 접근 방식을 시작하자고 제안합니다.

### --feedback--

Anna는 James와 동의하지 않고 새로 시작하자고 하지 않으며, 진행 상황을 계속 확인하고 싶어 합니다.

---

그녀는 James의 아이디어가 혼란스럽다고 생각하며 접근성 목표에만 집중하자고 제안합니다.

### --feedback--

Anna는 James의 아이디어가 혼란스럽다고 생각하지 않으며, 동의하고 공동 목표의 진행 상황을 모니터링하고 싶어 합니다.

---

그녀는 James의 아이디어에 동의하며 진행 상황을 모니터링하기 위해 연락을 유지하자고 제안합니다.

---

그녀는 James의 아이디어가 불필요하다고 생각하며 프로젝트를 중단하자고 제안합니다.

### --feedback--

Anna는 중단을 제안하지 않으며, James의 아이디어를 지지하고 계속 소식을 듣고 싶어 합니다.

## --video-solution--

3

# --explanation--

Anna는 `That makes sense`라고 말하며 James의 접근 방식에 동의함을 나타내, 그의 아이디어를 이해하고 지지함을 보여줍니다. 또한 `keeping in touch to monitor progress`을 제안하여 공동 목표를 달성하기 위해 진행 상황을 계속 확인하고 싶어 함을 나타냅니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
