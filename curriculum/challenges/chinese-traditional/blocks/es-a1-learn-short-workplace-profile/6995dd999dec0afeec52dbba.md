---
id: 6995dd999dec0afeec52dbba
title: 任務 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Luna: Trabaja en la oficina de Medellín. -->

# --description--

單字 `oficina` 的意思是「辦公室」。

Luna 正在用這個字回應 Sebastián 的問題。

# --instructions--

聆聽音訊並完成下面的句子。

# --fillInTheBlank--

## --sentence--

`Trabaja en la BLANK de Medellín.`

## --blanks--

`oficina`

### --feedback--

這個字指的是人們工作的地方。

# --explanation--

Luna 說 Carlos `trabaja en la oficina de Medellín`。

這表示他在 Medellín 的辦公室工作。

你應該寫下單字 `oficina` 來完成句子。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": -25,
          "y": 21,
          "z": 1.5
        },
        "opacity": 1
      },
      {
        "character": "Luna",
        "position": {
          "x": 125,
          "y": 21,
          "z": 1.6
        },
        "opacity": 1
      },
      {
        "character": "Carlos",
        "position": {
          "x": 125,
          "y": 10,
          "z": 1.2
        },
        "opacity": 1
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_asks_luna_about_carlos_dialogue.mp3",
      "startTime": 1,
      "startTimestamp": 10.95,
      "finishTimestamp": 13.66
    },
    "alwaysShowDialogue": false
  },
  "commands": [
    {
      "character": "Sebastián",
      "position": {
        "x": 22,
        "y": 21,
        "z": 1.5
      },
      "startTime": 0
    },
    {
      "character": "Luna",
      "position": {
        "x": 46,
        "y": 21,
        "z": 1.6
      },
      "startTime": 0.5
    },
    {
      "character": "Carlos",
      "position": {
        "x": 81,
        "y": 10,
        "z": 1.2
      },
      "startTime": 0.7
    },
    {
      "character": "Luna",
      "startTime": 1,
      "finishTime": 3.71,
      "dialogue": {
        "text": "Trabaja en la oficina de Medellín.",
        "align": "left"
      }
    },
    {
      "character": "Carlos",
      "position": {
        "x": 125,
        "y": 10,
        "z": 1.2
      },
      "startTime": 4.21
    },
    {
      "character": "Luna",
      "position": {
        "x": 125,
        "y": 21,
        "z": 1.6
      },
      "startTime": 4.71
    },
    {
      "character": "Sebastián",
      "position": {
        "x": -25,
        "y": 21,
        "z": 1.5
      },
      "startTime": 4.91
    }
  ]
}
```
