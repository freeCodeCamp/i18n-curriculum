---
id: 67e6a8ecaee3ff6cec47cc3e
title: Aufgabe 75
challengeType: 19
dashedName: task-75
lang: en-US
---

<!-- (Audio) Jessica: I'll try to be quick so we can get back to the main agenda. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Warum möchte Jessica den Bug dem Team schnell erklären?

## --answers--

Weil sie zum Hauptthema der Besprechung zurückkehren möchte.

---

Weil sie die Besprechung frühzeitig verlassen möchte.

### --feedback--

Jessica erwähnt nicht, dass sie die Besprechung verlassen möchte.

---

Weil das Team den Bug bereits kennt.

### --feedback--

Jessica erklärt den Bug, weil er das Team betreffen könnte.

---

Weil sie denkt, dass der Bug nicht wichtig ist.

### --feedback--

Jessica hält das Problem für wichtig, möchte aber auch die Agenda der Besprechung respektieren.

## --video-solution--

1

# --explanation--

`So we can` wird verwendet, um einen Zweck auszudrücken – es bedeutet, dass das nächste, was Sie erwähnen, das ist, was Sie vorhaben. Es erklärt, warum jemand etwas tut. Zum Beispiel:

`I'll finish this now so we can start the next task.` – Das bedeutet, dass die sprechende Person eine Sache abschließen möchte, um bald mit einer anderen zu beginnen.

`The main agenda` bezieht sich auf die Hauptthemen oder den Plan einer Besprechung oder Veranstaltung. Zum Beispiel:

`Let's stick to the main agenda and avoid side discussions.` – Das bedeutet, sich auf die wichtigsten Punkte in der Besprechung zu konzentrieren.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 45.8,
      "finishTimestamp": 48.14
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 3.34,
      "dialogue": {
        "text": "I'll try to be quick so we can get back to the main agenda.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 3.84
    }
  ]
}
```
