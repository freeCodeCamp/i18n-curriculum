---
id: 655b37ecf9da446bd1dcff4f
title: 任务 96
challengeType: 22
dashedName: task-96
lang: en-US
---

<!-- (Audio) Sophie: On Sunday, I have a lazy morning. I just stay at home and play some video games on my console. In the evening, I make dinner and go to sleep early because on Monday it's back to work again. -->

# --description--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`On Sunday, I have a BLANK morning. I just stay at home and play some video games on my console. In the evening, I make dinner and go to sleep BLANK because on Monday it's back to work again.`

## --blanks--

`lazy`

### --feedback--

这个形容词描述了 Sophie 星期天早晨的轻松氛围。

---

`early`

### --feedback--

这个词表示 Sophie 选择在星期天晚上睡觉的时间。

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-5.mp3",
      "startTime": 1,
      "startTimestamp": 27.14,
      "finishTimestamp": 36.80
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
      "finishTime": 5.5,
      "dialogue": {
        "text": "On Sunday, I have a lazy morning. I just stay at home and play some video games on my console.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 6.14,
      "finishTime": 10.66,
      "dialogue": {
        "text": "In the evening, I make dinner and go to sleep early because on Monday it's back to work again.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 11.16
    }
  ]
}
```
