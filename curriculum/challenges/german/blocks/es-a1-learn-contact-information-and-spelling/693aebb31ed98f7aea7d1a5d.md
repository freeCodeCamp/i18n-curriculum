---
id: 693aebb31ed98f7aea7d1a5d
title: Aufgabe 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

In dieser Aufgabe hören Sie, wie Basti seine vollständige Telefonnummer inklusive der Landesvorwahl angibt. Die Nummer wird in gruppierten Ziffern gesprochen.

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Welche der folgenden Nummern ist Bastis Telefonnummer?

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

Die letzten Ziffern stimmen nicht mit dem überein, was Basti sagt.

---

+520 4489 2201

### --feedback--

Die von Basti genannte Landesvorwahl ist nicht 520.

---

+502 4498 2201

### --feedback--

In den mittleren vier Ziffern gibt es einen kleinen Fehler.

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201`, bedeutet „Und meine Nummer ist +502 4489 2201“.

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
