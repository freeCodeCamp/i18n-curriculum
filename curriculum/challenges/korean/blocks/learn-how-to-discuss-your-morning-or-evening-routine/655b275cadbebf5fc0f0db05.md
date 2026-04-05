---
id: 655b275cadbebf5fc0f0db05
title: 작업 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

`take`는 상황에 따라 여러 가지 의미가 될 수 있습니다. 학습 맥락에서 `take`는 수업이나 강좌에 참석하거나 참여하는 것을 의미합니다. 예를 들어:

- `I take online lessons at 7.` - 여기서 `take`는 수업에 참석하는 것을 의미합니다.

- `She is taking a programming course this semester.` - 여기서 `taking`는 그녀가 강좌에 등록하고 참석하고 있음을 뜻합니다.

따라서 `take lessons` 또는 `take a course`라고 말할 때는 무언가를 물리적으로 가져가는 것이 아니라, 그 수업이나 강좌에 참여하거나 참석하는 것을 말하는 것입니다.

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

이 동사는 수업에 참여하는 행동을 설명합니다.

---

`online`

### --feedback--

이 단어는 가상 환경을 가리킵니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
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
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
