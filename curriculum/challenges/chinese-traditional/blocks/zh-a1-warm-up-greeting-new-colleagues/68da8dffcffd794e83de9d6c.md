---
id: 68da8dffcffd794e83de9d6c
title: 任務 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

陳娜對一群人說什麼來打招呼？

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

這是對一個人的問候，但陳娜是在向多個人問候。

---

`您们好 (nín men hǎo)`

### --feedback--

這個表單在中文中並非標準。

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

這也表示「Hello, everyone」，但陳娜使用不同的詞語。

## --video-solution--

3

# --explanation--

問題是在問陳娜對 **一群人** 說了什麼來打招呼。

`你好 (nǐ hǎo)` 是對一個人的問候，而 `您好 (nín hǎo)` 是對一個人的禮貌問候。`您们好 (nín men hǎo)` 並非中文標準用法；`您 (nín)` 是禮貌的單數用法，通常不會用於複數。

對群組打招呼的正確用語是 `你们好 (nǐ men hǎo)`，這是說「大家好」的常用方式。`大家好 (dà jiā hǎo)` 是另一種向群組打招呼的方式，你會隨著進度學到。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
