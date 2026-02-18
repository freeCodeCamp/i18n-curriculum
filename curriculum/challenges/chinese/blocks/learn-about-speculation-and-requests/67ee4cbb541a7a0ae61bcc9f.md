---
id: 67ee4cbb541a7a0ae61bcc9f
title: 任务 4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

这个小误差严重吗？

## --answers--

不，他们也不需要对此做任何处理。

### --feedback--

Sophie 没有说这是一个重大问题，但他们应该修复它。

---

是的，它会破坏整个系统。

### --feedback--

Sophie 没说这是一个重大问题，只是他们应该修复的东西。

---

是的，Sophie 非常担心这件事。

### --feedback--

索菲不是很担心，但她仍然认为他们应该修复它。

---

不，但它仍然应该被修复。

## --video-solution--

4

# --explanation--

`It's not a big deal` 意味着问题不严重。例如：

- 人员 1：`I can't join the meeting today.`

- 人物 2：`It's not a big deal. I'll take notes for you.`——错过会议没关系，这个人可以帮忙。

Sophie 还说 `we should fix it before it causes problems`，意思是现在修复它比等到问题严重时更好。

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
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
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
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
