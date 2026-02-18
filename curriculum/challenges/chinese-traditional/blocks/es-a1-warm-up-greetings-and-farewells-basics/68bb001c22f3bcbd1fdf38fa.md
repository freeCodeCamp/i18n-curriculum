---
id: 68bb001c22f3bcbd1fdf38fa
title: 任務 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Elena 想說「hi」。當人們互相見面時，你會一直聽到這個字、單字在西班牙語中出現。

# --instructions--

聆聽音訊並回答以下問題。只有**一個**正確答案。如果你需要幫助，請點擊課程底部的**說明**。

# --questions--

## --text--

Elena 用什麼字來說「hi」？

## --answers--

`Hola`

---

`Adiós`

### --feedback--

這表示與說話者所說的相反。如果你需要進一步的幫助，請打開說明部分。

---

`Chao`

### --feedback--

這表示與說話者所說的相反。如果你需要進一步的幫助，請打開說明部分。

---

`Buenos días`

### --feedback--

這表示「早安」，但這不是你在 `audio` 中聽到的內容。

## --video-solution--

1

# --explanation--

字 `Hola` 是一種問候語。當你遇見某人時會使用它，類似於「Hello」或「Hi」。例如：

`¡Hola, buenos días!`－嗨，早安！ 

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
