---
id: 67aa23adedb02b11aaceda26
title: Aufgabe 8
challengeType: 19
dashedName: task-8
lang: en-US
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was ist laut Anna wichtiger?

## --answers--

Computer aufzurüsten.

---

Neue Büromöbel zu kaufen.

### --feedback--

Anna erkennt an, dass Möbel wichtig sind, sagt aber, dass viele Leute etwas anderes brauchen.

---

Einen höheren Zuschuss für das Arbeiten von zu Hause zu bekommen.

### --feedback--

Anna spricht nicht über eine Erhöhung des Zuschusses, sondern nur darüber, wie die Leute ihn verwenden möchten.

---

Die Umfragefragen zu ändern.

### --feedback--

Anna erwähnt nichts über die Umfragefragen.

## --video-solution--

1

# --explanation--

Ein `computer upgrade` bedeutet, einen Computer zu verbessern, indem man Teile wie mehr Arbeitsspeicher (RAM), einen schnelleren Prozessor oder einen besseren Bildschirm hinzufügt oder austauscht. Zum Beispiel:

- `I need a computer upgrade to run the latest software.` – Der aktuelle Computer des Sprechers ist nicht leistungsfähig genug, daher braucht er einen besseren.

- `After the computer upgrade, everything runs much faster.` – Die Systemleistung verbesserte sich nach dem Aktualisieren oder Austauschen von Komponenten.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 12.06,
      "finishTimestamp": 15.8
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "While furniture is important, many people mentioned that their computers need upgrades.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
