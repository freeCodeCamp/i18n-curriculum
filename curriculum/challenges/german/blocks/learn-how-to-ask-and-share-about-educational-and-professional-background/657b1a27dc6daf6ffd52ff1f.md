---
id: 657b1a27dc6daf6ffd52ff1f
title: Aufgabe 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

Im Englischen wird das Substantiv mit dem Suffix `'s` gefolgt von einer zweiten Substantivstruktur verwendet, um Besitz oder Zugehörigkeit auszudrücken.

Wenn das erste Substantiv im Singular steht, wie bei `Sarah's laptop`, zeigt es an, dass der Laptop Sarah gehört. Wenn das erste Substantiv jedoch im Plural steht, ändert sich die Struktur zu einem Substantiv mit dem Suffix `'`, wie bei `teachers' office`, was auf ein Büro für Lehrer hinweist.

# --questions--

## --text--

Worauf bezieht sich `master's degree` im Kontext des Dialogs?

## --answers--

Ein Abschluss für Schullehrkräfte

### --feedback--

`Master's degree` bezeichnet einen fortgeschrittenen akademischen Abschluss, nicht speziell für Lehrkräfte.

---

Ein Abschluss auf Grundschulniveau

### --feedback--

`Master's degree` ist eine Qualifikation für höhere Bildung, über das Grundschulniveau hinaus.

---

Ein Abschluss im Beherrschen von Fähigkeiten

### --feedback--

Obwohl es Fachkenntnisse impliziert, bezieht sich `master's degree` speziell auf eine akademische Qualifikation.

---

Ein fortgeschrittener akademischer Abschluss

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
