---
id: 672e1fff03af3aeed5d7a84b
title: Aufgabe 117
challengeType: 19
dashedName: task-117
lang: en-US
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was hält Anna von James' Ideen, und was schlägt sie vor?

## --answers--

Sie ist mit James' Ideen nicht einverstanden und schlägt vor, einen neuen Ansatz zu beginnen.

### --feedback--

Anna stimmt James zu, nicht widersprechen, und möchte auf dem Laufenden bleiben, anstatt neu zu starten.

---

Sie findet James' Ideen verwirrend und schlägt vor, sich nur auf die Barrierefreiheitsziele zu konzentrieren.

### --feedback--

Anna findet James' Ideen nicht verwirrend; sie stimmt zu und möchte den Fortschritt bei ihren gemeinsamen Zielen überwachen.

---

Sie stimmt James zu und schlägt vor, in Kontakt zu bleiben, um den Fortschritt zu überwachen.

---

Sie hält James' Ideen für unnötig und schlägt vor, das Projekt zu stoppen.

### --feedback--

Anna schlägt nicht vor, das Projekt zu stoppen; sie unterstützt James' Ideen und möchte auf dem Laufenden bleiben.

## --video-solution--

3

# --explanation--

Anna stimmt James' Ansatz zu und sagt `That makes sense`, was zeigt, dass sie seine Ideen versteht und unterstützt. Sie schlägt außerdem `keeping in touch to monitor progress` vor, was ihr Interesse ausdrückt, auf dem Laufenden zu bleiben, um sicherzustellen, dass sie ihre gemeinsamen Ziele erreichen.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
