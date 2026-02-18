---
id: 67cafac07dc081eefb4d7adb
title: 任务 135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

听音频，回答下面的问题。  

# --questions--

## --text--

每周会议的目标是什么？

## --answers--

为了减少团队拥有的任务数量。

### --feedback--

Bob 没有提到减少任务。  

---

为了避免对项目进行任何更改。

### --feedback--

Bob 并不建议他们避免做出更改。

---

增加没有明确目标的会议数量。

### --feedback--

Bob 有一个具体的目标，他提到了它。

---

为了确保每个人都能及时了解项目的最新情况。

## --video-solution--

4  

# --explanation--

`To keep someone in the loop` 意味着让他们了解重要的更新和决策。例如：

`Please keep me in the loop about any changes to the schedule.`——这意味着说话者希望在调度有任何变化时得到更新。

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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
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
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
