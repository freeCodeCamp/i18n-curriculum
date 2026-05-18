---
id: 67ee4cbb541a7a0ae61bcc9f
title: Aufgabe 4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Ist dieser kleine Fehler ernsthaft?

## --answers--

Nein, und sie müssen nichts dagegen unternehmen.

### --feedback--

Sophie sagt nicht, dass es ein großes Problem ist, aber sie sollten es beheben.

---

Ja, es wird das ganze System zum Absturz bringen.

### --feedback--

Sophie sagt nicht, dass es ein großes Problem ist, nur dass sie es beheben sollten.

---

Ja, Sophie ist sehr besorgt darüber.

### --feedback--

Sophie ist nicht sehr besorgt, aber sie denkt trotzdem, dass sie es beheben sollten.

---

Nein, aber es sollte trotzdem behoben werden.

## --video-solution--

4

# --explanation--

`It's not a big deal` bedeutet, dass das Problem nicht ernst ist. Zum Beispiel:

- **Monica:** `I can't join the meeting today.`

- **Eva:** `It's not a big deal. I'll take notes for you.` – Es ist in Ordnung, das Treffen zu verpassen, und diese Person kann helfen.

Sophie sagt auch `we should fix it before it causes problems`, was bedeutet, dass es besser ist, es jetzt zu beheben, bevor es ernst wird.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
