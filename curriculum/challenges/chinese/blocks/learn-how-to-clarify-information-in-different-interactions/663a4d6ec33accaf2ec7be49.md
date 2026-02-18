---
id: 663a4d6ec33accaf2ec7be49
title: 任务 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

`smile` 是当你上扬嘴角以表达快乐时发生的事情。这是你在快乐或想要友好时用脸做的动作。

`Friendly` 描述的是一个善良、友好且容易交谈的人。一个友好的人会让别人感到舒适和快乐。

`A friendly smile` 是一种表现你友善和热情的微笑。它让别人感觉良好，并表明你想成为朋友。

听对话框并填写空白。

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

此空白描述了一个友善、容易交谈且热情的人。

---

`smile`

### --feedback--

当你想用嘴巴表达快乐时所做的动作。

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
