---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: 任务 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

听音频，回答下面的问题。  

# --questions--

## --text--

Maria 会如何处理她从 James 那里得到的评论？  

## --answers--

她会忽略它们。  

### --feedback--

Maria 认可 James 的观点并计划采取行动。

---

她会告诉团队不要再担心通信。

### --feedback--

Maria 想要改善通信，而不是忽视担忧。 

---

她将取消团队的 `check-ins`。

### --feedback--

Maria 没有说她会取消 `check-ins`。

---

她将提议增加更多的 `check-ins` 以改善 `communication`。

## --video-solution--

4  

# --explanation--

使用动词 `suggest` 时，使用以下动词的 `-ing` 形式，而不是不定式。例如：

- `She suggested taking a break.` - 这意味着提出的想法是休息一下。

- `He suggested starting the meeting earlier to avoid delays.`——这意味着他建议更早开始会议以避免延误。

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
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
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
