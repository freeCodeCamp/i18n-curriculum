---
id: 66b56cb9ff3bfb183fa1b7db
title: 작업 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

아래 문장을 완성하려면 오디오를 들으세요.

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

이 단어는 현재 논의 중인 모듈을 지정할 때 사용합니다.

---

`new`

### --feedback--

최근에 생긴 것을 의미합니다.

---

`module`

### --feedback--

교육 프로그램의 특정 부분이나 섹션을 뜻합니다.

# --explanation--

`Module`는 강의나 교육 프로그램의 단위 또는 섹션을 가리킵니다. 예를 들어:

- `The new module on cybersecurity will be added next week.` - 여기서 `module`는 사이버보안에 집중한 교육의 특정 부분을 의미합니다.

`this`, `new`, `module`가 어떻게 사용되는지 주의하세요. `This`는 그들이 말하는 모듈을 지정하는 데 쓰이고, `new`은 최근에 추가된 것임을 나타내며, `module`는 교육의 섹션을 가리킵니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
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
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
