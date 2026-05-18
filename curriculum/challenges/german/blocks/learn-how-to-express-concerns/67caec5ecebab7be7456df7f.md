---
id: 67caec5ecebab7be7456df7f
title: Aufgabe 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.  

# --questions--

## --text--

Welches weitere Problem hat das Team angesprochen?

## --answers--

Dass sie Updates zu früh erhalten.

### --feedback--

Maria erwähnt genau das Gegenteil.

---

Dass sie nicht so viel kommunizieren wollen.

### --feedback--

Maria erwähnt nicht, dass das Team weniger kommunizieren möchte.  

---

Dass sie oft nicht rechtzeitig von Änderungen erfahren.

---

Dass sie denken, dass zu viele Personen in die Kommunikation eingebunden sind.

### --feedback--

Maria erwähnt nicht die Anzahl der beteiligten Personen.

## --video-solution--

3  

# --explanation--

Wenn Sie etwas `isn't great` sagen, mildern Sie eine negative Botschaft ab (anstatt zum Beispiel `it is bad` zu sagen). Dadurch klingt Kritik höflicher oder indirekter. Schauen Sie sich die folgenden Sätze an:

- `The design is bad.` – Das ist eine starke negative Aussage, die oft unhöflich klingt.

- `The design isn't great. Maybe we can improve it.` – So klingt es weniger hart und konstruktiver.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
