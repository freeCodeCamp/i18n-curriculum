---
id: 67ee6d7bcacdc02ff7d9beb2
title: 작업 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

이 단어는 무언가가 존재하거나 발생하고 있음을 말할 때 사용합니다. `there is`의 축약형입니다.

---

`problem`

### --feedback--

이 단어는 해결하거나 고쳐야 할 문제나 어려움을 나타냅니다.

---

`with`

### --feedback--

이 전치사는 두 가지 사이의 관계나 연결을 나타냅니다.

---

`event handling`

### --feedback--

이 두 단어 구는 소프트웨어나 웹사이트가 사용자의 클릭이나 키 입력 같은 동작에 반응하는 방식을 나타냅니다. 두 번째 단어는 `-ing`로 끝납니다.

# --explanation--

`There's a problem with`는 무언가가 제대로 작동하지 않는 상태를 설명할 때 사용합니다. 특정한 것과 관련된 문제나 어려움이 있음을 의미합니다. 예를 들어:

`There's a problem with the network.` – 네트워크가 제대로 작동하지 않는다는 뜻입니다.

`Event handling`는 프로그램이나 웹사이트가 클릭, 키보드 입력, 마우스 움직임 같은 사용자 동작을 어떻게 처리하는지를 나타냅니다. 예를 들어:

`There's an issue with event handling.` - 소프트웨어가 사용자 동작에 제대로 반응하지 않는다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
