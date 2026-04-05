---
id: 66c4ef1cb275e86febc9fe2c
title: 작업 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

무언가를 보여주거나 렌더링하는 동작입니다. 이 단어는 `-ing`로 끝납니다.

---

`running`

### --feedback--

확장 기능이 활성화되어 작동 중임을 나타냅니다. 이 단어는 `-ing`로 끝납니다.

# --explanation--

동명사는 `-ing`로 끝나면서 명사 역할을 하는 동사 형태입니다. 이 문장에서는 `displaying`와 `running`가 진행 중인 동작을 설명하는 동명사입니다. 예를 들어:

- `Updating the software is essential.` - 여기서 `Updating`는 동작을 설명하는 동명사입니다.

Sarah의 문장에서는 `displaying`와 `running`가 라이브 서버 확장 기능과 그 작동 방식에 관련된 동작을 설명합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
