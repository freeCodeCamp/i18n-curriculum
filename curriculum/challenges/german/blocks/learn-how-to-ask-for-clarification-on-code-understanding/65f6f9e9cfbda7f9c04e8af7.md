---
id: 65f6f9e9cfbda7f9c04e8af7
title: Aufgabe 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

Der Ausdruck `by the end of it` wird im Englischen häufig verwendet, um den Abschluss oder den letzten Teil eines Prozesses oder Zeitraums zu beschreiben. Er impliziert, dass am Ende einer bestimmten Tätigkeit ein konkretes Ergebnis oder Verständnis erreicht wird.

# --questions--

## --text--

Was meint Brian im Dialog mit `by the end of it`?

## --answers--

Sie werden die Untersuchung beenden.

### --feedback--

Dieser Ausdruck bezieht sich auf das Erreichen eines Ergebnisses, nicht unbedingt auf das Beenden der Tätigkeit.

---

Sie werden eine andere Tätigkeit beginnen.

### --feedback--

Brian spricht vom Ende der aktuellen Untersuchung, nicht vom Beginn einer neuen Aktivität.

---

Sie werden eine Pause machen.

### --feedback--

Der Ausdruck konzentriert sich darauf, am Ende des Prozesses ein Verständnis zu erlangen, nicht auf eine Pause.

---

Sie werden nach der Untersuchung ein klareres Verständnis der Situation haben.

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
