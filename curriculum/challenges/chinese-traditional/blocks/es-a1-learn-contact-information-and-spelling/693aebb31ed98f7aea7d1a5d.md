---
id: 693aebb31ed98f7aea7d1a5d
title: 任務 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

在此任務中，你將聽到 Basti 分享他的完整電話號碼，包括國碼。號碼以分組數字方式朗讀。

# --instructions--

聆聽音訊並回答以下問題。 

# --questions--

## --text--

以下哪一個是 Basti 的電話號碼？

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

最後的數字不是 Basti 所說的。

---

+520 4489 2201

### --feedback--

Basti 說的國家代碼不是 520。

---

+502 4498 2201

### --feedback--

中間四位數有一個小錯誤。

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201`，意思是「而我的號碼是 +502 4489 2201」。

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 64.86,
      "finishTimestamp": 74.84
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.98,
      "dialogue": {
        "text": "Y mi número es +502 4489 2201.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 11.48
    }
  ]
}
```
