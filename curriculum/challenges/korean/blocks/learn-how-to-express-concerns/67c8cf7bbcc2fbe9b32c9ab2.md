---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: 작업 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.  

# --questions--

## --text--

Maria는 James에게서 받은 주석을 어떻게 할까요?  

## --answers--

그녀는 무시할 것입니다.  

### --feedback--

Maria는 James의 의견을 인정하고 행동할 계획입니다.

---

그녀는 팀에게 소통에 대해 걱정하지 말라고 말할 것입니다.

### --feedback--

Maria는 우려를 무시하는 것이 아니라 소통을 개선하려고 합니다. 

---

그녀는 팀의 점검 회의를 취소할 것입니다.

### --feedback--

Maria는 점검 회의를 취소하겠다고 말하지 않았습니다.

---

그녀는 소통을 개선하기 위해 점검 회의를 더 자주 하자고 제안할 것입니다.

## --video-solution--

4  

# --explanation--

동사 `suggest`를 사용할 때는 부정사 대신 `-ing` 형태의 동사를 사용하세요. 예를 들어:

- `She suggested taking a break.` - 이는 휴식을 취하자는 제안임을 의미합니다.

- `He suggested starting the meeting earlier to avoid delays.` - 이는 회의를 더 일찍 시작하자고 제안한 것입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
