---
id: 679afc19cfcee1abd9e60ce2
title: 任务 61
challengeType: 19
dashedName: task-61
lang: en-US
---

<!-- (Audio) Brian: If people don't feel valued, they might lose motivation, right? -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

如果我们不听取团队中持不同意见的人的看法，Brian 认为可能会发生什么？

## --answers--

他们可能会失去动力。

---

他们将不再有分歧。

### --feedback--

忽视别人的意见不会阻止分歧；它可能只是让人们减少参与。

---

他们会更加努力地证明自己的观点。

### --feedback--

Brian 并不认为感觉被低估会让人们更努力工作。

---

他们会自动同意所有内容。

### --feedback--

不听取别人的意见不会让他们同意所有事情——反而可能让他们失去参与感。

## --video-solution--

1

# --explanation--

`To feel valued` 描述了当你相信自己的想法、努力和贡献被认可时的感受。例如：

`The project manager always dedicates some time during the meeting to hear what we have to say. This makes everyone in the team feel valued.` —— 这意味着项目经理的态度为团队带来了良好的结果。

Brian 建议，如果团队成员的意见被忽视，他们可能会感到不重要。如果团队成员感到被重视，他们更有可能保持参与并贡献新想法。

另一方面，如果人们觉得他们的意见无关紧要，他们可能会变得不投入并失去贡献的动力，这会损害整体团队合作和生产力。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.54,
      "finishTimestamp": 46.1
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 4.56,
      "dialogue": {
        "text": "If people don't feel valued, they might lose motivation, right?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
