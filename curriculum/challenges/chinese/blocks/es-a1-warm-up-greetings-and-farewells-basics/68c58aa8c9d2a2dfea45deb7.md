---
id: 68c58aa8c9d2a2dfea45deb7
title: 任务 7
challengeType: 19
dashedName: task-7
lang: es
---

<!-- (Audio) Elena: Hasta luego -->

# --description--

Elena 正在告别，但她期待再次见到你。

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Elena 用什么短语来说“see you later”？

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

这是告别，但更为最终。说话者使用了不同的短语。

---

`Chao`

### --feedback--

这也是一种非正式的告别方式，但它不是音频中的那个。

---

`¡Hola!`

### --feedback--

这意味着 "Hi"，一个通用的问候，但这不是 Elena 说的。

## --video-solution--

1

# --explanation--

`Hasta luego` 是西班牙语中常用的告别方式。它的意思是 "See you later"。

当你期望再次见到此人，但不一定很快时使用。例如：  

`Hasta luego, Marta.` – 回头见，Marta。

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
      "startTimestamp": 5.68,
      "finishTimestamp": 6.64
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
      "finishTime": 1.96,
      "dialogue": {
        "text": "Hasta luego.",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.46
    }
  ]
}
```
