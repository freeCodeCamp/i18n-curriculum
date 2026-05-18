---
id: 67a9f44e6dcabb0c402a9bfb
title: Aufgabe 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was möchte Bob wissen?

## --answers--

Ob die Mitarbeitenden bereits Büromöbel gekauft haben.

### --feedback--

Bob bittet nicht um eine Bestätigung von Käufen.

---

Wie viel Büromöbel kosten.

### --feedback--

Bob fragt nicht nach dem Preis.

---

Ob das Unternehmen die Pauschale erhöhen wird.

### --feedback--

Bob spricht nicht über Änderungen der Pauschale.

---

Ob Anna denkt, dass es eine gute Idee ist, die Pauschale für Büromöbel zu verwenden.

## --video-solution--

4

# --explanation--

Bob fragt, `Do you think that's a good idea?` Das ist eine Möglichkeit, nach der Meinung von jemandem zu einer Vorschlag oder einem Plan zu fragen. Hier sind weitere Möglichkeiten, nach einer Meinung zu fragen:

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

In diesem Dialog bezieht sich Bob darauf, dass Mitarbeitende die Pauschale für das Arbeiten von zu Hause aus für Büromöbel verwenden. Anstatt seine eigene Meinung zu äußern, fragt er Anna, was sie davon hält.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
