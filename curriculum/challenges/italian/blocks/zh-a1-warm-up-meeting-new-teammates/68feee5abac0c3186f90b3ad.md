---
id: 68feee5abac0c3186f90b3ad
title: Attività 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Quale opzione è il Pinyin corretto per ciò che dice Wang Hua?

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

Il tono della prima sillaba non corrisponde a quello che senti nell'audio.

---

`mín zi`

### --feedback--

La finale della prima sillaba non è quella che pronuncia.

---

`míng zhī`

### --feedback--

L'iniziale della seconda sillaba è diversa da quella che senti nell'audio.

## --video-solution--

1

# --explanation--

Wang Hua sta dicendo `míng zi`. La prima sillaba ha una finale nasale `ing` e un tono ascendente. La seconda sillaba è una sillaba intera con tono neutro, pronunciata leggermente.

# --scene--

```json
{
  "setup": {
    "background": "company1-breakroom.png",
    "characters": [
      {
        "character": "Wang Hua",
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
      "startTimestamp": 31.51,
      "finishTimestamp": 32.34
    }
  },
  "commands": [
    {
      "character": "Wang Hua",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Wang Hua",
      "startTime": 1,
      "finishTime": 1.83,
      "dialogue": {
        "text": "名字 (míng zi)",
        "align": "center"
      }
    },
    {
      "character": "Wang Hua",
      "opacity": 0,
      "startTime": 2.33
    }
  ]
}
```
