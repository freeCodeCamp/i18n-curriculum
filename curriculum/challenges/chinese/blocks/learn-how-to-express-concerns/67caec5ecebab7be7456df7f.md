---
id: 67caec5ecebab7be7456df7f
title: 任务 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

听音频，回答下面的问题。  

# --questions--

## --text--

团队还引起了什么其他问题？

## --answers--

他们收到更新太早。

### --feedback--

Maria 提到完全相反的情况。

---

他们不想那么多地交流。

### --feedback--

Maria 没有提到团队的沟通意愿。  

---

他们经常无法及时听到变更。

---

他们认为太多人参与了通信。

### --feedback--

Maria 没有提及涉及的人数。

## --video-solution--

3  

# --explanation--

当你说某事 `isn't great` 时，你是在缓和一个负面消息（例如，而不是说 `it is bad`）。这使得批评听起来更礼貌或间接。请看以下句子：

- `The design is bad.` - 这是一个强烈的负面语句，通常听起来不礼貌。

- `The design isn't great. Maybe we can improve it.`——这样说听起来不那么严厉，更具建设性。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
