---
id: 663a4d6ec33accaf2ec7be49
title: 任務 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

`smile` 是當你將嘴角上揚以表達快樂時所發生的事情。當你快樂或想要表現友善時，這是你用臉部所做的動作。

`Friendly` 描述一個人親切、友善且容易交談。友善的人讓別人感到自在和快樂。

`A friendly smile` 是一種展現你友善和熱情的微笑。它讓別人感覺良好，並表示你想成為朋友。

聆聽對話窗並填寫空格。

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

這個空白描述一個友善、容易交談且熱情的人。

---

`smile`

### --feedback--

當你想用嘴巴表達快樂時所做的動作。

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
