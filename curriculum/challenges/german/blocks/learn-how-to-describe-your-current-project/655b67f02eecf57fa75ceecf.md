---
id: 655b67f02eecf57fa75ceecf
title: Aufgabe 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

Das Verb `stay` wird verwendet, um das Verbleiben in einem bestimmten Zustand oder einer bestimmten Situation anzuzeigen. Es wird oft in Anweisungen oder Ratschlägen genutzt, um sich selbst in einer bestimmten Lage zu halten. Zum Beispiel:

- `Stay safe online.` – Bleiben Sie sicher, während Sie das Internet nutzen.

- `Stay calm during the test.` – Bleiben Sie ruhig.

- `Stay focused on your work.` – Bleiben Sie aufmerksam bei Ihrer Arbeit.

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

Dieses Verb zeigt an, dass Sophie aktiv ihrem Team hilft oder Unterstützung bietet. Es endet auf `-ing`.

---

`stay`

### --feedback--

Dieses Wort wird verwendet, um vorzuschlagen, einen bestimmten Zustand beizubehalten, in diesem Fall sicher online zu bleiben.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
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
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
