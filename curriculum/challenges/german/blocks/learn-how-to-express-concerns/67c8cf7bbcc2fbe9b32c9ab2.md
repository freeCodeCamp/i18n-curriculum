---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: Aufgabe 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.  

# --questions--

## --text--

Was wird Maria mit den Kommentaren machen, die sie von James erhalten hat?  

## --answers--

Sie wird sie ignorieren.  

### --feedback--

Maria erkennt James’ Punkt an und plant, Maßnahmen zu ergreifen.

---

Sie wird dem Team sagen, sich keine Sorgen mehr um die Kommunikation zu machen.

### --feedback--

Maria möchte die Kommunikation verbessern, nicht Bedenken abtun. 

---

Sie wird die Check-ins des Teams absagen.

### --feedback--

Maria sagt nicht, dass sie die Check-ins absagen wird.

---

Sie wird vorschlagen, mehr Check-ins abzuhalten, um die Kommunikation zu verbessern.

## --video-solution--

4  

# --explanation--

Wenn Sie das Verb `suggest` verwenden, benutzen Sie das folgende Verb in der `-ing`-Form anstelle des Infinitivs. Zum Beispiel:

- `She suggested taking a break.` – Das bedeutet, die vorgeschlagene Idee ist, eine Pause einzulegen.

- `He suggested starting the meeting earlier to avoid delays.` – Das bedeutet, er schlug vor, das Treffen früher zu beginnen.

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
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
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
