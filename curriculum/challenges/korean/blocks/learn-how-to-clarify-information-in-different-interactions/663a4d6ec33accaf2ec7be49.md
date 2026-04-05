---
id: 663a4d6ec33accaf2ec7be49
title: 작업 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

`smile`는 행복을 나타내기 위해 입꼬리를 올리는 행동입니다. 기쁘거나 친절하게 보이고 싶을 때 얼굴로 하는 표현입니다.

`Friendly`는 친절하고 다정하며 이야기하기 편한 사람을 묘사합니다. 친근한 사람은 다른 사람을 편안하고 행복하게 만듭니다.

`A friendly smile`는 친절하고 환영하는 마음을 보여주는 미소입니다. 다른 사람을 기분 좋게 하고 친구가 되고 싶다는 뜻을 나타냅니다.

대화를 듣고 빈칸을 채우세요.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

이 빈칸은 친절하고 이야기하기 편하며 환영하는 사람을 묘사합니다.

---

`smile`

### --feedback--

입으로 행복을 표현할 때 하는 행동입니다.

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
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
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
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
