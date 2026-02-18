---
id: 68c58aa8c9d2a2dfea45deb7
title: 任務 7
challengeType: 19
dashedName: task-7
lang: es
---

<!-- (Audio) Elena: Hasta luego -->

# --description--

Elena 正在道別，但她期望再次見到你。

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Elena 用什麼片語來說「待會見」？

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

這是告別，但更為決絕。說話者使用了不同的詞語。

---

`Chao`

### --feedback--

這也是一種非正式的告別方式，但它不是音訊中的那一個。

---

`¡Hola!`

### --feedback--

這表示「Hi」，一個一般性的問候語，但這不是 Elena 說的話。

## --video-solution--

1

# --explanation--

`Hasta luego` 是西班牙語中常用的道別語。它的意思是「待會見」。

當你預期會再見到這個人，但不一定很快時會使用。 例如：  

`Hasta luego, Marta.`－待會見，Marta。

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
