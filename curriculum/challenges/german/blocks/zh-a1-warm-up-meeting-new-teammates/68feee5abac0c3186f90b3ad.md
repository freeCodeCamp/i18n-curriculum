---
id: 68feee5abac0c3186f90b3ad
title: Aufgabe 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Welche Option ist die korrekte Pinyin-Schreibweise für das, was Wang Hua sagt?

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

Der Ton der ersten Silbe stimmt nicht mit dem überein, was Sie in der Audioaufnahme hören.

---

`mín zi`

### --feedback--

Der Auslaut der ersten Silbe entspricht nicht dem, was sie sagt.

---

`míng zhī`

### --feedback--

Der Anlaut der zweiten Silbe unterscheidet sich von dem, was Sie in der Audioaufnahme hören.

## --video-solution--

1

# --explanation--

Wang Hua sagt `míng zi`. Die erste Silbe hat einen nasalen Auslaut `ing` und einen steigenden Ton. Die zweite Silbe ist eine vollständige Silbe mit neutralem Ton, die leicht ausgesprochen wird.

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
