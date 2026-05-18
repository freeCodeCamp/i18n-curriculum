---
id: 6903d3c4ccae5fffec5f3cbc
title: Aufgabe 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Welche Nationalität hat Mateo?

## --answers--

`Chileno`

### --feedback--

Diese Option bezieht sich auf jemanden aus Chile.

---

`Peruano`

### --feedback--

Dieses Wort beschreibt eine Person aus Peru.

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

Dies bezieht sich auf eine Frau aus Kolumbien, und die Endung `-a` zeigt die weibliche Form an, die nicht zu Mateo passt.

## --video-solution--

3

# --explanation--

`Soy` („Ich bin“) stammt vom Verb `ser` und wird verwendet, um Identität, Nationalität oder Beruf auszudrücken. Zum Beispiel:

- `Soy chilena.` – Ich bin Chilene. (weiblich)

- `Soy chileno.` – Ich bin Chilene. (männlich)

- `Soy puertorriqueña` – Ich bin Puerto Ricaner. (weiblich)

- `Soy puertorriqueño` – Ich bin Puerto Ricaner. (männlich)

- `Soy canadiense.` – Ich bin Kanadier. (neutral)

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 5.81,
      "finishTimestamp": 7.13
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Soy puertorriqueño.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 2.82
    }
  ]
}
```
