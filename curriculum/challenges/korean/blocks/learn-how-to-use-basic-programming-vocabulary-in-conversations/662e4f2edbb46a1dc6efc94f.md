---
id: 662e4f2edbb46a1dc6efc94f
title: 도전 과제 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common`는 자주 발생하거나 많은 사람에게 널리 공유되는 일을 설명할 때 사용합니다. 예를 들어, `Colds are a common illness during the winter.`는 그 시기에 많은 사람이 겪는 흔한 건강 문제임을 의미합니다.

`Challenge`는 어렵기 때문에 특별한 노력이 필요한 작업이나 상황을 가리킵니다. 예를 들어, `Learning to ride a bike was a big challenge for her at first.`는 자전거 타기를 배우는 것이 처음에는 어려웠다는 점을 설명합니다.

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

이 형용사는 어떤 집단에서 자주 발생하거나 흔한 일을 설명합니다.

---

`challenge`

### --feedback--

이 명사는 해결하거나 극복하는 데 노력이 필요한 어려운 작업이나 문제를 뜻합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
