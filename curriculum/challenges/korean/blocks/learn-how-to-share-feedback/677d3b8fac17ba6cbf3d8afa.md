---
id: 677d3b8fac17ba6cbf3d8afa
title: 작업 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

이것은 동사 `-ing`의 `say` 형태로, 전치사 `by` 뒤에 와서 시작하는 방법을 나타냅니다.

---

`QA`

### --feedback--

이는 `Quality Assurance`를 나타내며, 제품이 요구되는 기준을 충족하는지 확인하는 과정을 의미합니다.

# --explanation--

동사가 전치사 뒤에 올 때는 `-ing` 형태(동명사)를 사용해야 합니다. 이 문장에서는 Bob이 자신의 말을 시작하는 방법을 나타내기 위해 전치사 `saying` 뒤에 `by`가 옵니다. 예를 들어:

`She improved her skills by practicing regularly.` - 여기서 `practicing`는 전치사 `by` 뒤에 와서 그녀가 어떻게 기술을 향상시켰는지 보여줍니다.

Bob은 Jessica의 `QA` 작업을 칭찬합니다. `QA`는 `Quality Assurance`를 의미하며, 제품이나 서비스가 특정 품질 기준을 충족하고 제대로 작동하는지 확인하는 과정을 말합니다. 또 다른 예:

`The QA team identified several bugs during testing.` - 이는 소프트웨어 품질을 책임지는 사람들이 출시 전에 버그를 발견하는 데 성공했다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
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
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
