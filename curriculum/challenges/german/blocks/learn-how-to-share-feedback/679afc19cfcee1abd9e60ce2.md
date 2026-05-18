---
id: 679afc19cfcee1abd9e60ce2
title: Aufgabe 61
challengeType: 19
dashedName: task-61
lang: en-US
---

<!-- (Audio) Brian: If people don't feel valued, they might lose motivation, right? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was glaubt Brian, könnte passieren, wenn wir nicht auf diejenigen im Team hören, die anderer Meinung sind?

## --answers--

Sie könnten die Motivation verlieren.

---

Sie werden aufhören, Meinungsverschiedenheiten zu haben.

### --feedback--

Die Meinungen von Menschen zu ignorieren, beendet keine Meinungsverschiedenheiten; es kann nur dazu führen, dass Menschen weniger engagiert sind.

---

Sie werden härter arbeiten, um ihren Standpunkt zu beweisen.

### --feedback--

Brian schlägt nicht vor, dass sich Menschen durch das Gefühl, nicht wertgeschätzt zu werden, mehr anstrengen.

---

Sie werden automatisch allem zustimmen.

### --feedback--

Menschen nicht zuzuhören führt nicht dazu, dass sie allem zustimmen – stattdessen kann es dazu führen, dass sie sich zurückziehen.

## --video-solution--

1

# --explanation--

`To feel valued` beschreibt das Gefühl, das Sie haben, wenn Sie glauben, dass Ihre Gedanken, Anstrengungen und Beiträge geschätzt werden. Zum Beispiel:

`The project manager always dedicates some time during the meeting to hear what we have to say. This makes everyone in the team feel valued.` – Das bedeutet, dass die Einstellung des Projektmanagers gute Ergebnisse für das Team bringt.

Brian schlägt vor, dass, wenn die Meinungen der Teammitglieder ignoriert werden, sie sich unwichtig fühlen könnten. Wenn Teammitglieder sich wertgeschätzt fühlen, bleiben sie eher engagiert und tragen neue Ideen bei.

Andererseits, wenn Menschen das Gefühl haben, dass ihre Meinungen nicht zählen, könnten sie sich zurückziehen und die Motivation verlieren, beizutragen, was die Teamarbeit und Produktivität insgesamt beeinträchtigen kann.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.54,
      "finishTimestamp": 46.1
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
      "finishTime": 4.56,
      "dialogue": {
        "text": "If people don't feel valued, they might lose motivation, right?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
