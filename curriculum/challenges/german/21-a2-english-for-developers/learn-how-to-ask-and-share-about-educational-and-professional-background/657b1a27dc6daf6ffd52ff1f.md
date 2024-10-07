---
id: 657b1a27dc6daf6ffd52ff1f
title: Aufgabe 29
challengeType: 19
dashedName: task-29
---

<!-- (Audio) Anna: Excellent! Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: I have a master's degree in computer science. -->

# --description--

Im Englischen wird das Substantiv mit der Endung `'s`, gefolgt von einer zweiten Substantivstruktur, verwendet, um Besitz oder Zugehörigkeit zu zeigen. Wenn das erste Substantiv Singular ist, wie in `Sarah's laptop`, bedeutet das, dass der Laptop Sarah gehört. Wenn das erste Substantiv jedoch im Plural steht, ändert sich die Struktur in ein Substantiv mit der Endung `'`, wie in `teachers' office`, das ein Büro für Lehrer bezeichnet.

# --questions--

## --text--

Worauf bezieht sich `master's degree` im Kontext des Dialogs?

## --answers--

Ein Abschluss für Lehrer

### --feedback--

`Master's degree` bezieht sich auf einen fortgeschrittenen akademischen Abschluss, nicht speziell für Lehrer.

---

Ein Bildungsabschluss der Grundstufe

### --feedback--

`Master's degree` ist ein höherer Bildungsabschluss, der über die Grundstufe hinausgeht.

---

Ein Abschluss in der Aneignung von Fähigkeiten

### --feedback--

Während es Fachwissen impliziert, bezieht sich `master's degree` spezifisch auf einen akademischen Abschluss.

---

Einen erweiterten akademischen Abschluss

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
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
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
