---
id: 66c4ef1cb275e86febc9fe2c
title: Aufgabe 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

Hören Sie sich das Audio an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

Die Handlung, etwas anzuzeigen oder zu rendern. Dieses Wort endet auf `-ing`.

---

`running`

### --feedback--

Zeigt an, dass die Erweiterung aktiv und funktionsfähig ist. Dieses Wort endet auf `-ing`.

# --explanation--

Ein Gerundium ist eine Verbform, die auf `-ing` endet und als Substantiv fungiert. In diesem Satz sind `displaying` und `running` Gerundien, die laufende Handlungen beschreiben. Zum Beispiel:

- `Updating the software is essential.` – Hier ist `Updating` ein Gerundium, das eine Handlung beschreibt.

In Sarahs Satz beschreiben `displaying` und `running` Handlungen, die mit der Live-Server-Erweiterung und deren Funktionsweise zusammenhängen.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
