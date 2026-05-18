---
id: 683d4ae3cbcc8c94e78aade1
title: Aufgabe 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was erklärt Bob?

## --answers--

Dass der Notausgang blockiert ist.

### --feedback--

Bob sagt nicht, dass der Ausgang blockiert ist – er erwähnt nur dessen Lage.

---

Dass die Hintertür ein neues Schloss braucht.

### --feedback--

Bob erwähnt nichts über Schlösser oder dass die Hintertür repariert werden muss.

---

Dass der Serverraum gereinigt werden muss.

### --feedback--

In Bobs Satz wird nichts über Reinigung gesagt.

---

Dass sich etwas in der Nähe des Notausgangs befindet.

## --video-solution--

4

# --explanation--

Bob sagt, `Exactly. It's in the back, next to the emergency exit`. Das bedeutet, er bestätigt den Standort von etwas – direkt neben dem Notausgang.

Er spricht nicht über Reparaturen, Reinigung oder Probleme.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
