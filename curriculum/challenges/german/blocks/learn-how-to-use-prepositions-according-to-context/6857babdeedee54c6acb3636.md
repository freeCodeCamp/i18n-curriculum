---
id: 6857babdeedee54c6acb3636
title: Aufgabe 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Wo werden die Monitore jetzt aufbewahrt?

## --answers--

Am Ende des Parkplatzes.

### --feedback--

Sarah erwähnt den Parkplatz nicht.

---

Im IT-Raum.

### --feedback--

Sie wurden zuvor aus dem IT-Raum entfernt.

---

Neben dem Sicherheitsdienst.

### --feedback--

Ein Sicherheitsdienst wird nicht erwähnt.

---

Direkt gegenüber der Kaffeemaschine.

## --video-solution--

4

# --explanation--

Sarah gibt klare Wegbeschreibungen mit einem Bezugspunkt: `the coffee machine`.

Sie erklärt, dass man nach dem Gang durch den Flur und dem Abbiegen nach links die Monitore gegenüber davon findet, wodurch die Kaffeemaschine das nächstgelegene sichtbare Orientierungselement zum Auffinden ist.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.68,
      "finishTimestamp": 18.22
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
