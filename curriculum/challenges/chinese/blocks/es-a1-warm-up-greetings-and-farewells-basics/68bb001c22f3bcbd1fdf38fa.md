---
id: 68bb001c22f3bcbd1fdf38fa
title: 任务 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Elena 想说 "hi"。当人们相互见面时，你会一直听到这个词在西班牙语中出现。

# --instructions--

听音频并回答下面的问题。只有**一个**正确答案。如果你需要帮助，请点击课程底部的**explanation**。

# --questions--

## --text--

Elena 用什么词来说“hi”？

## --answers--

`Hola`

---

`Adiós`

### --feedback--

这意味着说话者所说内容的相反。如果你需要进一步的帮助，请打开解释部分。

---

`Chao`

### --feedback--

这意味着说话者所说内容的相反。如果你需要进一步的帮助，请打开解释部分。

---

`Buenos días`

### --feedback--

这意味着“Good morning”，但这不是你在音频中听到的内容。

## --video-solution--

1

# --explanation--

单词 `Hola` 是一种问候语。它在你遇见某人时使用，类似于 `"Hello"` 或 `"Hi"`。例如：

`¡Hola, buenos días!` – 你好，早上好！ 

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 0.35,
      "finishTimestamp": 0.9
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
