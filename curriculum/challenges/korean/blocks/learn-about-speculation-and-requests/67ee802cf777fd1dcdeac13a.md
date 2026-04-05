---
id: 67ee802cf777fd1dcdeac13a
title: 작업 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Sophie가 언급한 요구사항은 무엇인가요?

## --answers--

Mark는 불필요한 코드 줄을 삭제해야 합니다.

### --feedback--

Sophie는 코드를 삭제하는 것에 대해 말하지 않습니다.

---

Mark는 코드를 완전히 다시 작성해야 합니다.

### --feedback--

Sophie는 코드를 완전히 다시 작성하라고 제안하지 않습니다.

---

Mark는 반복문 사용을 피해야 합니다.

### --feedback--

Sophie는 반복문 사용을 피하라고 말하지 않습니다.

---

Mark는 코드에 주석을 사용해야 합니다.

## --video-solution--

4

# --explanation--

`comment`는 코드에서 그 기능을 설명하는 주석입니다. 예를 들어:

- `I added a comment to explain why this loop is necessary.` - 특정 반복문을 사용하는 이유를 설명하는 주석을 작성했습니다.

- `You can use comments to leave notes about issues that need fixing later.` - 주석은 수정하거나 개선해야 할 사항을 기억하기 위해 코드에 추가할 수 있습니다.

주석은 다른 사람이 코드를 이해하는 데 도움을 주고, 나중에 코드를 검토할 때 중요한 세부사항을 상기시켜 줍니다.

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
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
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
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
