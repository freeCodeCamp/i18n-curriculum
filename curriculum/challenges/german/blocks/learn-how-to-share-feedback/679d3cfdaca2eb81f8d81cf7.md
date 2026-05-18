---
id: 679d3cfdaca2eb81f8d81cf7
title: Aufgabe 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was bittet Maria James zu tun?

## --answers--

Das Problem sofort zu beheben.

### --feedback--

Maria bittet James nicht, das Problem sofort zu beheben.

---

Das Problem dem Client zu melden.

### --feedback--

Maria erwähnt nicht, den Client zu informieren.

---

Das Problem zu untersuchen.

---

Das Problem vorerst zu ignorieren.

### --feedback--

Maria bittet James nicht, das Problem zu ignorieren.

## --video-solution--

3

# --explanation--

`Can` wird häufig verwendet, um höfliche Bitten auszudrücken und jemanden informell zu bitten, etwas zu tun. Zum Beispiel:

`Can you send me the report by noon?` – Dies ist eine höfliche Art, jemanden zu bitten, einen Bericht zu senden.

In diesem Dialog bittet Maria James, das Problem zu untersuchen.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
