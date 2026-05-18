---
id: 6751bdd2f78adbed1ea0fa51
title: Aufgabe 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

Hören Sie sich das Audio an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was ist Brians Sorge?

## --answers--

Ob die Benutzer über die Ausfallzeit informiert werden müssen.

---

Ob die Ausfallzeit zu lange dauern wird.

### --feedback--

Brian fragt nicht nach der Dauer der Ausfallzeit.

---

Ob die Benutzer technische Probleme haben werden.

### --feedback--

Brian erwähnt technische Probleme in seiner Sorge nicht.

---

Ob die Ausfallzeit die Leistung des Servers beeinträchtigen wird.

### --feedback--

Brians Sorge betrifft nicht die Leistung des Servers.

## --video-solution--

1

# --explanation--

Brian fragt, ob sie die Benutzer über die Ausfallzeit informieren sollten. Seine Sorge gilt also der Kommunikation mit den Benutzern und nicht der Dauer der Ausfallzeit, technischen Problemen oder der Serverleistung.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
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
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
