---
id: 657b1a27dc6daf6ffd52ff1f
title: 任务 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

在英语中，名词后缀 `'s` 加上第二个名词的结构用于表示所有权或归属。

如果第一个名词是单数，如 `Sarah's laptop`，表示笔记本属于 Sarah。然而，如果第一个名词是复数，结构则变为名词后缀 `'`，如 `teachers' office`，表示教师的办公室。

# --questions--

## --text--

对话框上下文中的 `master's degree` 指的是什么？

## --answers--

学校教师学位

### --feedback--

`Master's degree` 指的是高级的学术学位，而不是专门针对教师的。

---

小学学历

### --feedback--

`Master's degree` 是高于初级水平的高等教育资格。

---

掌握技能的学位

### --feedback--

虽然它暗示专业知识，`master's degree` 特指一种学术资格。

---

一个高级的学术学位

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
